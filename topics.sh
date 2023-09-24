#! /bin/bash

gnome-terminal -- ros2 run turtlesim turtlesim_node
gnome-terminal -- ros2 run turtlesim turtle_teleop_key
rqt_graph &
gnome-terminal -- ros2 topic echo /turtle1/cmd_vel
ros2 topic list 
ros2 topic list -t
ros2 topic info /turtle1/cmd_vel
ros2 interface show geometry_msgs/msg/Twist
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.8}}"
gnome-terminal -- ros2 topic pub --rate 1 /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.8}}" &
gnome-terminal -- ros2 topic echo /turtle1/pose
ros2 topic hz /turtle1/pose
