# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_power_measurement_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED power_measurement_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(power_measurement_FOUND FALSE)
  elseif(NOT power_measurement_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(power_measurement_FOUND FALSE)
  endif()
  return()
endif()
set(_power_measurement_CONFIG_INCLUDED TRUE)

# output package information
if(NOT power_measurement_FIND_QUIETLY)
  message(STATUS "Found power_measurement: 0.0.0 (${power_measurement_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'power_measurement' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${power_measurement_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(power_measurement_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "rosidl_cmake-extras.cmake;ament_cmake_export_dependencies-extras.cmake;ament_cmake_export_libraries-extras.cmake;ament_cmake_export_targets-extras.cmake;ament_cmake_export_include_directories-extras.cmake;rosidl_cmake_export_typesupport_libraries-extras.cmake;rosidl_cmake_export_typesupport_targets-extras.cmake")
foreach(_extra ${_extras})
  include("${power_measurement_DIR}/${_extra}")
endforeach()
