// generated from rosidl_typesupport_introspection_cpp/resource/idl__type_support.cpp.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice

#include "array"
#include "cstddef"
#include "string"
#include "vector"
#include "rosidl_runtime_c/message_type_support_struct.h"
#include "rosidl_typesupport_cpp/message_type_support.hpp"
#include "rosidl_typesupport_interface/macros.h"
#include "power_measurement/msg/detail/ina228_sensor__struct.hpp"
#include "rosidl_typesupport_introspection_cpp/field_types.hpp"
#include "rosidl_typesupport_introspection_cpp/identifier.hpp"
#include "rosidl_typesupport_introspection_cpp/message_introspection.hpp"
#include "rosidl_typesupport_introspection_cpp/message_type_support_decl.hpp"
#include "rosidl_typesupport_introspection_cpp/visibility_control.h"

namespace power_measurement
{

namespace msg
{

namespace rosidl_typesupport_introspection_cpp
{

void Ina228Sensor_init_function(
  void * message_memory, rosidl_runtime_cpp::MessageInitialization _init)
{
  new (message_memory) power_measurement::msg::Ina228Sensor(_init);
}

void Ina228Sensor_fini_function(void * message_memory)
{
  auto typed_message = static_cast<power_measurement::msg::Ina228Sensor *>(message_memory);
  typed_message->~Ina228Sensor();
}

static const ::rosidl_typesupport_introspection_cpp::MessageMember Ina228Sensor_message_member_array[3] = {
  {
    "voltage",  // name
    ::rosidl_typesupport_introspection_cpp::ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    nullptr,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(power_measurement::msg::Ina228Sensor, voltage),  // bytes offset in struct
    nullptr,  // default value
    nullptr,  // size() function pointer
    nullptr,  // get_const(index) function pointer
    nullptr,  // get(index) function pointer
    nullptr  // resize(index) function pointer
  },
  {
    "current",  // name
    ::rosidl_typesupport_introspection_cpp::ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    nullptr,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(power_measurement::msg::Ina228Sensor, current),  // bytes offset in struct
    nullptr,  // default value
    nullptr,  // size() function pointer
    nullptr,  // get_const(index) function pointer
    nullptr,  // get(index) function pointer
    nullptr  // resize(index) function pointer
  },
  {
    "power",  // name
    ::rosidl_typesupport_introspection_cpp::ROS_TYPE_DOUBLE,  // type
    0,  // upper bound of string
    nullptr,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(power_measurement::msg::Ina228Sensor, power),  // bytes offset in struct
    nullptr,  // default value
    nullptr,  // size() function pointer
    nullptr,  // get_const(index) function pointer
    nullptr,  // get(index) function pointer
    nullptr  // resize(index) function pointer
  }
};

static const ::rosidl_typesupport_introspection_cpp::MessageMembers Ina228Sensor_message_members = {
  "power_measurement::msg",  // message namespace
  "Ina228Sensor",  // message name
  3,  // number of fields
  sizeof(power_measurement::msg::Ina228Sensor),
  Ina228Sensor_message_member_array,  // message members
  Ina228Sensor_init_function,  // function to initialize message memory (memory has to be allocated)
  Ina228Sensor_fini_function  // function to terminate message instance (will not free memory)
};

static const rosidl_message_type_support_t Ina228Sensor_message_type_support_handle = {
  ::rosidl_typesupport_introspection_cpp::typesupport_identifier,
  &Ina228Sensor_message_members,
  get_message_typesupport_handle_function,
};

}  // namespace rosidl_typesupport_introspection_cpp

}  // namespace msg

}  // namespace power_measurement


namespace rosidl_typesupport_introspection_cpp
{

template<>
ROSIDL_TYPESUPPORT_INTROSPECTION_CPP_PUBLIC
const rosidl_message_type_support_t *
get_message_type_support_handle<power_measurement::msg::Ina228Sensor>()
{
  return &::power_measurement::msg::rosidl_typesupport_introspection_cpp::Ina228Sensor_message_type_support_handle;
}

}  // namespace rosidl_typesupport_introspection_cpp

#ifdef __cplusplus
extern "C"
{
#endif

ROSIDL_TYPESUPPORT_INTROSPECTION_CPP_PUBLIC
const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_cpp, power_measurement, msg, Ina228Sensor)() {
  return &::power_measurement::msg::rosidl_typesupport_introspection_cpp::Ina228Sensor_message_type_support_handle;
}

#ifdef __cplusplus
}
#endif
