; Auto-generated. Do not edit!


(cl:in-package second_coursework-msg)


;//! \htmlinclude PatrolResult.msg.html

(cl:defclass <PatrolResult> (roslisp-msg-protocol:ros-message)
  ((last_detection
    :reader last_detection
    :initarg :last_detection
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass PatrolResult (<PatrolResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-msg:<PatrolResult> is deprecated: use second_coursework-msg:PatrolResult instead.")))

(cl:ensure-generic-function 'last_detection-val :lambda-list '(m))
(cl:defmethod last_detection-val ((m <PatrolResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:last_detection-val is deprecated.  Use second_coursework-msg:last_detection instead.")
  (last_detection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolResult>) ostream)
  "Serializes a message object of type '<PatrolResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_detection) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolResult>) istream)
  "Deserializes a message object of type '<PatrolResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_detection) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolResult>)))
  "Returns string type for a message object of type '<PatrolResult>"
  "second_coursework/PatrolResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolResult)))
  "Returns string type for a message object of type 'PatrolResult"
  "second_coursework/PatrolResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolResult>)))
  "Returns md5sum for a message object of type '<PatrolResult>"
  "6ae9c5fe73827cfb37e7c7e84ba5b415")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolResult)))
  "Returns md5sum for a message object of type 'PatrolResult"
  "6ae9c5fe73827cfb37e7c7e84ba5b415")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolResult>)))
  "Returns full string definition for message of type '<PatrolResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/Pose last_detection~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolResult)))
  "Returns full string definition for message of type 'PatrolResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/Pose last_detection~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_detection))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolResult
    (cl:cons ':last_detection (last_detection msg))
))
