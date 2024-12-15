;; Auto-generated. Do not edit!


(when (boundp 'second_coursework::Emergency)
  (if (not (find-package "SECOND_COURSEWORK"))
    (make-package "SECOND_COURSEWORK"))
  (shadow 'Emergency (find-package "SECOND_COURSEWORK")))
(unless (find-package "SECOND_COURSEWORK::EMERGENCY")
  (make-package "SECOND_COURSEWORK::EMERGENCY"))

(in-package "ROS")
;;//! \htmlinclude Emergency.msg.html


(defclass second_coursework::Emergency
  :super ros::object
  :slots (_description _duration ))

(defmethod second_coursework::Emergency
  (:init
   (&key
    ((:description __description) "")
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _description (string __description))
   (setq _duration __duration)
   self)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _description
    4 (length _description)
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get second_coursework::Emergency :md5sum-) "dacf83a9c1262fc213fc41089e525a3a")
(setf (get second_coursework::Emergency :datatype-) "second_coursework/Emergency")
(setf (get second_coursework::Emergency :definition-)
      "string description
duration duration  
")



(provide :second_coursework/Emergency "dacf83a9c1262fc213fc41089e525a3a")


