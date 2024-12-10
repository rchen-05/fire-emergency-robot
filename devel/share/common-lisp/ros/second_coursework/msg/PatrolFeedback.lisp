; Auto-generated. Do not edit!


(cl:in-package second_coursework-msg)


;//! \htmlinclude PatrolFeedback.msg.html

(cl:defclass <PatrolFeedback> (roslisp-msg-protocol:ros-message)
  ((new_people
    :reader new_people
    :initarg :new_people
    :type cl:integer
    :initform 0)
   (new_cats
    :reader new_cats
    :initarg :new_cats
    :type cl:integer
    :initform 0)
   (new_dogs
    :reader new_dogs
    :initarg :new_dogs
    :type cl:integer
    :initform 0)
   (last_detection_pose
    :reader last_detection_pose
    :initarg :last_detection_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass PatrolFeedback (<PatrolFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-msg:<PatrolFeedback> is deprecated: use second_coursework-msg:PatrolFeedback instead.")))

(cl:ensure-generic-function 'new_people-val :lambda-list '(m))
(cl:defmethod new_people-val ((m <PatrolFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:new_people-val is deprecated.  Use second_coursework-msg:new_people instead.")
  (new_people m))

(cl:ensure-generic-function 'new_cats-val :lambda-list '(m))
(cl:defmethod new_cats-val ((m <PatrolFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:new_cats-val is deprecated.  Use second_coursework-msg:new_cats instead.")
  (new_cats m))

(cl:ensure-generic-function 'new_dogs-val :lambda-list '(m))
(cl:defmethod new_dogs-val ((m <PatrolFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:new_dogs-val is deprecated.  Use second_coursework-msg:new_dogs instead.")
  (new_dogs m))

(cl:ensure-generic-function 'last_detection_pose-val :lambda-list '(m))
(cl:defmethod last_detection_pose-val ((m <PatrolFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:last_detection_pose-val is deprecated.  Use second_coursework-msg:last_detection_pose instead.")
  (last_detection_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolFeedback>) ostream)
  "Serializes a message object of type '<PatrolFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'new_people)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'new_cats)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'new_dogs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_detection_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolFeedback>) istream)
  "Deserializes a message object of type '<PatrolFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_people) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_cats) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_dogs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_detection_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolFeedback>)))
  "Returns string type for a message object of type '<PatrolFeedback>"
  "second_coursework/PatrolFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolFeedback)))
  "Returns string type for a message object of type 'PatrolFeedback"
  "second_coursework/PatrolFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolFeedback>)))
  "Returns md5sum for a message object of type '<PatrolFeedback>"
  "195414f01541c8b1d9f838f493884f8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolFeedback)))
  "Returns md5sum for a message object of type 'PatrolFeedback"
  "195414f01541c8b1d9f838f493884f8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolFeedback>)))
  "Returns full string definition for message of type '<PatrolFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%int32 new_people~%int32 new_cats~%int32 new_dogs~%geometry_msgs/Pose last_detection_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolFeedback)))
  "Returns full string definition for message of type 'PatrolFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%int32 new_people~%int32 new_cats~%int32 new_dogs~%geometry_msgs/Pose last_detection_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolFeedback>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_detection_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolFeedback
    (cl:cons ':new_people (new_people msg))
    (cl:cons ':new_cats (new_cats msg))
    (cl:cons ':new_dogs (new_dogs msg))
    (cl:cons ':last_detection_pose (last_detection_pose msg))
))
