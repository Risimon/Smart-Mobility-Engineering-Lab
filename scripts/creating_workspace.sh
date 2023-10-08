#! /bin/bash

source /opt/ros/humble/setup.bash
mkdir -p ~/Smart-Mobility-Engineering-Lab/ros2_ws/src
cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/src
git clone https://github.com/ros/ros_tutorials.git -b humble
# cd if you're still in the ``src`` directory with the ``ros_tutorials`` clone
cd ..
rosdep install -i --from-path src --rosdistro humble -y
colcon build
ls
gnome-terminal -- bash -c "source /opt/ros/humble/setup.bash; cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/local_setup.bash; sed -i '52 s/TurtleSim/MyTurtleSim/' ~/Smart-Mobility-Engineering-Lab/ros2_ws/src/ros_tutorials/turtlesim/src/turtle_frame.cpp; ros2 run turtlesim turtlesim_node; exec bash"
#gnome-terminal -- bash -c "./~/Smart-Mobility-Engineering-Lab/scripts/source_overlay.sh; exec bash"
#gnome-terminal -x ~/Smart-Mobility-Engineering-Lab/scripts/source_overlay.sh 
cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/src
