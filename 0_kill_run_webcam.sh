#!/bin/sh
ps -ef | grep 'sudo python3' | awk '{print $2}' > ./temp/KILL_ID
kill_tfpose_id=`head -1 ./temp/KILL_ID`
sudo kill $kill_tfpose_id
ps -ef | grep 'run_pose.bin' | awk '{print $2}' > ./temp/KILL_ID
kill_openpose_id=`head -1 ./temp/KILL_ID`
sudo kill $kill_openpose_id
ps -ef | grep 'terminal' | awk '{print $2}' > ./temp/TERMINAL_ID
kill_terminal_id=`head -1 ./temp/TERMINAL_ID`
sudo kill $kill_terminal_id




