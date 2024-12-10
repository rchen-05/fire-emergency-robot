;; Auto-generated. Do not edit!


(when (boundp 'second_coursework::YOLOLastFrame)
  (if (not (find-package "SECOND_COURSEWORK"))
    (make-package "SECOND_COURSEWORK"))
  (shadow 'YOLOLastFrame (find-package "SECOND_COURSEWORK")))
(unless (find-package "SECOND_COURSEWORK::YOLOLASTFRAME")
  (make-package "SECOND_COURSEWORK::YOLOLASTFRAME"))
(unless (find-package "SECOND_COURSEWORK::YOLOLASTFRAMEREQUEST")
  (make-package "SECOND_COURSEWORK::YOLOLASTFRAMEREQUEST"))
(unless (find-package "SECOND_COURSEWORK::YOLOLASTFRAMERESPONSE")
  (make-package "SECOND_COURSEWORK::YOLOLASTFRAMERESPONSE"))

(in-package "ROS")





(defclass second_coursework::YOLOLastFrameRequest
  :super ros::object
  :slots ())

(defmethod second_coursework::YOLOLastFrameRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass second_coursework::YOLOLastFrameResponse
  :super ros::object
  :slots (_detections ))

(defmethod second_coursework::YOLOLastFrameResponse
  (:init
   (&key
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _detections __detections)
   self)
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; second_coursework/YOLODetection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; second_coursework/YOLODetection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; second_coursework/YOLODetection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance second_coursework::YOLODetection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass second_coursework::YOLOLastFrame
  :super ros::object
  :slots ())

(setf (get second_coursework::YOLOLastFrame :md5sum-) "f3df913089db15baa8d0e578ec1d4f61")
(setf (get second_coursework::YOLOLastFrame :datatype-) "second_coursework/YOLOLastFrame")
(setf (get second_coursework::YOLOLastFrame :request) second_coursework::YOLOLastFrameRequest)
(setf (get second_coursework::YOLOLastFrame :response) second_coursework::YOLOLastFrameResponse)

(defmethod second_coursework::YOLOLastFrameRequest
  (:response () (instance second_coursework::YOLOLastFrameResponse :init)))

(setf (get second_coursework::YOLOLastFrameRequest :md5sum-) "f3df913089db15baa8d0e578ec1d4f61")
(setf (get second_coursework::YOLOLastFrameRequest :datatype-) "second_coursework/YOLOLastFrameRequest")
(setf (get second_coursework::YOLOLastFrameRequest :definition-)
      "---
second_coursework/YOLODetection[] detections

================================================================================
MSG: second_coursework/YOLODetection
string name
float32 confidence
uint32 bbox_x
uint32 bbox_y
uint32 width
")

(setf (get second_coursework::YOLOLastFrameResponse :md5sum-) "f3df913089db15baa8d0e578ec1d4f61")
(setf (get second_coursework::YOLOLastFrameResponse :datatype-) "second_coursework/YOLOLastFrameResponse")
(setf (get second_coursework::YOLOLastFrameResponse :definition-)
      "---
second_coursework/YOLODetection[] detections

================================================================================
MSG: second_coursework/YOLODetection
string name
float32 confidence
uint32 bbox_x
uint32 bbox_y
uint32 width
")



(provide :second_coursework/YOLOLastFrame "f3df913089db15baa8d0e578ec1d4f61")


