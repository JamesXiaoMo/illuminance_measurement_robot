// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice

#ifndef POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__BUILDER_HPP_
#define POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__BUILDER_HPP_

#include "power_measurement/msg/detail/ina228_sensor__struct.hpp"
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <utility>


namespace power_measurement
{

namespace msg
{

namespace builder
{

class Init_Ina228Sensor_power
{
public:
  explicit Init_Ina228Sensor_power(::power_measurement::msg::Ina228Sensor & msg)
  : msg_(msg)
  {}
  ::power_measurement::msg::Ina228Sensor power(::power_measurement::msg::Ina228Sensor::_power_type arg)
  {
    msg_.power = std::move(arg);
    return std::move(msg_);
  }

private:
  ::power_measurement::msg::Ina228Sensor msg_;
};

class Init_Ina228Sensor_current
{
public:
  explicit Init_Ina228Sensor_current(::power_measurement::msg::Ina228Sensor & msg)
  : msg_(msg)
  {}
  Init_Ina228Sensor_power current(::power_measurement::msg::Ina228Sensor::_current_type arg)
  {
    msg_.current = std::move(arg);
    return Init_Ina228Sensor_power(msg_);
  }

private:
  ::power_measurement::msg::Ina228Sensor msg_;
};

class Init_Ina228Sensor_voltage
{
public:
  Init_Ina228Sensor_voltage()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_Ina228Sensor_current voltage(::power_measurement::msg::Ina228Sensor::_voltage_type arg)
  {
    msg_.voltage = std::move(arg);
    return Init_Ina228Sensor_current(msg_);
  }

private:
  ::power_measurement::msg::Ina228Sensor msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::power_measurement::msg::Ina228Sensor>()
{
  return power_measurement::msg::builder::Init_Ina228Sensor_voltage();
}

}  // namespace power_measurement

#endif  // POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__BUILDER_HPP_
