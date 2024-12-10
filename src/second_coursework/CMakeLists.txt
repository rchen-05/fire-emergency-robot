cmake_minimum_required(VERSION 3.0.2)
project(second_coursework)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  actionlib
  geometry_msgs
  rospy
  smach
  std_msgs
  visualization_msgs
  message_generation
)

## Declare ROS messages, services, and actions
add_message_files(
  FILES
  Emergency.msg
  YOLODetection.msg
)

add_action_files(
  DIRECTORY action
  FILES
  Patrol.action
)

add_service_files(
  FILES
  YOLOLastFrame.srv
)



generate_messages(
  DEPENDENCIES
  actionlib_msgs
  std_msgs
  geometry_msgs
)

## Catkin-specific configuration
catkin_package(
  CATKIN_DEPENDS message_runtime
  CATKIN_DEPENDS actionlib_msgs
  
)

## Specify additional locations of header files
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Install Python scripts
catkin_install_python(PROGRAMS
  scripts/emergency_subscriber.py  # Add your Python script here
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

## Install launch files
install(FILES
  launch/itr_cw.launch  # Add your launch file here
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
