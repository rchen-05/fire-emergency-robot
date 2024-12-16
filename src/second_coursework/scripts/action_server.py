#!/usr/bin/env python3

import rospy 
import actionlib
from second_coursework.msg import PatrolAction, PatrolFeedback, PatrolResult, PatrolActionFeedback
from geometry_msgs.msg import Pose
from smach import StateMachine
from smach_ros import SimpleActionState
from visualization_msgs.msg import Marker, MarkerArray
from states.patrol_state import PatrolState  
from move_base_msgs.msg import MoveBaseAction  

class PatrolServer:
    def __init__(self):
        try:
            rospy.init_node('patrol_action_server', anonymous=False)
            
            self._feedback = PatrolActionFeedback()
            self._result = PatrolResult()
            self._start_time = None
            self._duration = None
            self.markers = []

            
            self.marker_pub = rospy.Publisher('/patrol/detections', Marker, queue_size=10)
            self.feedback_pub = rospy.Publisher('patrol/feedback', PatrolActionFeedback, queue_size=10)
            
            self._server = actionlib.SimpleActionServer(
                'patrol',
                PatrolAction,
                execute_cb=self.execute_cb,
                auto_start=False
            )


            self._server.start()
            rospy.loginfo("Patrol action server started successfully")
            
        except Exception as e:
            rospy.logerr(f"Error initializing patrol server: {str(e)}")
            raise


    def execute_cb(self, goal):
        self._prev_people_count = 0
        self._prev_cats_count = 0
        self._prev_dogs_count = 0

        sm = StateMachine(
            outcomes=['succeeded', 'aborted', 'preempted']
        )
        
        sm.userdata.start_time = rospy.Time.now()
        sm.userdata.duration = goal.patrol_duration
        sm.userdata.latest_detection_pose = None
        sm.userdata.person_poses = []
        sm.userdata.cat_poses = []
        sm.userdata.dog_poses = []
        
        with sm:
            StateMachine.add('PATROL', 
                           PatrolState(self.marker_pub, self),  
                           transitions={'succeeded':'succeeded',
                                      'aborted':'aborted',
                                      'preempted':'preempted'})
        
        outcome = sm.execute()
        
        if outcome == 'succeeded':
            self._result.person_poses = sm.userdata.person_poses
            self._result.cat_poses = sm.userdata.cat_poses
            self._result.dog_poses = sm.userdata.dog_poses
            
            self.publish_detection_feedback(sm.userdata)
            
            self._server.set_succeeded(self._result)
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

    def publish_detection_feedback(self, userdata):
        feedback = PatrolFeedback()
        
        current_people = len(userdata.person_poses)
        current_cats = len(userdata.cat_poses)
        current_dogs = len(userdata.dog_poses)
        
        feedback.new_people = current_people - self._prev_people_count
        feedback.new_cats = current_cats - self._prev_cats_count
        feedback.new_dogs = current_dogs - self._prev_dogs_count
        
        self._prev_people_count = current_people
        self._prev_cats_count = current_cats
        self._prev_dogs_count = current_dogs
        

        feedback.last_detection_pose = userdata.latest_detection_pose or Pose()
        
        self._server.publish_feedback(feedback)

if __name__ == '__main__':
    try:
        server = PatrolServer()
        rospy.spin()
    except Exception as e:
        rospy.logerr(f"Fatal error in patrol server: {str(e)}")