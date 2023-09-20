#! /bin/bash

sudo apt update

sudo apt install ros-humble-turtlesim
sudo apt install ~nros-humble-rqt*

ros2 pkg executables turtlesim

gnome-terminal -- ros2 run turtlesim turtle_teleop_key
gnome-terminal -- ros2 run turtlesim turtle_teleop_key --ros-args --remap turtle1/cmd_vel:=turtle2/cmd_vel

ros2 run turtlesim turtlesim_node & rqt && fg

ros2 node list
ros2 topic list
ros2 service list
ros2 action list


