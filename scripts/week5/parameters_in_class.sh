#! /bin/bash

cd Smart-Mobility-Engineering-Lab/ros2_ws/src/
ros2 pkg create --build-type ament_python python_parameters --dependencies rclpy
nano python_parameters/package.xml 
nano python_parameters/python_parameters/python_parameters_node.py
nano python_parameters/setup.py 
cd ..
rosdep install -i --from-path src --rosdistro humble -y
colcon build --packages-select python_parameters
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/setup.bash; ros2 run python_parameters minimal_param_node; exec bash"
ros2 run python_parameters minimal_param_node
ros2 param list
ros2 param set /minimal_param_node my_parameter earth
mkdir src/python_parameters/launch
nano src/python_parameters/launch/python_parameters_launch.py
nano src/python_parameters/setup.py 
colcon build --packages-select python_parameters
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/setup.bash; ros2 launch python_parameters python_parameters_launch.py; exec bash"
