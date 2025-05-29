// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__rosidl_typesupport_fastrtps_cpp.hpp.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice

#ifndef POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_
#define POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_

#include "rosidl_runtime_c/message_type_support_struct.h"
#include "rosidl_typesupport_interface/macros.h"
#include "power_measurement/msg/rosidl_typesupport_fastrtps_cpp__visibility_control.h"
#include "power_measurement/msg/detail/ina228_sensor__struct.hpp"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

#include "fastcdr/Cdr.h"

namespace power_measurement
{

namespace msg
{

namespace typesupport_fastrtps_cpp
{

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
cdr_serialize(
  const power_measurement::msg::Ina228Sensor & ros_message,
  eprosima::fastcdr::Cdr & cdr);

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  power_measurement::msg::Ina228Sensor & ros_message);

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
get_serialized_size(
  const power_measurement::msg::Ina228Sensor & ros_message,
  size_t current_alignment);

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
max_serialized_size_Ina228Sensor(
  bool & full_bounded,
  size_t current_alignment);

}  // namespace typesupport_fastrtps_cpp

}  // namespace msg

}  // namespace power_measurement

#ifdef __cplusplus
extern "C"
{
#endif

ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
const rosidl_message_type_support_t *
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, power_measurement, msg, Ina228Sensor)();

#ifdef __cplusplus
}
#endif

#endif  // POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_
