#!/bin/sh
# webcam_old
cd ~/src/est/
sudo python3 ./run_webcam.py --model=mobilenet_v2_small --resize=320x176 --camera=0
