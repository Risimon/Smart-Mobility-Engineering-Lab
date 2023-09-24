#! /bin/bash

sudo apt install python3-colcon-common-extensions
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
git clone https://github.com/ros2/examples src/examples -b humble
colcon build --symlink-install
colcon test
source install/setup.bash
gnome-terminal -- ros2 run examples_rclcpp_minimal_subscriber subscriber_member_function
gnome-terminal -- ros2 run examples_rclcpp_minimal_publisher publisher_member_function
echo "source /usr/share/colcon_cd/function/colcon_cd.sh" >> ~/.bashrc
echo "export _colcon_cd_root=/opt/ros/humble/" >> ~/.bashrc
echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc
