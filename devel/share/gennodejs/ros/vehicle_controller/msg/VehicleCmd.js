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

class VehicleCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel_x = null;
      this.vel_y = null;
      this.vel_r = null;
    }
    else {
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleCmd
    // Serialize message field [vel_x]
    bufferOffset = _serializer.float32(obj.vel_x, buffer, bufferOffset);
    // Serialize message field [vel_y]
    bufferOffset = _serializer.float32(obj.vel_y, buffer, bufferOffset);
    // Serialize message field [vel_r]
    bufferOffset = _serializer.float32(obj.vel_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleCmd
    let len;
    let data = new VehicleCmd(null);
    // Deserialize message field [vel_x]
    data.vel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_y]
    data.vel_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_r]
    data.vel_r = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_controller/VehicleCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b469c40e26903550ecb3eed6f99e613b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vel_x
    float32 vel_y
    float32 vel_r
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleCmd(null);
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

    return resolved;
    }
};

module.exports = VehicleCmd;
