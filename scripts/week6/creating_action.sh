#! /bin/bash

cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/src
ros2 pkg create action_tutorials_interfaces
cd action_tutorials_interfaces
mkdir action
printf "int32 order\n---\nint32[] sequence\n---\nint32[] partial_sequence" >> action/Fibonacci.action
nano CMakeLists.txt 
nano package.xml 
cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/
colcon build
# Source our workspace
# On Windows: call install/setup.bat
. install/setup.bash
# Check that our action definition exists
ros2 interface show action_tutorials_interfaces/action/Fibonacci
