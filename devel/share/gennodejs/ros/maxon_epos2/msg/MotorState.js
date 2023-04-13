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

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_id = null;
      this.pos = null;
      this.vel = null;
      this.cur = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_id')) {
        this.motor_id = initObj.motor_id
      }
      else {
        this.motor_id = 0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('cur')) {
        this.cur = initObj.cur
      }
      else {
        this.cur = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [motor_id]
    bufferOffset = _serializer.int32(obj.motor_id, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _serializer.float64(obj.pos, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    // Serialize message field [cur]
    bufferOffset = _serializer.float64(obj.cur, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [motor_id]
    data.motor_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur]
    data.cur = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maxon_epos2/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6bd4ada87b249d3b15c0971aa64e0cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   motor_id
    float64 pos
    float64 vel
    float64 cur
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorState(null);
    if (msg.motor_id !== undefined) {
      resolved.motor_id = msg.motor_id;
    }
    else {
      resolved.motor_id = 0
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.cur !== undefined) {
      resolved.cur = msg.cur;
    }
    else {
      resolved.cur = 0.0
    }

    return resolved;
    }
};

module.exports = MotorState;
