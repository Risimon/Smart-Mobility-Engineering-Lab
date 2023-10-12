#! /bin/bash

cd ~/Smart-Mobility-Engineering-Lab/ros2_ws/src
nano ~/Smart-Mobility-Engineering-Lab/fibonacci_action_server.py
python3 ~/Smart-Mobility-Engineering-Lab/fibonacci_action_server.py
nano ~/Smart-Mobility-Engineering-Lab/fibonacci_action_server.py
python3 ~/Smart-Mobility-Engineering-Lab/fibonacci_action_server.py
nano ~/Smart-Mobility-Engineering-Lab/fibonacci_action_server.py
python3 ~/Smart-Mobility-Engineering-Lab/fibonacci_action_server.py
gnome-terminal -- bash -c "ros2 action send_goal --feedback fibonacci action_tutorials_interfaces/action/Fibonacci "{order: 5}"; python3 ~/Smart-Mobility-Engineering-Lab/fibonacci_action_client.py; nano ~/Smart-Mobility-Engineering-Lab/fibonacci_action_client.py; python3 ~/Smart-Mobility-Engineering-Lab/fibonacci_action_client.py; exec bash"
