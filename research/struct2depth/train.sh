#!/bin/bash

ckpt_dir="/home/mike/apps/models/research/struct2depth/training_out" # checkpoing
data_dir="/home/mike/apps/models/research/struct2depth/training_in" # Set for Cityscapes
# data_dir="/home/mike/apps/models/research/struct2depth/out_dir" # Set for Cityscapes
# imagenet_ckpt="/home/mike/apps/models/research/struct2depth/ckpt/model-199160"
# imagenet_ckpt="/home/mike/apps/models/research/struct2depth/paper_ckpt/model-199160"

python train.py \
  --logtostderr \
  --checkpoint_dir $ckpt_dir \
  --data_dir $data_dir # \
  # --architecture resnet \
  # --imagenet_norm true \
  # --imagenet_ckpt $imagenet_ckpt \
  # --joint_encoder false

# structure of training_in directory is like below
# tree training_in
# training_in/
# ├── test_02
# │   ├── 0000000001_cam.txt
# │   └── 0000000001.png
# └── train.txt

