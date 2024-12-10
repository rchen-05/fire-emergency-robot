; Auto-generated. Do not edit!


(cl:in-package second_coursework-msg)


;//! \htmlinclude PatrolResult.msg.html

(cl:defclass <PatrolResult> (roslisp-msg-protocol:ros-message)
  ((people_positions
    :reader people_positions
    :initarg :people_positions
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (cat_positions
    :reader cat_positions
    :initarg :cat_positions
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (dog_positions
    :reader dog_positions
    :initarg :dog_positions
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass PatrolResult (<PatrolResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-msg:<PatrolResult> is deprecated: use second_coursework-msg:PatrolResult instead.")))

(cl:ensure-generic-function 'people_positions-val :lambda-list '(m))
(cl:defmethod people_positions-val ((m <PatrolResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:people_positions-val is deprecated.  Use second_coursework-msg:people_positions instead.")
  (people_positions m))

(cl:ensure-generic-function 'cat_positions-val :lambda-list '(m))
(cl:defmethod cat_positions-val ((m <PatrolResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:cat_positions-val is deprecated.  Use second_coursework-msg:cat_positions instead.")
  (cat_positions m))

(cl:ensure-generic-function 'dog_positions-val :lambda-list '(m))
(cl:defmethod dog_positions-val ((m <PatrolResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:dog_positions-val is deprecated.  Use second_coursework-msg:dog_positions instead.")
  (dog_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolResult>) ostream)
  "Serializes a message object of type '<PatrolResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'people_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'people_positions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cat_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cat_positions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dog_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dog_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolResult>) istream)
  "Deserializes a message object of type '<PatrolResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'people_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'people_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cat_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cat_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dog_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dog_positions)))
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
  "19944e0b20a2274c6da955fe1e2bfa5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolResult)))
  "Returns md5sum for a message object of type 'PatrolResult"
  "19944e0b20a2274c6da955fe1e2bfa5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolResult>)))
  "Returns full string definition for message of type '<PatrolResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/Pose[] people_positions~%geometry_msgs/Pose[] cat_positions~%geometry_msgs/Pose[] dog_positions~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolResult)))
  "Returns full string definition for message of type 'PatrolResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/Pose[] people_positions~%geometry_msgs/Pose[] cat_positions~%geometry_msgs/Pose[] dog_positions~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'people_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cat_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dog_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolResult
    (cl:cons ':people_positions (people_positions msg))
    (cl:cons ':cat_positions (cat_positions msg))
    (cl:cons ':dog_positions (dog_positions msg))
))
