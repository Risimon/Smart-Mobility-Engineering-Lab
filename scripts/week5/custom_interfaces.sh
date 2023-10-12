#! /bin/bash

cd Smart-Mobility-Engineering-Lab/ros2_ws/src/
ros2 pkg create --build-type ament_cmake more_interfaces
mkdir more_interfaces/msg
printf "uint8 PHONE_TYPE_HOME=0\nuint8 PHONE_TYPE_WORK=1\nuint8 PHONE_TYPE_MOBILE=2\n\nstring first_name\nstring last_name\nstring phone_number\nuint8 phone_type" >> more_interfaces/msg/AddressBook.msg
nano more_interfaces/package.xml 
nano more_interfaces/CMakeLists.txt 
nano more_interfaces/src/publish_address_book.cpp
nano more_interfaces/CMakeLists.txt 
cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/
colcon build --packages-up-to more_interfaces
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/local_setup.bash; ros2 run more_interfaces publish_address_book; exec bash"
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/setup.bash; ros2 topic echo /address_book; exec bash"
