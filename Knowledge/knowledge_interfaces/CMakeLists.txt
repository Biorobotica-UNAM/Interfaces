cmake_minimum_required(VERSION 3.8)
project(knowledge_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/LocationZone.msg"
  "msg/ObjectCategory.msg"
  "msg/RobotHand.msg"
  "msg/PersonType.msg"
  "msg/ObjectOwnership.msg"
  "msg/KnownLocation.msg"
  "msg/PhysicalDescription.msg"
  "msg/ManipulableObject.msg"
  "msg/Person.msg"
  "msg/Robot.msg"
  "srv/GetRobot.srv"
  "srv/GetObject.srv"
  "srv/GetObjectsByCategory.srv"
  "srv/GetPerson.srv"
  "srv/GetPersonWithPhoto.srv"
  "srv/GetPersonsByType.srv"
  "srv/GetPersonsByTypeWithPhoto.srv"
  "srv/GetKnownLocation.srv"
  "srv/GetAllKnownLocations.srv"
  "srv/GetKnownLocationsByZone.srv"
  "srv/SaveKnownLocation.srv"
  "srv/RegisterObject.srv"
  "srv/DeleteObject.srv"
  "srv/RegisterPerson.srv"
  "srv/DeletePerson.srv"
  "srv/SetObjectAtLocation.srv"
  "srv/SetObjectHeldByPerson.srv"
  "srv/SetObjectHeldByRobot.srv"
  "srv/ForgetObjectOwnership.srv"
  "srv/SetObjectNavigablePose.srv"
  "srv/SetObjectGraspPose.srv"
  "srv/SetRobotLocation.srv"
  "srv/SetPersonType.srv"
  "srv/SetPersonLocation.srv"
  "srv/SetPersonNavigablePose.srv"
  "srv/SetPersonDescription.srv"
  "srv/SetPersonPhoto.srv"
  "srv/SetPersonFavoriteDrink.srv"
  "srv/SetPersonOrder.srv"
  "srv/ResetRuntimeState.srv"
  DEPENDENCIES geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
