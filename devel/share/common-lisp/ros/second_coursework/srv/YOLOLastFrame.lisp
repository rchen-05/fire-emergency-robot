; Auto-generated. Do not edit!


(cl:in-package second_coursework-srv)


;//! \htmlinclude YOLOLastFrame-request.msg.html

(cl:defclass <YOLOLastFrame-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass YOLOLastFrame-request (<YOLOLastFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YOLOLastFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YOLOLastFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-srv:<YOLOLastFrame-request> is deprecated: use second_coursework-srv:YOLOLastFrame-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YOLOLastFrame-request>) ostream)
  "Serializes a message object of type '<YOLOLastFrame-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YOLOLastFrame-request>) istream)
  "Deserializes a message object of type '<YOLOLastFrame-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YOLOLastFrame-request>)))
  "Returns string type for a service object of type '<YOLOLastFrame-request>"
  "second_coursework/YOLOLastFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YOLOLastFrame-request)))
  "Returns string type for a service object of type 'YOLOLastFrame-request"
  "second_coursework/YOLOLastFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YOLOLastFrame-request>)))
  "Returns md5sum for a message object of type '<YOLOLastFrame-request>"
  "f3df913089db15baa8d0e578ec1d4f61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YOLOLastFrame-request)))
  "Returns md5sum for a message object of type 'YOLOLastFrame-request"
  "f3df913089db15baa8d0e578ec1d4f61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YOLOLastFrame-request>)))
  "Returns full string definition for message of type '<YOLOLastFrame-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YOLOLastFrame-request)))
  "Returns full string definition for message of type 'YOLOLastFrame-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YOLOLastFrame-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YOLOLastFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YOLOLastFrame-request
))
;//! \htmlinclude YOLOLastFrame-response.msg.html

(cl:defclass <YOLOLastFrame-response> (roslisp-msg-protocol:ros-message)
  ((detections
    :reader detections
    :initarg :detections
    :type (cl:vector second_coursework-msg:YOLODetection)
   :initform (cl:make-array 0 :element-type 'second_coursework-msg:YOLODetection :initial-element (cl:make-instance 'second_coursework-msg:YOLODetection))))
)

(cl:defclass YOLOLastFrame-response (<YOLOLastFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YOLOLastFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YOLOLastFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-srv:<YOLOLastFrame-response> is deprecated: use second_coursework-srv:YOLOLastFrame-response instead.")))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <YOLOLastFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-srv:detections-val is deprecated.  Use second_coursework-srv:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YOLOLastFrame-response>) ostream)
  "Serializes a message object of type '<YOLOLastFrame-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YOLOLastFrame-response>) istream)
  "Deserializes a message object of type '<YOLOLastFrame-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'second_coursework-msg:YOLODetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YOLOLastFrame-response>)))
  "Returns string type for a service object of type '<YOLOLastFrame-response>"
  "second_coursework/YOLOLastFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YOLOLastFrame-response)))
  "Returns string type for a service object of type 'YOLOLastFrame-response"
  "second_coursework/YOLOLastFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YOLOLastFrame-response>)))
  "Returns md5sum for a message object of type '<YOLOLastFrame-response>"
  "f3df913089db15baa8d0e578ec1d4f61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YOLOLastFrame-response)))
  "Returns md5sum for a message object of type 'YOLOLastFrame-response"
  "f3df913089db15baa8d0e578ec1d4f61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YOLOLastFrame-response>)))
  "Returns full string definition for message of type '<YOLOLastFrame-response>"
  (cl:format cl:nil "second_coursework/YOLODetection[] detections~%~%================================================================================~%MSG: second_coursework/YOLODetection~%string name~%float32 confidence~%uint32 bbox_x~%uint32 bbox_y~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YOLOLastFrame-response)))
  "Returns full string definition for message of type 'YOLOLastFrame-response"
  (cl:format cl:nil "second_coursework/YOLODetection[] detections~%~%================================================================================~%MSG: second_coursework/YOLODetection~%string name~%float32 confidence~%uint32 bbox_x~%uint32 bbox_y~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YOLOLastFrame-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YOLOLastFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YOLOLastFrame-response
    (cl:cons ':detections (detections msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YOLOLastFrame)))
  'YOLOLastFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YOLOLastFrame)))
  'YOLOLastFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YOLOLastFrame)))
  "Returns string type for a service object of type '<YOLOLastFrame>"
  "second_coursework/YOLOLastFrame")