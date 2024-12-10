#!/usr/bin/env python3

import rospy 
import actionlib
from second_coursework.msg import PatrolAction, PatrolFeedback, PatrolResult, PatrolActionFeedback
from geometry_msgs.msg import Pose
from smach import StateMachine
from smach_ros import SimpleActionState
from visualization_msgs.msg import Marker, MarkerArray
from states.patrol_state import PatrolState  # Import PatrolState

class PatrolServer:
    def __init__(self):
        self._server = actionlib.SimpleActionServer(
            'patrol',
            PatrolAction, 
            execute_cb=self.execute_cb,
            auto_start=False
        )
        self._feedback = PatrolActionFeedback().feedback
        self.feedback_pub = rospy.Publisher(
            'patrol/feedback',
            PatrolActionFeedback,
            queue_size=10
        )
        self._result = PatrolResult()
        
        # Add marker publisher
        self.marker_pub = rospy.Publisher('/patrol/detections', MarkerArray, queue_size=10)
        self.markers = []  # Track markers
        
        self._server.start()
        rospy.loginfo("Patrol action server started")

    def publish_detection(self, pose, detection_type, is_new=True):
        marker = Marker()
        marker.header.frame_id = "map"
        marker.type = Marker.SPHERE
        marker.pose = pose 
        marker.scale.x = 0.3
        marker.scale.y = 0.3
        marker.scale.z = 0.3
        marker.color.a = 1.0
        # Red for new detections, blue for old
        marker.color.r = 1.0 if is_new else 0.0
        marker.color.b = 0.0 if is_new else 1.0
        
        self.markers.append(marker)
        marker_array = MarkerArray(markers=self.markers)
        self.marker_pub.publish(marker_array)

    # In emergency_action_server.py, add to PatrolServer class:

    def execute_cb(self, goal):
        # Create state machine
        sm = StateMachine(
            outcomes=['succeeded', 'aborted', 'preempted'],
            output_keys=['people_poses', 'cat_poses', 'dog_poses']
        )
        
        # Initialize state machine userdata
        sm.userdata.people_poses = []
        sm.userdata.cat_poses = []
        sm.userdata.dog_poses = []
        sm.userdata.detections = {'people': [], 'cats': [], 'dogs': []}
        
        # Add PatrolState to state machine
        with sm:
            StateMachine.add('PATROL', 
                            PatrolState(),
                            transitions={'succeeded':'succeeded',
                                    'aborted':'aborted',
                                    'preempted':'preempted'})
        
        # Execute state machine
        outcome = sm.execute()
        
        # Handle results
        if outcome == 'succeeded':
            self._result.people_positions = sm.userdata.people_poses
            self._result.cat_positions = sm.userdata.cat_poses
            self._result.dog_positions = sm.userdata.dog_poses
            self._server.set_succeeded(self._result)
        elif outcome == 'preempted':
            self._server.set_preempted()
        else:
            self._server.set_aborted()

if __name__ == '__main__':
    rospy.init_node('patrol_action_server')
    server = PatrolServer()
    rospy.spin()