#!/usr/bin/env python3
import rospy
import actionlib
from smach import State
from geometry_msgs.msg import Pose, Quaternion
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from tf.transformations import quaternion_from_euler

class NavigationState(State):
    def __init__(self):
        State.__init__(self, 
                      outcomes=['reached', 'failed', 'preempted'],
                      input_keys=['target_pose'])
        # Initialize userdata as instance variable
        self.userdata = type('', (), {})()
        
        self.move_base = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("Waiting for move_base action server...")
        server_exists = self.move_base.wait_for_server(timeout=rospy.Duration(10.0))
        if not server_exists:
            rospy.logerr("move_base action server not available")
            return
        rospy.loginfo("Connected to move_base server")

    def execute(self, userdata):
        # Update instance userdata with passed userdata
        rospy.loginfo("Navigating")
        self.userdata = userdata
        
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        
        # Use the complete pose from input
        goal.target_pose.pose = userdata.target_pose
        
        # Add retry logic with preemption check
        max_attempts = 3
        for attempt in range(max_attempts):
            if self.preempt_requested():
                self.service_preempt()
                return 'preempted'
                
            rospy.loginfo(f"Navigation attempt {attempt + 1}/{max_attempts}")
            self.move_base.send_goal(goal)
            
            # Wait for result with preemption check
            while not self.move_base.wait_for_result(rospy.Duration(1.0)):
                if self.preempt_requested():
                    self.move_base.cancel_goal()
                    self.service_preempt()
                    return 'preempted'
            
            state = self.move_base.get_state()
            if state == 3:  # SUCCEEDED
                return 'reached'
            
            if attempt < max_attempts - 1:
                rospy.logwarn("Retrying navigation...")
                rospy.sleep(1.0)
        
        return 'failed'