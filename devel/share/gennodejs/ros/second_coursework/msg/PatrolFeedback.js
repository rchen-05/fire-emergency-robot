// Auto-generated. Do not edit!

// (in-package second_coursework.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PatrolFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_people = null;
      this.new_cats = null;
      this.new_dogs = null;
      this.last_detection_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('new_people')) {
        this.new_people = initObj.new_people
      }
      else {
        this.new_people = 0;
      }
      if (initObj.hasOwnProperty('new_cats')) {
        this.new_cats = initObj.new_cats
      }
      else {
        this.new_cats = 0;
      }
      if (initObj.hasOwnProperty('new_dogs')) {
        this.new_dogs = initObj.new_dogs
      }
      else {
        this.new_dogs = 0;
      }
      if (initObj.hasOwnProperty('last_detection_pose')) {
        this.last_detection_pose = initObj.last_detection_pose
      }
      else {
        this.last_detection_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatrolFeedback
    // Serialize message field [new_people]
    bufferOffset = _serializer.int32(obj.new_people, buffer, bufferOffset);
    // Serialize message field [new_cats]
    bufferOffset = _serializer.int32(obj.new_cats, buffer, bufferOffset);
    // Serialize message field [new_dogs]
    bufferOffset = _serializer.int32(obj.new_dogs, buffer, bufferOffset);
    // Serialize message field [last_detection_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.last_detection_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolFeedback
    let len;
    let data = new PatrolFeedback(null);
    // Deserialize message field [new_people]
    data.new_people = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [new_cats]
    data.new_cats = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [new_dogs]
    data.new_dogs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [last_detection_pose]
    data.last_detection_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'second_coursework/PatrolFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '195414f01541c8b1d9f838f493884f8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Feedback
    int32 new_people
    int32 new_cats
    int32 new_dogs
    geometry_msgs/Pose last_detection_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PatrolFeedback(null);
    if (msg.new_people !== undefined) {
      resolved.new_people = msg.new_people;
    }
    else {
      resolved.new_people = 0
    }

    if (msg.new_cats !== undefined) {
      resolved.new_cats = msg.new_cats;
    }
    else {
      resolved.new_cats = 0
    }

    if (msg.new_dogs !== undefined) {
      resolved.new_dogs = msg.new_dogs;
    }
    else {
      resolved.new_dogs = 0
    }

    if (msg.last_detection_pose !== undefined) {
      resolved.last_detection_pose = geometry_msgs.msg.Pose.Resolve(msg.last_detection_pose)
    }
    else {
      resolved.last_detection_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = PatrolFeedback;
