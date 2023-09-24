#! /bin/bash

gnome-terminal -- ros2 run turtlesim turtlesim_node
ros2 node list
gnome-terminal -- ros2 run turtlesim turtle_teleop_key
ros2 node lsit
gnome-terminal -- ros2 run turtlesim turtlesim_node --ros-args --remap __node:=my_turtle
ros2 node list
ros2 node info /my_turtle
ros2 node info /teleop_turtle
