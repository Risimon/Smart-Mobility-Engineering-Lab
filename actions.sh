#! /bin/bash

gnome-terminal -- ros2 run turtlesim turtlesim_node
gnome-terminal -- ros2 run turtlesim turtle_teleop_key
ros2 node info /turtlesim
ros2 node info /teleop_turtle
ros2 action list
ros2 action list -t
ros2 action info /turtle1/rotate_absolute
ros2 interface show turtlesim/action/RotateAbsolute
ros2 action send_goal /turtle1/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 1.57}"
ros2 action send_goal /turtle1/rotate_absolute turtlesim/action/RotateAbsolute "{theta: -1.57}" --feedback

