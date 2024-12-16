cmake_minimum_required(VERSION 3.0.2)
project(second_coursework)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  geometry_msgs
  rospy
  smach
  std_msgs
  visualization_msgs
  message_generation
)

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

catkin_package(
  CATKIN_DEPENDS message_runtime
  CATKIN_DEPENDS actionlib_msgs
  
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

