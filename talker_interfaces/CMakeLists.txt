cmake_minimum_required(VERSION 3.8)
project(talker_interfaces)

find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "srv/SpeakText.srv"
)

ament_package()
