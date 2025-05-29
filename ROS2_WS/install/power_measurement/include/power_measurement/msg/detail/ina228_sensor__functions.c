// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from power_measurement:msg/Ina228Sensor.idl
// generated code does not contain a copyright notice
#include "power_measurement/msg/detail/ina228_sensor__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


bool
power_measurement__msg__Ina228Sensor__init(power_measurement__msg__Ina228Sensor * msg)
{
  if (!msg) {
    return false;
  }
  // voltage
  // current
  // power
  return true;
}

void
power_measurement__msg__Ina228Sensor__fini(power_measurement__msg__Ina228Sensor * msg)
{
  if (!msg) {
    return;
  }
  // voltage
  // current
  // power
}

bool
power_measurement__msg__Ina228Sensor__are_equal(const power_measurement__msg__Ina228Sensor * lhs, const power_measurement__msg__Ina228Sensor * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // voltage
  if (lhs->voltage != rhs->voltage) {
    return false;
  }
  // current
  if (lhs->current != rhs->current) {
    return false;
  }
  // power
  if (lhs->power != rhs->power) {
    return false;
  }
  return true;
}

bool
power_measurement__msg__Ina228Sensor__copy(
  const power_measurement__msg__Ina228Sensor * input,
  power_measurement__msg__Ina228Sensor * output)
{
  if (!input || !output) {
    return false;
  }
  // voltage
  output->voltage = input->voltage;
  // current
  output->current = input->current;
  // power
  output->power = input->power;
  return true;
}

power_measurement__msg__Ina228Sensor *
power_measurement__msg__Ina228Sensor__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  power_measurement__msg__Ina228Sensor * msg = (power_measurement__msg__Ina228Sensor *)allocator.allocate(sizeof(power_measurement__msg__Ina228Sensor), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(power_measurement__msg__Ina228Sensor));
  bool success = power_measurement__msg__Ina228Sensor__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
power_measurement__msg__Ina228Sensor__destroy(power_measurement__msg__Ina228Sensor * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    power_measurement__msg__Ina228Sensor__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
power_measurement__msg__Ina228Sensor__Sequence__init(power_measurement__msg__Ina228Sensor__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  power_measurement__msg__Ina228Sensor * data = NULL;

  if (size) {
    data = (power_measurement__msg__Ina228Sensor *)allocator.zero_allocate(size, sizeof(power_measurement__msg__Ina228Sensor), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = power_measurement__msg__Ina228Sensor__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        power_measurement__msg__Ina228Sensor__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
power_measurement__msg__Ina228Sensor__Sequence__fini(power_measurement__msg__Ina228Sensor__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      power_measurement__msg__Ina228Sensor__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

power_measurement__msg__Ina228Sensor__Sequence *
power_measurement__msg__Ina228Sensor__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  power_measurement__msg__Ina228Sensor__Sequence * array = (power_measurement__msg__Ina228Sensor__Sequence *)allocator.allocate(sizeof(power_measurement__msg__Ina228Sensor__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = power_measurement__msg__Ina228Sensor__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
power_measurement__msg__Ina228Sensor__Sequence__destroy(power_measurement__msg__Ina228Sensor__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    power_measurement__msg__Ina228Sensor__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
power_measurement__msg__Ina228Sensor__Sequence__are_equal(const power_measurement__msg__Ina228Sensor__Sequence * lhs, const power_measurement__msg__Ina228Sensor__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!power_measurement__msg__Ina228Sensor__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
power_measurement__msg__Ina228Sensor__Sequence__copy(
  const power_measurement__msg__Ina228Sensor__Sequence * input,
  power_measurement__msg__Ina228Sensor__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(power_measurement__msg__Ina228Sensor);
    power_measurement__msg__Ina228Sensor * data =
      (power_measurement__msg__Ina228Sensor *)realloc(output->data, allocation_size);
    if (!data) {
      return false;
    }
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!power_measurement__msg__Ina228Sensor__init(&data[i])) {
        /* free currently allocated and return false */
        for (; i-- > output->capacity; ) {
          power_measurement__msg__Ina228Sensor__fini(&data[i]);
        }
        free(data);
        return false;
      }
    }
    output->data = data;
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!power_measurement__msg__Ina228Sensor__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
