#!/usr/bin/env python3
import rospy
from smach import State
from geometry_msgs.msg import Pose
from second_coursework.srv import YOLOLastFrame
from std_msgs.msg import String
from visualization_msgs.msg import Marker, MarkerArray
import numpy as np

class DetectionState(State):
    def __init__(self):
        State.__init__(self,
                      outcomes=['detected', 'none', 'preempted'],
                      input_keys=['current_pose'],
                      output_keys=['latest_detection_pose'])  # Simplified to just track latest position
        
        self.tts_pub = rospy.Publisher('/tts/phrase', String, queue_size=10)
        self.marker_pub = rospy.Publisher('/detection_markers', Marker, queue_size=10)
        self.previous_detections = {
            'person': [],
            'cat': [],
            'dog': []
        }
        self.marker_count = 0
        
        try:
            rospy.wait_for_service('/detect_frame', timeout=5.0)
            self.detect_frame = rospy.ServiceProxy('/detect_frame', YOLOLastFrame)
            rospy.loginfo("Connected to YOLO service")
        except rospy.ROSException:
            rospy.logerr("YOLO detection service not available")

    def make_marker(self, pose, detection_type, is_new=True):
        marker = Marker()
        marker.header.frame_id = "map"
        marker.header.stamp = rospy.Time.now()
        marker.type = Marker.SPHERE
        marker.action = Marker.ADD
        marker.pose = pose
        marker.scale.x = marker.scale.y = marker.scale.z = 0.3
        marker.color.a = 1.0

        marker.id = self.marker_count
        self.marker_count += 1
        
        # Different colors for different types
        if detection_type == 'person':
            marker.color.r = 1.0 if is_new else 0.0
            marker.color.b = 0.0 if is_new else 1.0
        elif detection_type == 'cat':
            marker.color.g = 1.0
        else:  # dog
            marker.color.b = 1.0
            marker.color.g = 1.0 

        marker.lifetime = rospy.Duration(0)
            
        #marker_array = MarkerArray()
        #marker_array.markers.append(marker)
        return marker

    def is_new_detection(self, current_pose, previous_detections, distance_threshold=1.0):
        """Check if detection is new based on distance from previous detections"""
        for prev_pose in previous_detections:
            dx = current_pose.position.x - prev_pose.position.x
            dy = current_pose.position.y - prev_pose.position.y
            distance = np.sqrt(dx*dx + dy*dy)
            if distance < distance_threshold:
                return False
        return True

    def execute(self, userdata):
        rospy.loginfo("Detecting")
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'

        try:
            rospy.loginfo("Requesting YOLO detection...")
            response = self.detect_frame()
            rospy.loginfo(f"Got {len(response.detections)} YOLO detections")
            current_pose = userdata.current_pose
            #marker = self.make_marker(current_pose, "dog", True)
            #self.marker_pub.publish(marker)

            
            detected_anything = False
            
            for detection in response.detections:
                if detection.confidence < 0.5:
                    continue
                
                # Any valid detection will update the latest position
                if detection.name.lower() in ['person', 'cat', 'dog']:
                    if self.is_new_detection(current_pose, self.previous_detections[detection.name.lower()]):
                        detected_anything = True
                        userdata.latest_detection_pose = current_pose
                        
                        # Still maintain markers and announcements
                        self.previous_detections[detection.name.lower()].append(current_pose)
                        marker = self.make_marker(current_pose, detection.name.lower(), True)
                        self.marker_pub.publish(marker)
                        
                        if detection.name.lower() == 'person':
                            self.tts_pub.publish("Fire! Help is coming. Evacuate the building.")
                            rospy.loginfo("Person detected! Announcing evacuation message.")
            
            return 'detected' if detected_anything else 'none'
            
        except rospy.ServiceException as e:
            rospy.logerr(f"YOLO service call failed: {e}")
            return 'none'