#!/bin/bash
nginx

cd /home/illuminance_measurement_robot/ROS2_WS

source install/setup.bash

source /opt/ros/foxy/setup.bash

ros2 launch launch/robot.launch.py