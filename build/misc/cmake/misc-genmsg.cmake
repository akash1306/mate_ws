# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "misc: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imisc:/home/akash/mate_ws/src/misc/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(misc_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akash/mate_ws/src/misc/msg/floatarray.msg" NAME_WE)
add_custom_target(_misc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "misc" "/home/akash/mate_ws/src/misc/msg/floatarray.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(misc
  "/home/akash/mate_ws/src/misc/msg/floatarray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/misc
)

### Generating Services

### Generating Module File
_generate_module_cpp(misc
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/misc
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(misc_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(misc_generate_messages misc_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akash/mate_ws/src/misc/msg/floatarray.msg" NAME_WE)
add_dependencies(misc_generate_messages_cpp _misc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(misc_gencpp)
add_dependencies(misc_gencpp misc_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS misc_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(misc
  "/home/akash/mate_ws/src/misc/msg/floatarray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/misc
)

### Generating Services

### Generating Module File
_generate_module_eus(misc
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/misc
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(misc_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(misc_generate_messages misc_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akash/mate_ws/src/misc/msg/floatarray.msg" NAME_WE)
add_dependencies(misc_generate_messages_eus _misc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(misc_geneus)
add_dependencies(misc_geneus misc_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS misc_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(misc
  "/home/akash/mate_ws/src/misc/msg/floatarray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/misc
)

### Generating Services

### Generating Module File
_generate_module_lisp(misc
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/misc
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(misc_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(misc_generate_messages misc_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akash/mate_ws/src/misc/msg/floatarray.msg" NAME_WE)
add_dependencies(misc_generate_messages_lisp _misc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(misc_genlisp)
add_dependencies(misc_genlisp misc_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS misc_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(misc
  "/home/akash/mate_ws/src/misc/msg/floatarray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/misc
)

### Generating Services

### Generating Module File
_generate_module_nodejs(misc
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/misc
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(misc_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(misc_generate_messages misc_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akash/mate_ws/src/misc/msg/floatarray.msg" NAME_WE)
add_dependencies(misc_generate_messages_nodejs _misc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(misc_gennodejs)
add_dependencies(misc_gennodejs misc_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS misc_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(misc
  "/home/akash/mate_ws/src/misc/msg/floatarray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/misc
)

### Generating Services

### Generating Module File
_generate_module_py(misc
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/misc
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(misc_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(misc_generate_messages misc_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akash/mate_ws/src/misc/msg/floatarray.msg" NAME_WE)
add_dependencies(misc_generate_messages_py _misc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(misc_genpy)
add_dependencies(misc_genpy misc_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS misc_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/misc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/misc
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(misc_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(misc_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/misc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/misc
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(misc_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(misc_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/misc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/misc
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(misc_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(misc_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/misc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/misc
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(misc_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(misc_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/misc)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/misc\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/misc
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(misc_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(misc_generate_messages_py std_msgs_generate_messages_py)
endif()
