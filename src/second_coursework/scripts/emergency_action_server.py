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


    def execute_cb(self, goal):
        # Create state machine with minimal userdata
        sm = StateMachine(
            outcomes=['succeeded', 'aborted', 'preempted']
        )
        
        # Initialize only necessary userdata
        sm.userdata.start_time = rospy.Time.now()
        sm.userdata.duration = goal.patrol_duration
        sm.userdata.latest_detection_pose = None
        
        with sm:
            StateMachine.add('PATROL', 
                           PatrolState(),
                           transitions={'succeeded':'succeeded',
                                      'aborted':'aborted',
                                      'preempted':'preempted'})
        
        outcome = sm.execute()
        
        if outcome == 'succeeded':
            last_pose = sm.userdata.latest_detection_pose or Pose()
            self._result.last_detection = last_pose
            self._server.set_succeeded(self._result)
            
            # Publish feedback with just the pose
            self.publish_feedback(last_pose)
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

    def publish_feedback(self, last_pose):
        feedback = PatrolFeedback()
        feedback.new_people = 0  # Default to 0 for simplified feedback
        feedback.new_cats = 0
        feedback.new_dogs = 0
        feedback.last_detection_pose = last_pose
        self._server.publish_feedback(feedback)

if __name__ == '__main__':
    try:
        server = PatrolServer()
        rospy.spin()
    except Exception as e:
        rospy.logerr(f"Fatal error in patrol server: {str(e)}")