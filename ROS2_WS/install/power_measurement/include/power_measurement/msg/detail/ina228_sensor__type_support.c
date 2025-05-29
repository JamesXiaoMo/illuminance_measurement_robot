// generated from rosidl_typesupport_introspection_c/resource/idl__type_support.c.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice

#include <stddef.h>
#include "power_measurement/msg/detail/ina228_sensor__rosidl_typesupport_introspection_c.h"
#include "power_measurement/msg/rosidl_typesupport_introspection_c__visibility_control.h"
#include "rosidl_typesupport_introspection_c/field_types.h"
#include "rosidl_typesupport_introspection_c/identifier.h"
#include "rosidl_typesupport_introspection_c/message_introspection.h"
#include "power_measurement/msg/detail/ina228_sensor__functions.h"
#include "power_measurement/msg/detail/ina228_sensor__struct.h"


#ifdef __cplusplus
extern "C"
{
#endif

void Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_init_function(
  void * message_memory, enum rosidl_runtime_c__message_initialization _init)
{
  // TODO(karsten1987): initializers are not yet implemented for typesupport c
  // see https://github.com/ros2/ros2/issues/397
  (void) _init;
  power_measurement__msg__Ina228Sensor__init(message_memory);
}

void Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_fini_function(void * message_memory)
{
  power_measurement__msg__Ina228Sensor__fini(message_memory);
}

static rosidl_typesupport_introspection_c__MessageMember Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_member_array[3] = {
  {
    "voltage",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(power_measurement__msg__Ina228Sensor, voltage),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "current",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(power_measurement__msg__Ina228Sensor, current),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "power",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(power_measurement__msg__Ina228Sensor, power),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL  // resize(index) function pointer
  }
};

static const rosidl_typesupport_introspection_c__MessageMembers Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_members = {
  "power_measurement__msg",  // message namespace
  "Ina228Sensor",  // message name
  3,  // number of fields
  sizeof(power_measurement__msg__Ina228Sensor),
  Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_member_array,  // message members
  Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_init_function,  // function to initialize message memory (memory has to be allocated)
  Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_fini_function  // function to terminate message instance (will not free memory)
};

// this is not const since it must be initialized on first access
// since C does not allow non-integral compile-time constants
static rosidl_message_type_support_t Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_type_support_handle = {
  0,
  &Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_members,
  get_message_typesupport_handle_function,
};

ROSIDL_TYPESUPPORT_INTROSPECTION_C_EXPORT_power_measurement
const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, power_measurement, msg, Ina228Sensor)() {
  if (!Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_type_support_handle.typesupport_identifier) {
    Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_type_support_handle.typesupport_identifier =
      rosidl_typesupport_introspection_c__identifier;
  }
  return &Ina228Sensor__rosidl_typesupport_introspection_c__Ina228Sensor_message_type_support_handle;
}
#ifdef __cplusplus
}
#endif
