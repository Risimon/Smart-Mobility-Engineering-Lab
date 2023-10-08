#! /bin/bash

cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/src
ros2 pkg create --build-type ament_cmake tutorial_interfaces
cd tutorial_interfaces/
mkdir msg srv
printf "int64 num" >> msg/Num.msg 
printf "geometry_msgs/Point center\nfloat64 radius" >> msg/Sphere.msg 
printf "int64 a\nint64 b\nint64 c\n---\nint64 sum" >> srv/AddThreeInts.srv  
nano CMakeLists.txt 
nano package.xml 
cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/
colcon build --packages-select tutorial_interfaces
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/local_setup.bash; ros2 interface show tutorial_interfaces/msg/Num; ros2 interface show tutorial_interfaces/msg/Sphere; ros2 interface show tutorial_interfaces/srv/AddThreeInts; exec bash"


nano /home/zheka/Smart-Mobility-Engineering-Lab/ros2_ws/src/py_pubsub/py_pubsub/publisher_member_function.py
nano /home/zheka/Smart-Mobility-Engineering-Lab/ros2_ws/src/py_pubsub/py_pubsub/subscriber_member_function.py
nano /home/zheka/Smart-Mobility-Engineering-Lab/ros2_ws/src/py_pubsub/package.xml
colcon build --packages-select py_pubsub
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/local_setup.bash; ros2 run py_pubsub talker; exec bash"
gnome-terminal -- bash -c "cd ~/Smart-Mobility-Engineering-Lab/ros2_ws; source install/local_setup.bash; ros2 run py_pubsub listener; exec bash"

nano /home/zheka/Smart-Mobility-Engineering-Lab/ros2_ws/src/py_srvcli/py_srvcli/service_member_function.py
nano /home/zheka/Smart-Mobility-Engineering-Lab/ros2_ws/src/py_srvcli/py_srvcli/client_member_function.py
nano /home/zheka/Smart-Mobility-Engineering-Lab/ros2_ws/src/py_srvcli/package.xml

