// Auto-generated. Do not edit!

// (in-package wheel_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelDirection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel_name = null;
      this.dir_x = null;
      this.dir_y = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel_name')) {
        this.wheel_name = initObj.wheel_name
      }
      else {
        this.wheel_name = '';
      }
      if (initObj.hasOwnProperty('dir_x')) {
        this.dir_x = initObj.dir_x
      }
      else {
        this.dir_x = 0.0;
      }
      if (initObj.hasOwnProperty('dir_y')) {
        this.dir_y = initObj.dir_y
      }
      else {
        this.dir_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelDirection
    // Serialize message field [wheel_name]
    bufferOffset = _serializer.string(obj.wheel_name, buffer, bufferOffset);
    // Serialize message field [dir_x]
    bufferOffset = _serializer.float32(obj.dir_x, buffer, bufferOffset);
    // Serialize message field [dir_y]
    bufferOffset = _serializer.float32(obj.dir_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelDirection
    let len;
    let data = new WheelDirection(null);
    // Deserialize message field [wheel_name]
    data.wheel_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dir_x]
    data.dir_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dir_y]
    data.dir_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.wheel_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wheel_controller/WheelDirection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf40030702854cebce57b05560a71a3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string     wheel_name
    float32    dir_x
    float32    dir_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelDirection(null);
    if (msg.wheel_name !== undefined) {
      resolved.wheel_name = msg.wheel_name;
    }
    else {
      resolved.wheel_name = ''
    }

    if (msg.dir_x !== undefined) {
      resolved.dir_x = msg.dir_x;
    }
    else {
      resolved.dir_x = 0.0
    }

    if (msg.dir_y !== undefined) {
      resolved.dir_y = msg.dir_y;
    }
    else {
      resolved.dir_y = 0.0
    }

    return resolved;
    }
};

module.exports = WheelDirection;
