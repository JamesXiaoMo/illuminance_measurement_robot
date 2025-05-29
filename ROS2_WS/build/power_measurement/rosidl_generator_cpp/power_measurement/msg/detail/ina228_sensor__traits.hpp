// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice

#ifndef POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__TRAITS_HPP_
#define POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__TRAITS_HPP_

#include "power_measurement/msg/detail/ina228_sensor__struct.hpp"
#include <rosidl_runtime_cpp/traits.hpp>
#include <stdint.h>
#include <type_traits>

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<power_measurement::msg::Ina228Sensor>()
{
  return "power_measurement::msg::Ina228Sensor";
}

template<>
inline const char * name<power_measurement::msg::Ina228Sensor>()
{
  return "power_measurement/msg/Ina228Sensor";
}

template<>
struct has_fixed_size<power_measurement::msg::Ina228Sensor>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<power_measurement::msg::Ina228Sensor>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<power_measurement::msg::Ina228Sensor>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__TRAITS_HPP_
