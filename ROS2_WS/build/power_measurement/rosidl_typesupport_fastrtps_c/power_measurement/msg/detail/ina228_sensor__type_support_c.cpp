// generated from rosidl_typesupport_fastrtps_c/resource/idl__type_support_c.cpp.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice
#include "power_measurement/msg/detail/ina228_sensor__rosidl_typesupport_fastrtps_c.h"


#include <cassert>
#include <limits>
#include <string>
#include "rosidl_typesupport_fastrtps_c/identifier.h"
#include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "power_measurement/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "power_measurement/msg/detail/ina228_sensor__struct.h"
#include "power_measurement/msg/detail/ina228_sensor__functions.h"
#include "fastcdr/Cdr.h"

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

// includes and forward declarations of message dependencies and their conversion functions

#if defined(__cplusplus)
extern "C"
{
#endif


// forward declare type support functions


using _Ina228Sensor__ros_msg_type = power_measurement__msg__Ina228Sensor;

static bool _Ina228Sensor__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _Ina228Sensor__ros_msg_type * ros_message = static_cast<const _Ina228Sensor__ros_msg_type *>(untyped_ros_message);
  // Field name: voltage
  {
    cdr << ros_message->voltage;
  }

  // Field name: current
  {
    cdr << ros_message->current;
  }

  // Field name: power
  {
    cdr << ros_message->power;
  }

  return true;
}

static bool _Ina228Sensor__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _Ina228Sensor__ros_msg_type * ros_message = static_cast<_Ina228Sensor__ros_msg_type *>(untyped_ros_message);
  // Field name: voltage
  {
    cdr >> ros_message->voltage;
  }

  // Field name: current
  {
    cdr >> ros_message->current;
  }

  // Field name: power
  {
    cdr >> ros_message->power;
  }

  return true;
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_power_measurement
size_t get_serialized_size_power_measurement__msg__Ina228Sensor(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _Ina228Sensor__ros_msg_type * ros_message = static_cast<const _Ina228Sensor__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name voltage
  {
    size_t item_size = sizeof(ros_message->voltage);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name current
  {
    size_t item_size = sizeof(ros_message->current);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name power
  {
    size_t item_size = sizeof(ros_message->power);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

static uint32_t _Ina228Sensor__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_power_measurement__msg__Ina228Sensor(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_power_measurement
size_t max_serialized_size_power_measurement__msg__Ina228Sensor(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;

  // member: voltage
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }
  // member: current
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }
  // member: power
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }

  return current_alignment - initial_alignment;
}

static size_t _Ina228Sensor__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_power_measurement__msg__Ina228Sensor(
    full_bounded, 0);
}


static message_type_support_callbacks_t __callbacks_Ina228Sensor = {
  "power_measurement::msg",
  "Ina228Sensor",
  _Ina228Sensor__cdr_serialize,
  _Ina228Sensor__cdr_deserialize,
  _Ina228Sensor__get_serialized_size,
  _Ina228Sensor__max_serialized_size
};

static rosidl_message_type_support_t _Ina228Sensor__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_Ina228Sensor,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, power_measurement, msg, Ina228Sensor)() {
  return &_Ina228Sensor__type_support;
}

#if defined(__cplusplus)
}
#endif
