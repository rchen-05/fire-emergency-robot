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

class PatrolResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.people_positions = null;
      this.cat_positions = null;
      this.dog_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('people_positions')) {
        this.people_positions = initObj.people_positions
      }
      else {
        this.people_positions = [];
      }
      if (initObj.hasOwnProperty('cat_positions')) {
        this.cat_positions = initObj.cat_positions
      }
      else {
        this.cat_positions = [];
      }
      if (initObj.hasOwnProperty('dog_positions')) {
        this.dog_positions = initObj.dog_positions
      }
      else {
        this.dog_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatrolResult
    // Serialize message field [people_positions]
    // Serialize the length for message field [people_positions]
    bufferOffset = _serializer.uint32(obj.people_positions.length, buffer, bufferOffset);
    obj.people_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cat_positions]
    // Serialize the length for message field [cat_positions]
    bufferOffset = _serializer.uint32(obj.cat_positions.length, buffer, bufferOffset);
    obj.cat_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dog_positions]
    // Serialize the length for message field [dog_positions]
    bufferOffset = _serializer.uint32(obj.dog_positions.length, buffer, bufferOffset);
    obj.dog_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolResult
    let len;
    let data = new PatrolResult(null);
    // Deserialize message field [people_positions]
    // Deserialize array length for message field [people_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.people_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.people_positions[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cat_positions]
    // Deserialize array length for message field [cat_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cat_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cat_positions[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dog_positions]
    // Deserialize array length for message field [dog_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dog_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dog_positions[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.people_positions.length;
    length += 56 * object.cat_positions.length;
    length += 56 * object.dog_positions.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'second_coursework/PatrolResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19944e0b20a2274c6da955fe1e2bfa5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Result
    geometry_msgs/Pose[] people_positions
    geometry_msgs/Pose[] cat_positions
    geometry_msgs/Pose[] dog_positions
    
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
    const resolved = new PatrolResult(null);
    if (msg.people_positions !== undefined) {
      resolved.people_positions = new Array(msg.people_positions.length);
      for (let i = 0; i < resolved.people_positions.length; ++i) {
        resolved.people_positions[i] = geometry_msgs.msg.Pose.Resolve(msg.people_positions[i]);
      }
    }
    else {
      resolved.people_positions = []
    }

    if (msg.cat_positions !== undefined) {
      resolved.cat_positions = new Array(msg.cat_positions.length);
      for (let i = 0; i < resolved.cat_positions.length; ++i) {
        resolved.cat_positions[i] = geometry_msgs.msg.Pose.Resolve(msg.cat_positions[i]);
      }
    }
    else {
      resolved.cat_positions = []
    }

    if (msg.dog_positions !== undefined) {
      resolved.dog_positions = new Array(msg.dog_positions.length);
      for (let i = 0; i < resolved.dog_positions.length; ++i) {
        resolved.dog_positions[i] = geometry_msgs.msg.Pose.Resolve(msg.dog_positions[i]);
      }
    }
    else {
      resolved.dog_positions = []
    }

    return resolved;
    }
};

module.exports = PatrolResult;
