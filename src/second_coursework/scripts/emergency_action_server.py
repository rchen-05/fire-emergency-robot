#!/usr/bin/env python3

import rospy 
import actionlib
from second_coursework.msg import PatrolAction, PatrolFeedback, PatrolResult, PatrolActionFeedback
from geometry_msgs.msg import Pose
from smach import StateMachine
from smach_ros import SimpleActionState
from visualization_msgs.msg import Marker, MarkerArray
from states.patrol_state import PatrolState  # Import PatrolState
from move_base_msgs.msg import MoveBaseAction  # Add this import

class PatrolServer:
    def __init__(self):
        try:
            # Initialize node first
            rospy.init_node('patrol_action_server', anonymous=False)
            
            # Initialize class variables
            self._feedback = PatrolActionFeedback()
            self._result = PatrolResult()
            self._start_time = None
            self._duration = None
            self.markers = []
            
            # Set up publishers
            self.marker_pub = rospy.Publisher('/patrol/detections', MarkerArray, queue_size=10)
            self.feedback_pub = rospy.Publisher('patrol/feedback', PatrolActionFeedback, queue_size=10)
            
            # Initialize action server
            self._server = actionlib.SimpleActionServer(
                'patrol',
                PatrolAction,
                execute_cb=self.execute_cb,
                auto_start=False
            )
            
            # Start server
            self._server.start()
            rospy.loginfo("Patrol action server started successfully")
            
        except Exception as e:
            rospy.logerr(f"Error initializing patrol server: {str(e)}")
            raise

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
        # Create state machine with properly initialized userdata
        sm = StateMachine(
            outcomes=['succeeded', 'aborted', 'preempted']
        )
        
        # Initialize all required userdata
        sm.userdata.start_time = rospy.Time.now()
        sm.userdata.duration = goal.patrol_duration
        sm.userdata.people_poses = []
        sm.userdata.cat_poses = []
        sm.userdata.dog_poses = []
        sm.userdata.new_people = 0
        sm.userdata.new_cats = 0
        sm.userdata.new_dogs = 0
        
        with sm:
            StateMachine.add('PATROL', 
                           PatrolState(),
                           transitions={'succeeded':'succeeded',
                                      'aborted':'aborted',
                                      'preempted':'preempted'})
        
        outcome = sm.execute()
        
        # Handle results
        if outcome == 'succeeded':
            self._result.people_positions = sm.userdata.people_poses
            self._result.cat_positions = sm.userdata.cat_poses
            self._result.dog_positions = sm.userdata.dog_poses
            self._server.set_succeeded(self._result)
            
            # Safe feedback publishing
            last_pose = Pose()  # Default empty pose
            self.publish_feedback(
                getattr(sm.userdata, 'new_people', 0),
                getattr(sm.userdata, 'new_cats', 0),
                getattr(sm.userdata, 'new_dogs', 0),
                last_pose
            )
        elif outcome == 'preempted':
            self._server.set_preempted()
        else:
            self._server.set_aborted()

    def return_goal_cb(self, userdata, goal):
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = 6.0
        goal.target_pose.pose.position.y = 3.6
        goal.target_pose.pose.orientation.w = 1.0
        return goal

    def publish_feedback(self, new_people, new_cats, new_dogs, last_pose):
        feedback = PatrolFeedback()  # Use correct message type
        feedback.new_people = new_people
        feedback.new_cats = new_cats
        feedback.new_dogs = new_dogs
        feedback.last_detection_pose = last_pose
        self._server.publish_feedback(feedback)

if __name__ == '__main__':
    try:
        server = PatrolServer()
        rospy.spin()
    except Exception as e:
        rospy.logerr(f"Fatal error in patrol server: {str(e)}")