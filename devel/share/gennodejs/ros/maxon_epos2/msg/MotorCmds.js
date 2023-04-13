// Auto-generated. Do not edit!

// (in-package maxon_epos2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorCmds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_ids = null;
      this.cmd_values = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_ids')) {
        this.motor_ids = initObj.motor_ids
      }
      else {
        this.motor_ids = [];
      }
      if (initObj.hasOwnProperty('cmd_values')) {
        this.cmd_values = initObj.cmd_values
      }
      else {
        this.cmd_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorCmds
    // Serialize message field [motor_ids]
    bufferOffset = _arraySerializer.int32(obj.motor_ids, buffer, bufferOffset, null);
    // Serialize message field [cmd_values]
    bufferOffset = _arraySerializer.float64(obj.cmd_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorCmds
    let len;
    let data = new MotorCmds(null);
    // Deserialize message field [motor_ids]
    data.motor_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cmd_values]
    data.cmd_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.motor_ids.length;
    length += 8 * object.cmd_values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maxon_epos2/MotorCmds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b12e2645e04fa107d86efbd8fdcf3f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[]   motor_ids
    float64[] cmd_values
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorCmds(null);
    if (msg.motor_ids !== undefined) {
      resolved.motor_ids = msg.motor_ids;
    }
    else {
      resolved.motor_ids = []
    }

    if (msg.cmd_values !== undefined) {
      resolved.cmd_values = msg.cmd_values;
    }
    else {
      resolved.cmd_values = []
    }

    return resolved;
    }
};

module.exports = MotorCmds;
