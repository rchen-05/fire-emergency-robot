#!/usr/bin/env python3
import rospy
import actionlib
from second_coursework.msg import Emergency, PatrolAction, PatrolGoal
from geometry_msgs.msg import Pose

class EmergencySubscriber:
    def __init__(self):
        rospy.init_node('emergency_subscriber', anonymous=True)
        
        while not rospy.is_shutdown():
            try:
                rospy.Time.now()
                break
            except rospy.ROSTimeMovedBackwardsException:
                continue
            except rospy.ROSInitException:
                rospy.logwarn("Waiting for time to be initialized...")
                rospy.sleep(0.1)
                
        rospy.loginfo("Time successfully initialized")
        
        self.pub = rospy.Publisher('/emergency', Emergency, queue_size=10, latch=True)
        
        self.client = actionlib.SimpleActionClient('patrol', PatrolAction)
        rospy.loginfo("Waiting for patrol action server...")
        self.client.wait_for_server()
        rospy.loginfo("Connected to patrol action server")

        rospy.Subscriber('/emergency', Emergency, self.emergency_callback)
        rospy.loginfo("Emergency subscriber started and waiting for messages...")

    def emergency_callback(self, msg):
        rospy.loginfo(f"Emergency: {msg.description}, Duration: {msg.duration.secs} seconds")
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