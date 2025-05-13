# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rfans_driver: 3 messages, 1 services")

set(MSG_I_FLAGS "-Irfans_driver:/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rfans_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg" NAME_WE)
add_custom_target(_rfans_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rfans_driver" "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg" ""
)

get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg" NAME_WE)
add_custom_target(_rfans_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rfans_driver" "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg" ""
)

get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg" NAME_WE)
add_custom_target(_rfans_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rfans_driver" "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg" "std_msgs/Header:rfans_driver/Packet"
)

get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv" NAME_WE)
add_custom_target(_rfans_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rfans_driver" "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rfans_driver
)
_generate_msg_cpp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rfans_driver
)
_generate_msg_cpp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rfans_driver
)

### Generating Services
_generate_srv_cpp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rfans_driver
)

### Generating Module File
_generate_module_cpp(rfans_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rfans_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rfans_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rfans_driver_generate_messages rfans_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_cpp _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_cpp _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_cpp _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv" NAME_WE)
add_dependencies(rfans_driver_generate_messages_cpp _rfans_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rfans_driver_gencpp)
add_dependencies(rfans_driver_gencpp rfans_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rfans_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rfans_driver
)
_generate_msg_eus(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rfans_driver
)
_generate_msg_eus(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rfans_driver
)

### Generating Services
_generate_srv_eus(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rfans_driver
)

### Generating Module File
_generate_module_eus(rfans_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rfans_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rfans_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rfans_driver_generate_messages rfans_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_eus _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_eus _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_eus _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv" NAME_WE)
add_dependencies(rfans_driver_generate_messages_eus _rfans_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rfans_driver_geneus)
add_dependencies(rfans_driver_geneus rfans_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rfans_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rfans_driver
)
_generate_msg_lisp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rfans_driver
)
_generate_msg_lisp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rfans_driver
)

### Generating Services
_generate_srv_lisp(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rfans_driver
)

### Generating Module File
_generate_module_lisp(rfans_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rfans_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rfans_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rfans_driver_generate_messages rfans_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_lisp _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_lisp _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_lisp _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv" NAME_WE)
add_dependencies(rfans_driver_generate_messages_lisp _rfans_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rfans_driver_genlisp)
add_dependencies(rfans_driver_genlisp rfans_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rfans_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rfans_driver
)
_generate_msg_nodejs(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rfans_driver
)
_generate_msg_nodejs(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rfans_driver
)

### Generating Services
_generate_srv_nodejs(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rfans_driver
)

### Generating Module File
_generate_module_nodejs(rfans_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rfans_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rfans_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rfans_driver_generate_messages rfans_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_nodejs _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_nodejs _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_nodejs _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv" NAME_WE)
add_dependencies(rfans_driver_generate_messages_nodejs _rfans_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rfans_driver_gennodejs)
add_dependencies(rfans_driver_gennodejs rfans_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rfans_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver
)
_generate_msg_py(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver
)
_generate_msg_py(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver
)

### Generating Services
_generate_srv_py(rfans_driver
  "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver
)

### Generating Module File
_generate_module_py(rfans_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rfans_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rfans_driver_generate_messages rfans_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansPacket.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_py _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/Packet.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_py _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/msg/RfansScan.msg" NAME_WE)
add_dependencies(rfans_driver_generate_messages_py _rfans_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illuminance_measurement_robot/ROS1_WS/src/rfans_driver/srv/RfansCommand.srv" NAME_WE)
add_dependencies(rfans_driver_generate_messages_py _rfans_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rfans_driver_genpy)
add_dependencies(rfans_driver_genpy rfans_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rfans_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rfans_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rfans_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rfans_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rfans_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rfans_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rfans_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rfans_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rfans_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rfans_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rfans_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rfans_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rfans_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rfans_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rfans_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
