#!/bin/bash
# Trained weights: resnet18_laneatt_culane_20220225.pt
# Training
python -m torch.distributed.launch --nproc_per_node=2 --use_env main_landet.py --train --config=configs/lane_detection/laneatt/resnet18_culane.py
# Predicting lane points for testing
python main_landet.py --test --config=configs/lane_detection/laneatt/resnet18_culane.py
# Testing with official scripts
./autotest_culane.sh resnet18_laneatt_culane test checkpoints
