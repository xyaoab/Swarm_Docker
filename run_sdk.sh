#!/usr/bin/env bash
echo "docker start sdk"
taskset -c 1-3 roslaunch dji_sdk sdk.launch &> $LOG_PATH/log_sdk.txt &
echo "DJISDK:"$! >> $PID_FILE
#sleep 5