#! /bin/bash

cd ~/Smart-Mobility-Engineering-Lab/ros2_ws
cd src
ros2 pkg create --build-type ament_python py_srvcli --dependencies rclpy example_interfaces
cd py_srvcli/py_srvcli/
ls
touch service_member_function.py
nano service_member_function.py
cd ..
nano package.xml 
nano setup.py 
nano setup.cfg 
cd py_srvcli/
ls
touch client_member_function.py
nano client_member_function.py
cd ..
nano setup.py
cd ~/Smart-Mobility-Engineering-Lab/ros2_ws
rosdep install -i --from-path src --rosdistro humble -y
sudo apt install python3-pip
pip install setuptools==58.2.0
colcon build --packages-select py_srvcli
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/setup.bash; ros2 run py_srvcli service; exec bash"
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/setup.bash; ros2 run py_srvcli client 2 3; exec bash"
