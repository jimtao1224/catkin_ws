// Auto-generated. Do not edit!

// (in-package maxon_epos2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorState = require('./MotorState.js');

//-----------------------------------------------------------

class MotorStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_states = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_states')) {
        this.motor_states = initObj.motor_states
      }
      else {
        this.motor_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStates
    // Serialize message field [motor_states]
    // Serialize the length for message field [motor_states]
    bufferOffset = _serializer.uint32(obj.motor_states.length, buffer, bufferOffset);
    obj.motor_states.forEach((val) => {
      bufferOffset = MotorState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStates
    let len;
    let data = new MotorStates(null);
    // Deserialize message field [motor_states]
    // Deserialize array length for message field [motor_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motor_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motor_states[i] = MotorState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.motor_states.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maxon_epos2/MotorStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5b0a65f417d44d6769d684f20442892';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorState[] motor_states
    ================================================================================
    MSG: maxon_epos2/MotorState
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
    const resolved = new MotorStates(null);
    if (msg.motor_states !== undefined) {
      resolved.motor_states = new Array(msg.motor_states.length);
      for (let i = 0; i < resolved.motor_states.length; ++i) {
        resolved.motor_states[i] = MotorState.Resolve(msg.motor_states[i]);
      }
    }
    else {
      resolved.motor_states = []
    }

    return resolved;
    }
};

module.exports = MotorStates;
