; Auto-generated. Do not edit!


(cl:in-package second_coursework-msg)


;//! \htmlinclude PatrolResult.msg.html

(cl:defclass <PatrolResult> (roslisp-msg-protocol:ros-message)
  ((person_poses
    :reader person_poses
    :initarg :person_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (cat_poses
    :reader cat_poses
    :initarg :cat_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (dog_poses
    :reader dog_poses
    :initarg :dog_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass PatrolResult (<PatrolResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-msg:<PatrolResult> is deprecated: use second_coursework-msg:PatrolResult instead.")))

(cl:ensure-generic-function 'person_poses-val :lambda-list '(m))
(cl:defmethod person_poses-val ((m <PatrolResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:person_poses-val is deprecated.  Use second_coursework-msg:person_poses instead.")
  (person_poses m))

(cl:ensure-generic-function 'cat_poses-val :lambda-list '(m))
(cl:defmethod cat_poses-val ((m <PatrolResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:cat_poses-val is deprecated.  Use second_coursework-msg:cat_poses instead.")
  (cat_poses m))

(cl:ensure-generic-function 'dog_poses-val :lambda-list '(m))
(cl:defmethod dog_poses-val ((m <PatrolResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:dog_poses-val is deprecated.  Use second_coursework-msg:dog_poses instead.")
  (dog_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolResult>) ostream)
  "Serializes a message object of type '<PatrolResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'person_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'person_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cat_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cat_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dog_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dog_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolResult>) istream)
  "Deserializes a message object of type '<PatrolResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'person_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'person_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cat_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cat_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dog_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dog_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
  "36b4977d3d4e148dd8c6328523d75894")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolResult)))
  "Returns md5sum for a message object of type 'PatrolResult"
  "36b4977d3d4e148dd8c6328523d75894")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolResult>)))
  "Returns full string definition for message of type '<PatrolResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/Pose[] person_poses~%geometry_msgs/Pose[] cat_poses~%geometry_msgs/Pose[] dog_poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolResult)))
  "Returns full string definition for message of type 'PatrolResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/Pose[] person_poses~%geometry_msgs/Pose[] cat_poses~%geometry_msgs/Pose[] dog_poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'person_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cat_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dog_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolResult
    (cl:cons ':person_poses (person_poses msg))
    (cl:cons ':cat_poses (cat_poses msg))
    (cl:cons ':dog_poses (dog_poses msg))
))
