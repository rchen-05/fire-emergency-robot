; Auto-generated. Do not edit!


(cl:in-package second_coursework-msg)


;//! \htmlinclude Emergency.msg.html

(cl:defclass <Emergency> (roslisp-msg-protocol:ros-message)
  ((description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0))
)

(cl:defclass Emergency (<Emergency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emergency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emergency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-msg:<Emergency> is deprecated: use second_coursework-msg:Emergency instead.")))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:description-val is deprecated.  Use second_coursework-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:duration-val is deprecated.  Use second_coursework-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emergency>) ostream)
  "Serializes a message object of type '<Emergency>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emergency>) istream)
  "Deserializes a message object of type '<Emergency>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emergency>)))
  "Returns string type for a message object of type '<Emergency>"
  "second_coursework/Emergency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emergency)))
  "Returns string type for a message object of type 'Emergency"
  "second_coursework/Emergency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emergency>)))
  "Returns md5sum for a message object of type '<Emergency>"
  "dacf83a9c1262fc213fc41089e525a3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emergency)))
  "Returns md5sum for a message object of type 'Emergency"
  "dacf83a9c1262fc213fc41089e525a3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emergency>)))
  "Returns full string definition for message of type '<Emergency>"
  (cl:format cl:nil "string description~%duration duration  ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emergency)))
  "Returns full string definition for message of type 'Emergency"
  (cl:format cl:nil "string description~%duration duration  ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emergency>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'description))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emergency>))
  "Converts a ROS message object to a list"
  (cl:list 'Emergency
    (cl:cons ':description (description msg))
    (cl:cons ':duration (duration msg))
))
