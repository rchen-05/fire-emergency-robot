#!/usr/bin/env python3
import rospy
import actionlib
from second_coursework.msg import Emergency, PatrolAction, PatrolGoal
from geometry_msgs.msg import Pose

class EmergencySubscriber:
    def __init__(self):
        rospy.init_node('emergency_subscriber')
        # Create action client
        self.client = actionlib.SimpleActionClient('patrol', PatrolAction)
        rospy.loginfo("Waiting for patrol action server...")
        self.client.wait_for_server()
        rospy.loginfo("Connected to patrol action server")
        # Subscribe to emergency topic
        rospy.Subscriber('/emergency', Emergency, self.emergency_callback)
        rospy.loginfo("Emergency subscriber started and waiting for messages...")

    def emergency_callback(self, msg):
        rospy.loginfo(f"Emergency: {msg.description}, Duration: {msg.duration.secs} seconds")
        # Create and send goal to action server
        goal = PatrolGoal()
        goal.patrol_duration = msg.duration
        rospy.loginfo("Sending patrol goal")
        self.client.send_goal(goal)

if __name__ == '__main__':
    try:
        subscriber = EmergencySubscriber()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Emergency subscriber stopped")