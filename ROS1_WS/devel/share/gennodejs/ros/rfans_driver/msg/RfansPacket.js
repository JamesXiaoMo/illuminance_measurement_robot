// Auto-generated. Do not edit!

// (in-package rfans_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RfansPacket {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.udpCount = null;
      this.udpSize = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('udpCount')) {
        this.udpCount = initObj.udpCount
      }
      else {
        this.udpCount = 0;
      }
      if (initObj.hasOwnProperty('udpSize')) {
        this.udpSize = initObj.udpSize
      }
      else {
        this.udpSize = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RfansPacket
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [udpCount]
    bufferOffset = _serializer.uint32(obj.udpCount, buffer, bufferOffset);
    // Serialize message field [udpSize]
    bufferOffset = _serializer.uint32(obj.udpSize, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfansPacket
    let len;
    let data = new RfansPacket(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [udpCount]
    data.udpCount = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [udpSize]
    data.udpSize = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rfans_driver/RfansPacket';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '286ca481769f47d50a9a59b4e0d0d156';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Raw Rfans LIDAR packet.
    #Header        header         # standard ROS message header
    time stamp              # packet timestamp
    uint32 udpCount          # packet number
    uint32 udpSize
    uint8[] data      # packet contents 600 Block
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RfansPacket(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.udpCount !== undefined) {
      resolved.udpCount = msg.udpCount;
    }
    else {
      resolved.udpCount = 0
    }

    if (msg.udpSize !== undefined) {
      resolved.udpSize = msg.udpSize;
    }
    else {
      resolved.udpSize = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = RfansPacket;
