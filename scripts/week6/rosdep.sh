#! /bin/bash

cd ~/Smart-Mobility-Engineering-Lab/ros2_ws
sudo apt-get install python3-rosdep
sudo rosdep init
rosdep update
rosdep install --from-paths src -y --ignore-src
