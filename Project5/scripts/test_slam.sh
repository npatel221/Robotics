#!/bin/sh

# launch turtlebot_world.launch to deploy the turtlebot in the gazebo environment
xterm -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/../map/minimap.world" &
sleep 5

# launch gmapping_demo.launch to perform SLAM
xterm -e  " roslaunch turtlebot_gazebo gmapping_demo.launch " &
sleep 5

# launch view_navigation.launch to observe the map in rviz
xterm -e  " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5

# launch keyboard_teleop.launch to manually control the robot with keyboard commands
xterm -e  " roslaunch turtlebot_teleop keyboard_teleop.launch " 