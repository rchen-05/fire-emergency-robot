;; Auto-generated. Do not edit!


(when (boundp 'second_coursework::YOLODetection)
  (if (not (find-package "SECOND_COURSEWORK"))
    (make-package "SECOND_COURSEWORK"))
  (shadow 'YOLODetection (find-package "SECOND_COURSEWORK")))
(unless (find-package "SECOND_COURSEWORK::YOLODETECTION")
  (make-package "SECOND_COURSEWORK::YOLODETECTION"))

(in-package "ROS")
;;//! \htmlinclude YOLODetection.msg.html


(defclass second_coursework::YOLODetection
  :super ros::object
  :slots (_name _confidence _bbox_x _bbox_y _width _height ))

(defmethod second_coursework::YOLODetection
  (:init
   (&key
    ((:name __name) "")
    ((:confidence __confidence) 0.0)
    ((:bbox_x __bbox_x) 0)
    ((:bbox_y __bbox_y) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _confidence (float __confidence))
   (setq _bbox_x (round __bbox_x))
   (setq _bbox_y (round __bbox_y))
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:bbox_x
   (&optional __bbox_x)
   (if __bbox_x (setq _bbox_x __bbox_x)) _bbox_x)
  (:bbox_y
   (&optional __bbox_y)
   (if __bbox_y (setq _bbox_y __bbox_y)) _bbox_y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _confidence
    4
    ;; uint32 _bbox_x
    4
    ;; uint32 _bbox_y
    4
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _bbox_x
       (write-long _bbox_x s)
     ;; uint32 _bbox_y
       (write-long _bbox_y s)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _bbox_x
     (setq _bbox_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _bbox_y
     (setq _bbox_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get second_coursework::YOLODetection :md5sum-) "de0eecaab55004c1fd70d270f48fe537")
(setf (get second_coursework::YOLODetection :datatype-) "second_coursework/YOLODetection")
(setf (get second_coursework::YOLODetection :definition-)
      "string name
float32 confidence
uint32 bbox_x
uint32 bbox_y
uint32 width
uint32 height
")



(provide :second_coursework/YOLODetection "de0eecaab55004c1fd70d270f48fe537")


