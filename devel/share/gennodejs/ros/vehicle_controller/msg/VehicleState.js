// Auto-generated. Do not edit!

// (in-package vehicle_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_state = null;
      this.vel_x = null;
      this.vel_y = null;
      this.vel_r = null;
      this.pos_x = null;
      this.pos_y = null;
      this.pos_r = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_state')) {
        this.vehicle_state = initObj.vehicle_state
      }
      else {
        this.vehicle_state = '';
      }
      if (initObj.hasOwnProperty('vel_x')) {
        this.vel_x = initObj.vel_x
      }
      else {
        this.vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('vel_y')) {
        this.vel_y = initObj.vel_y
      }
      else {
        this.vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('vel_r')) {
        this.vel_r = initObj.vel_r
      }
      else {
        this.vel_r = 0.0;
      }
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('pos_r')) {
        this.pos_r = initObj.pos_r
      }
      else {
        this.pos_r = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleState
    // Serialize message field [vehicle_state]
    bufferOffset = _serializer.string(obj.vehicle_state, buffer, bufferOffset);
    // Serialize message field [vel_x]
    bufferOffset = _serializer.float32(obj.vel_x, buffer, bufferOffset);
    // Serialize message field [vel_y]
    bufferOffset = _serializer.float32(obj.vel_y, buffer, bufferOffset);
    // Serialize message field [vel_r]
    bufferOffset = _serializer.float32(obj.vel_r, buffer, bufferOffset);
    // Serialize message field [pos_x]
    bufferOffset = _serializer.float32(obj.pos_x, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.float32(obj.pos_y, buffer, bufferOffset);
    // Serialize message field [pos_r]
    bufferOffset = _serializer.float32(obj.pos_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleState
    let len;
    let data = new VehicleState(null);
    // Deserialize message field [vehicle_state]
    data.vehicle_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vel_x]
    data.vel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_y]
    data.vel_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_r]
    data.vel_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_x]
    data.pos_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_r]
    data.pos_r = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.vehicle_state);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_controller/VehicleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23e2b9f9a84fb74dca9501a8f8e94a69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  vehicle_state
    float32 vel_x
    float32 vel_y
    float32 vel_r
    float32 pos_x
    float32 pos_y
    float32 pos_r
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleState(null);
    if (msg.vehicle_state !== undefined) {
      resolved.vehicle_state = msg.vehicle_state;
    }
    else {
      resolved.vehicle_state = ''
    }

    if (msg.vel_x !== undefined) {
      resolved.vel_x = msg.vel_x;
    }
    else {
      resolved.vel_x = 0.0
    }

    if (msg.vel_y !== undefined) {
      resolved.vel_y = msg.vel_y;
    }
    else {
      resolved.vel_y = 0.0
    }

    if (msg.vel_r !== undefined) {
      resolved.vel_r = msg.vel_r;
    }
    else {
      resolved.vel_r = 0.0
    }

    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = 0.0
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0.0
    }

    if (msg.pos_r !== undefined) {
      resolved.pos_r = msg.pos_r;
    }
    else {
      resolved.pos_r = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleState;
