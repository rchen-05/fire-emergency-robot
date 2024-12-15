#!/usr/bin/env python3
#coding=utf-8
import rospy
from cv_bridge import CvBridge  # Changed from cv_bridge3
import cv2  # Direct import
from sensor_msgs.msg import Image     
from second_coursework.srv import YOLOLastFrame, YOLOLastFrameResponse
from second_coursework.msg import YOLODetection      
from yolov4 import Detector                
                                                                                                                               

class YoloDetector:
    def __init__(self):
        self.cv_image = None
        self.bridge = CvBridge()
        self.can_subs = rospy.Subscriber("/camera/image", Image, self.img_callback)
        self.yolo_srv = rospy.Service("/detect_frame", YOLOLastFrame, self.yolo_service)
        self.detector = Detector(gpu_id=0, config_path='/opt/darknet/cfg/yolov4.cfg',
                            weights_path='/opt/darknet/yolov4.weights',
                            lib_darknet_path='/opt/darknet/libdarknet.so',
                            meta_path='/home/k23020720/catkin_ws/src/second_coursework/config/coco.data')

    def img_callback(self, msg):
        self.cv_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding="passthrough")
        #rospy.loginfo("Image received")

    def yolo_service(self, request):
        res = YOLOLastFrameResponse()
        if self.cv_image is None or self.cv_image.size == 0:  # Proper way to check numpy array
            rospy.logwarn("No image received")
            return res
            
        rospy.loginfo("Processing image for YOLO detection")
        cv_height, cv_width = self.cv_image.shape[:2]
        img_arr = cv2.resize(self.cv_image, (self.detector.network_width(), self.detector.network_height()))
        detections = self.detector.perform_detect(image_path_or_buf=img_arr, show_image=True)
        
        rospy.loginfo(f"YOLO found {len(detections)} objects")
        for detection in detections:
            box = detection.left_x, detection.top_y, detection.width, detection.height
            rospy.loginfo(f'YOLO Detection: {detection.class_name.ljust(10)} | {detection.class_confidence * 100:.1f} % | {box}')
            d = YOLODetection()
            d.name = detection.class_name
            d.confidence = detection.class_confidence
            d.bbox_x = int((detection.left_x/self.detector.network_width())*cv_width)
            d.bbox_y = int((detection.top_y/self.detector.network_height())*cv_height)
            d.width = int((detection.width/self.detector.network_width())*cv_width)
            d.height = int((detection.height/self.detector.network_height())*cv_height)
            res.detections.append(d)
            
        return res

if __name__ == '__main__':
    rospy.init_node('yolo_detector')
    rospy.loginfo("Yolo detector node started")
    detector = YoloDetector()
    rospy.spin()