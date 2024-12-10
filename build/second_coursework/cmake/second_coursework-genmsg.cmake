# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "second_coursework: 9 messages, 1 services")

set(MSG_I_FLAGS "-Isecond_coursework:/home/k23020720/catkin_ws/src/second_coursework/msg;-Isecond_coursework:/home/k23020720/catkin_ws/devel/share/second_coursework/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(second_coursework_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg" ""
)

get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg" ""
)

get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg" "second_coursework/PatrolActionResult:second_coursework/PatrolActionGoal:geometry_msgs/Point:actionlib_msgs/GoalStatus:geometry_msgs/Pose:geometry_msgs/Quaternion:second_coursework/PatrolFeedback:second_coursework/PatrolResult:second_coursework/PatrolActionFeedback:second_coursework/PatrolGoal:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg" "actionlib_msgs/GoalID:second_coursework/PatrolGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg" "geometry_msgs/Point:actionlib_msgs/GoalStatus:geometry_msgs/Pose:geometry_msgs/Quaternion:second_coursework/PatrolResult:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg" "geometry_msgs/Point:actionlib_msgs/GoalStatus:geometry_msgs/Pose:geometry_msgs/Quaternion:second_coursework/PatrolFeedback:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg" ""
)

get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv" NAME_WE)
add_custom_target(_second_coursework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework" "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv" "second_coursework/YOLODetection"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)
_generate_msg_cpp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)

### Generating Services
_generate_srv_cpp(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
)

### Generating Module File
_generate_module_cpp(second_coursework
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(second_coursework_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(second_coursework_generate_messages second_coursework_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv" NAME_WE)
add_dependencies(second_coursework_generate_messages_cpp _second_coursework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_gencpp)
add_dependencies(second_coursework_gencpp second_coursework_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)
_generate_msg_eus(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)

### Generating Services
_generate_srv_eus(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
)

### Generating Module File
_generate_module_eus(second_coursework
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(second_coursework_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(second_coursework_generate_messages second_coursework_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv" NAME_WE)
add_dependencies(second_coursework_generate_messages_eus _second_coursework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_geneus)
add_dependencies(second_coursework_geneus second_coursework_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)
_generate_msg_lisp(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)

### Generating Services
_generate_srv_lisp(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
)

### Generating Module File
_generate_module_lisp(second_coursework
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(second_coursework_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(second_coursework_generate_messages second_coursework_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv" NAME_WE)
add_dependencies(second_coursework_generate_messages_lisp _second_coursework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_genlisp)
add_dependencies(second_coursework_genlisp second_coursework_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)
_generate_msg_nodejs(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)

### Generating Services
_generate_srv_nodejs(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
)

### Generating Module File
_generate_module_nodejs(second_coursework
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(second_coursework_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(second_coursework_generate_messages second_coursework_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv" NAME_WE)
add_dependencies(second_coursework_generate_messages_nodejs _second_coursework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_gennodejs)
add_dependencies(second_coursework_gennodejs second_coursework_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)
_generate_msg_py(second_coursework
  "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)

### Generating Services
_generate_srv_py(second_coursework
  "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv"
  "${MSG_I_FLAGS}"
  "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
)

### Generating Module File
_generate_module_py(second_coursework
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(second_coursework_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(second_coursework_generate_messages second_coursework_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/Emergency.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/msg/YOLODetection.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolAction.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolActionFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolGoal.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolResult.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/devel/share/second_coursework/msg/PatrolFeedback.msg" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k23020720/catkin_ws/src/second_coursework/srv/YOLOLastFrame.srv" NAME_WE)
add_dependencies(second_coursework_generate_messages_py _second_coursework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_genpy)
add_dependencies(second_coursework_genpy second_coursework_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(second_coursework_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(second_coursework_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(second_coursework_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(second_coursework_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(second_coursework_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(second_coursework_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(second_coursework_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(second_coursework_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(second_coursework_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(second_coursework_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(second_coursework_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(second_coursework_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(second_coursework_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(second_coursework_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(second_coursework_generate_messages_py geometry_msgs_generate_messages_py)
endif()
