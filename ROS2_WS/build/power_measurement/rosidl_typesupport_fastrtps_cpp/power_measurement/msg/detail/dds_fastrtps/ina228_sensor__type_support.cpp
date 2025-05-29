// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__type_support.cpp.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice
#include "power_measurement/msg/detail/ina228_sensor__rosidl_typesupport_fastrtps_cpp.hpp"
#include "power_measurement/msg/detail/ina228_sensor__struct.hpp"

#include <limits>
#include <stdexcept>
#include <string>
#include "rosidl_typesupport_cpp/message_type_support.hpp"
#include "rosidl_typesupport_fastrtps_cpp/identifier.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support_decl.hpp"
#include "rosidl_typesupport_fastrtps_cpp/wstring_conversion.hpp"
#include "fastcdr/Cdr.h"


// forward declaration of message dependencies and their conversion functions

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
  eprosima::fastcdr::Cdr & cdr)
{
  // Member: voltage
  cdr << ros_message.voltage;
  // Member: current
  cdr << ros_message.current;
  // Member: power
  cdr << ros_message.power;
  return true;
}

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  power_measurement::msg::Ina228Sensor & ros_message)
{
  // Member: voltage
  cdr >> ros_message.voltage;

  // Member: current
  cdr >> ros_message.current;

  // Member: power
  cdr >> ros_message.power;

  return true;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
get_serialized_size(
  const power_measurement::msg::Ina228Sensor & ros_message,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // Member: voltage
  {
    size_t item_size = sizeof(ros_message.voltage);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: current
  {
    size_t item_size = sizeof(ros_message.current);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: power
  {
    size_t item_size = sizeof(ros_message.power);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_power_measurement
max_serialized_size_Ina228Sensor(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;


  // Member: voltage
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }

  // Member: current
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }

  // Member: power
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }

  return current_alignment - initial_alignment;
}

static bool _Ina228Sensor__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  auto typed_message =
    static_cast<const power_measurement::msg::Ina228Sensor *>(
    untyped_ros_message);
  return cdr_serialize(*typed_message, cdr);
}

static bool _Ina228Sensor__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  auto typed_message =
    static_cast<power_measurement::msg::Ina228Sensor *>(
    untyped_ros_message);
  return cdr_deserialize(cdr, *typed_message);
}

static uint32_t _Ina228Sensor__get_serialized_size(
  const void * untyped_ros_message)
{
  auto typed_message =
    static_cast<const power_measurement::msg::Ina228Sensor *>(
    untyped_ros_message);
  return static_cast<uint32_t>(get_serialized_size(*typed_message, 0));
}

static size_t _Ina228Sensor__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_Ina228Sensor(full_bounded, 0);
}

static message_type_support_callbacks_t _Ina228Sensor__callbacks = {
  "power_measurement::msg",
  "Ina228Sensor",
  _Ina228Sensor__cdr_serialize,
  _Ina228Sensor__cdr_deserialize,
  _Ina228Sensor__get_serialized_size,
  _Ina228Sensor__max_serialized_size
};

static rosidl_message_type_support_t _Ina228Sensor__handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &_Ina228Sensor__callbacks,
  get_message_typesupport_handle_function,
};

}  // namespace typesupport_fastrtps_cpp

}  // namespace msg

}  // namespace power_measurement

namespace rosidl_typesupport_fastrtps_cpp
{

template<>
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_EXPORT_power_measurement
const rosidl_message_type_support_t *
get_message_type_support_handle<power_measurement::msg::Ina228Sensor>()
{
  return &power_measurement::msg::typesupport_fastrtps_cpp::_Ina228Sensor__handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, power_measurement, msg, Ina228Sensor)() {
  return &power_measurement::msg::typesupport_fastrtps_cpp::_Ina228Sensor__handle;
}

#ifdef __cplusplus
}
#endif
