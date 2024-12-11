#!/usr/bin/env python3
import rospy
import actionlib
from second_coursework.msg import Emergency, PatrolAction, PatrolGoal
from geometry_msgs.msg import Pose

class EmergencySubscriber:
    def __init__(self):
        # Initialize the node first
        rospy.init_node('emergency_subscriber', anonymous=True)
        
        # Wait for simulated time to start
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
        
        # Initialize publishers and subscribers
        self.pub = rospy.Publisher('/emergency', Emergency, queue_size=10, latch=True)
        
        # Create action client
        self.client = actionlib.SimpleActionClient('patrol', PatrolAction)
        rospy.loginfo("Waiting for patrol action server...")
        self.client.wait_for_server()
        rospy.loginfo("Connected to patrol action server")
        
        # Subscribe to emergency topic
        rospy.Subscriber('/emergency', Emergency, self.emergency_callback)
        rospy.loginfo("Emergency subscriber started and waiting for messages...")
        
        # Publish test messages periodically
        rospy.Timer(rospy.Duration(5.0), self.publish_test_emergency)

    def publish_test_emergency(self, event):
        msg = Emergency()
        msg.description = "Test Emergency"
        msg.duration = rospy.Duration(60)
        self.pub.publish(msg)
        rospy.loginfo("Published test emergency message")

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