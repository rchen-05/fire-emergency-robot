#!/usr/bin/env python3
import rospy
from smach import State
from geometry_msgs.msg import Pose, Point
from sensor_msgs.msg import Image
from cv_bridge import CvBridge


def __init__(self):
    State.__init__(self,
                  outcomes=['detected', 'none'],  # Possible state endings
                  input_keys=['current_pose'],    # Data received
                  output_keys=['detections'])     # Data passed on