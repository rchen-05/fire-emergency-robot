#!/usr/bin/env python3
import rospy
from smach import State
from geometry_msgs.msg import Pose
from second_coursework.srv import YOLOLastFrame
from sound_play.libsoundplay import SoundClient
from visualization_msgs.msg import Marker, MarkerArray
import numpy as np

class DetectionState(State):
    def __init__(self):
        State.__init__(self,
                      outcomes=['detected', 'none', 'preempted'],
                      input_keys=['current_pose'],
                      output_keys=['detected_poses'])  # Simplified output
        
        self.sound_client = SoundClient()
        self.marker_pub = rospy.Publisher('/detection_markers', MarkerArray, queue_size=10)
        self.previous_detections = {
            'person': [],
            'cat': [],
            'dog': []
        }
        
        try:
            rospy.wait_for_service('/detect_frame', timeout=5.0)
            self.detect_frame = rospy.ServiceProxy('/detect_frame', YOLOLastFrame)
            rospy.loginfo("Connected to YOLO service")
        except rospy.ROSException:
            rospy.logerr("YOLO detection service not available")

    def publish_marker(self, pose, detection_type, is_new=True):
        marker = Marker()
        marker.header.frame_id = "map"
        marker.header.stamp = rospy.Time.now()
        marker.type = Marker.SPHERE
        marker.pose = pose
        marker.scale.x = marker.scale.y = marker.scale.z = 0.3
        marker.color.a = 1.0
        
        # Different colors for different types
        if detection_type == 'person':
            marker.color.r = 1.0 if is_new else 0.0
            marker.color.b = 0.0 if is_new else 1.0
        elif detection_type == 'cat':
            marker.color.g = 1.0
        else:  # dog
            marker.color.b = 1.0
            
        marker_array = MarkerArray()
        marker_array.markers.append(marker)
        self.marker_pub.publish(marker_array)

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
            
            detected = {'people': [], 'cats': [], 'dogs': []}
            
            for detection in response.detections:
                rospy.loginfo(f"Raw detection: class={detection.name}, conf={detection.confidence}")
                if detection.confidence < 0.5:
                    continue
                
                # Map YOLO class names to our categories
                category_map = {
                    'person': 'people',
                    'cat': 'cats',
                    'dog': 'dogs'
                }
                
                category = category_map.get(detection.name.lower())
                if category and self.is_new_detection(current_pose, self.previous_detections[category[:-1]]):
                    if category == 'people':
                        self.sound_client.say("Help is coming. Please evacuate if possible.")
                        rospy.loginfo("Person detected! Announcing evacuation message.")
                    
                    self.previous_detections[category[:-1]].append(current_pose)
                    self.publish_marker(current_pose, category[:-1], True)
                    detected[category].append(current_pose)
            
            total_detections = sum(len(v) for v in detected.values())
            rospy.loginfo(f"Found {total_detections} new objects: People={len(detected['people'])}, Cats={len(detected['cats'])}, Dogs={len(detected['dogs'])}")
            
            userdata.detected_poses = detected
            
            return 'detected' if total_detections > 0 else 'none'
            
        except rospy.ServiceException as e:
            rospy.logerr(f"YOLO service call failed: {e}")
            return 'none'