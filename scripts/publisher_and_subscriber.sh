#! /bin/bash

cd ~/Smart-Mobility-Engineering-Lab/ros2_ws
cd src
ros2 pkg create --build-type ament_python py_pubsub
cd py_pubsub/py_pubsub/
wget https://raw.githubusercontent.com/ros2/examples/humble/rclpy/topics/minimal_publisher/examples_rclpy_minimal_publisher/publisher_member_function.py
ls
gedit publisher_member_function.py
cd ..
nano package.xml 
nano setup.py 
nano setup.cfg 
cd py_pubsub/
wget https://raw.githubusercontent.com/ros2/examples/humble/rclpy/topics/minimal_subscriber/examples_rclpy_minimal_subscriber/subscriber_member_function.py
ls
gedit publisher_member_function.py
cd ..
nano setup.py
cd ~/Smart-Mobility-Engineering-Lab/ros2_ws
rosdep install -i --from-path src --rosdistro humble -y
sudo apt install python3-pip
pip install setuptools==58.2.0
colcon build --packages-select py_pubsub
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/local_setup.bash; ros2 run py_pubsub talker; exec bash"
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/local_setup.bash; ros2 run py_pubsub listener; exec bash"
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/setup.bash; ros2 run py_srvcli service; exec bash"
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/setup.bash; ros2 run py_srvcli client 2 3 1; exec bash"
