#! /bin/bash

#Install the turtlesim package for ROS 2 distro
sudo apt update
sudo apt install ros-humble-turtlesim

#install rqt and its plugins
sudo apt install ~nros-humble-rqt*

#Check that the package is installed:
ros2 pkg executables turtlesim

#run a new node to control the turtle in the first node
gnome-terminal -- ros2 run turtlesim turtle_teleop_key

#You need a second teleop node in order to control turtle2. However, if you try to run the same command as before, you will notice that this one also controls turtle1. The way to change this behavior is by remapping the cmd_vel topic.
gnome-terminal -- ros2 run turtlesim turtle_teleop_key --ros-args --remap turtle1/cmd_vel:=turtle2/cmd_vel

#To start turtlesim and To run rqt, enter the following command in your terminal
ros2 run turtlesim turtlesim_node & rqt && fg

#You can see the nodes, and their associated topics, services, and actions, using the list subcommands of the respective commands:
ros2 node list
ros2 topic list
ros2 service list
ros2 action list
