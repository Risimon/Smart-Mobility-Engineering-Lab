#! /bin/bash

mkdir -p ros2_ws/src
cd ros2_ws/src
git clone https://github.com/ros/ros_tutorials.git -b humble
cd ..
cd ..
sudo apt install python3-rosdep2
rosdep update
rosdep install --from-paths src --ignore-src -y --skip-keys "fastcdr rti-connext-dds-6.0.1 urdfdom_headers"
colcon build
ls
cd build
ls
cd turtlesim/
ls
turtlesim_node
cd ..
cd src/
ros2 pkg create --build-type ament_python py_pubsub
cd py_pubsub/py_pubsub/
wget https://raw.githubusercontent.com/ros2/examples/humble/rclpy/topics/minimal_publisher/examples_rclpy_minimal_publisher/publisher_member_function.py
cd ..
nano package.xml 
nano setup.py 
nano setup.cfg 
cd py_pubsub/
wget https://raw.githubusercontent.com/ros2/examples/humble/rclpy/topics/minimal_subscriber/examples_rclpy_minimal_subscriber/subscriber_member_function.py
ls
cd ..
nano setup.py
rosdep install -i --from-path src --rosdistro humble -y
cd ..
rosdep install -i --from-path src --rosdistro humble -y
colcon build --packages-select py_pubsub
pythoon
python
python3
pip install setuptools==58.2.0
sudo apt install python3-pip
pip install setuptools==58.2.0
colcon build --packages-select py_pubsub

