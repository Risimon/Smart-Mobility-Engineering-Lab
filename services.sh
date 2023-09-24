#! /bin/bash

gnome-terminal -- ros2 run turtlesim turtlesim_node
gnome-terminal -- ros2 run turtlesim turtle_teleop_key
ros2 service list -t 
ros2 service type /clear
ros2 service find std_srvs/srv/Empty
ros2 interface show std_srvs/srv/Empty
ros2 interface show turtlesim/srv/Spawn
ros2 service call /clear std_srvs/srv/Empty
ros2 service call /spawn turtlesim/srv/Spawn "{x: 2, y: 2, theta: 0.2, name: ''}"

