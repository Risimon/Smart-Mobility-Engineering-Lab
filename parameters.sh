#! /bin/bash

gnome-terminal -- ros2 run turtlesim turtlesim_node
gnome-terminal -- ros2 ros2 run turtlesim turtlesim_node
ros2 param list
ros2 param get /turtlesim background_g
ros2 param set /turtlesim background_r 150
ros2 param dump /turtlesim > turtlesim.yaml
ros2 param load /turtlesim turtlesim.yaml
ros2 run turtlesim turtlesim_node --ros-args --params-file turtlesim.yaml
