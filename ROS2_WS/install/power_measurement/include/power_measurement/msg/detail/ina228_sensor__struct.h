// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice

#ifndef POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__STRUCT_H_
#define POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Struct defined in msg/Ina228Sensor in the package power_measurement.
typedef struct power_measurement__msg__Ina228Sensor
{
  double voltage;
  double current;
  double power;
} power_measurement__msg__Ina228Sensor;

// Struct for a sequence of power_measurement__msg__Ina228Sensor.
typedef struct power_measurement__msg__Ina228Sensor__Sequence
{
  power_measurement__msg__Ina228Sensor * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} power_measurement__msg__Ina228Sensor__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__STRUCT_H_
