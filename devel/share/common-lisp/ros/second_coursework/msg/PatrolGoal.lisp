; Auto-generated. Do not edit!


(cl:in-package second_coursework-msg)


;//! \htmlinclude PatrolGoal.msg.html

(cl:defclass <PatrolGoal> (roslisp-msg-protocol:ros-message)
  ((patrol_duration
    :reader patrol_duration
    :initarg :patrol_duration
    :type cl:real
    :initform 0))
)

(cl:defclass PatrolGoal (<PatrolGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-msg:<PatrolGoal> is deprecated: use second_coursework-msg:PatrolGoal instead.")))

(cl:ensure-generic-function 'patrol_duration-val :lambda-list '(m))
(cl:defmethod patrol_duration-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:patrol_duration-val is deprecated.  Use second_coursework-msg:patrol_duration instead.")
  (patrol_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolGoal>) ostream)
  "Serializes a message object of type '<PatrolGoal>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'patrol_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'patrol_duration) (cl:floor (cl:slot-value msg 'patrol_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolGoal>) istream)
  "Deserializes a message object of type '<PatrolGoal>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'patrol_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolGoal>)))
  "Returns string type for a message object of type '<PatrolGoal>"
  "second_coursework/PatrolGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolGoal)))
  "Returns string type for a message object of type 'PatrolGoal"
  "second_coursework/PatrolGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolGoal>)))
  "Returns md5sum for a message object of type '<PatrolGoal>"
  "41044496e55fc1dcdb646ab97e22a074")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolGoal)))
  "Returns md5sum for a message object of type 'PatrolGoal"
  "41044496e55fc1dcdb646ab97e22a074")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolGoal>)))
  "Returns full string definition for message of type '<PatrolGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%duration patrol_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolGoal)))
  "Returns full string definition for message of type 'PatrolGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%duration patrol_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolGoal>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolGoal
    (cl:cons ':patrol_duration (patrol_duration msg))
))
