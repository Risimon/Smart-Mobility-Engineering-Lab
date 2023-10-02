#! /bin/bash

ros2 pkg create --build-type ament_python py_srvcli --dependencies rclpy example_interfaces
ls
cd py_srvcli/
ls
nano package.xml 
nano setup.py 
cd py_srvcli/
touch service_member_function.py
touch service_member_function.py 
nano service_member_function.py 
cd ..
cd ..
nano setup.py 
cd ..
colcon build --packages-select py_srvcli
