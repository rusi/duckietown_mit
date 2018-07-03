#!/bin/bash

IP=$(ifconfig wlan0 | grep "inet " | awk -F'[: ]+' '{ print $4 }')
source /home/software/environment.sh
export DUCKIEFLEET_ROOT=/data/config
export ROS_MASTER_URI=http://${IP}:11311/
export ROS_IP=${IP}
export VEHICLE_NAME=$HOSTNAME
cat misc/duckie.art

/home/software/docker/init_config_defaults.sh
