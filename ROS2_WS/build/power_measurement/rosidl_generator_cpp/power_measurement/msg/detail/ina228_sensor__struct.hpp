// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice

#ifndef POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__STRUCT_HPP_
#define POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__STRUCT_HPP_

#include <rosidl_runtime_cpp/bounded_vector.hpp>
#include <rosidl_runtime_cpp/message_initialization.hpp>
#include <algorithm>
#include <array>
#include <memory>
#include <string>
#include <vector>


#ifndef _WIN32
# define DEPRECATED__power_measurement__msg__Ina228Sensor __attribute__((deprecated))
#else
# define DEPRECATED__power_measurement__msg__Ina228Sensor __declspec(deprecated)
#endif

namespace power_measurement
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct Ina228Sensor_
{
  using Type = Ina228Sensor_<ContainerAllocator>;

  explicit Ina228Sensor_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->voltage = 0.0;
      this->current = 0.0;
      this->power = 0.0;
    }
  }

  explicit Ina228Sensor_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    (void)_alloc;
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->voltage = 0.0;
      this->current = 0.0;
      this->power = 0.0;
    }
  }

  // field types and members
  using _voltage_type =
    double;
  _voltage_type voltage;
  using _current_type =
    double;
  _current_type current;
  using _power_type =
    double;
  _power_type power;

  // setters for named parameter idiom
  Type & set__voltage(
    const double & _arg)
  {
    this->voltage = _arg;
    return *this;
  }
  Type & set__current(
    const double & _arg)
  {
    this->current = _arg;
    return *this;
  }
  Type & set__power(
    const double & _arg)
  {
    this->power = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    power_measurement::msg::Ina228Sensor_<ContainerAllocator> *;
  using ConstRawPtr =
    const power_measurement::msg::Ina228Sensor_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      power_measurement::msg::Ina228Sensor_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      power_measurement::msg::Ina228Sensor_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__power_measurement__msg__Ina228Sensor
    std::shared_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__power_measurement__msg__Ina228Sensor
    std::shared_ptr<power_measurement::msg::Ina228Sensor_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const Ina228Sensor_ & other) const
  {
    if (this->voltage != other.voltage) {
      return false;
    }
    if (this->current != other.current) {
      return false;
    }
    if (this->power != other.power) {
      return false;
    }
    return true;
  }
  bool operator!=(const Ina228Sensor_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct Ina228Sensor_

// alias to use template instance with default allocator
using Ina228Sensor =
  power_measurement::msg::Ina228Sensor_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace power_measurement

#endif  // POWER_MEASUREMENT__MSG__DETAIL__INA228_SENSOR__STRUCT_HPP_
