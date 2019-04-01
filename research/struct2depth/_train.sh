#!/bin/bash

ckpt_dir="/home/mike/apps/models/research/struct2depth/trained_ckpt"
data_dir="/home/mike/apps/models/research/struct2depth/data_for_training/" # Set for Cityscapes
# data_dir="/home/mike/apps/models/research/struct2depth/out_dir" # Set for Cityscapes
# imagenet_ckpt="/home/mike/apps/models/research/struct2depth/ckpt/model-199160"
imagenet_ckpt="/home/mike/apps/models/research/struct2depth/ckpt/model-199160"

python train.py \
  --logtostderr \
  --checkpoint_dir $ckpt_dir \
  --data_dir $data_dir \
  --architecture resnet \
  --imagenet_ckpt $imagenet_ckpt \
  --imagenet_norm true \
  # --joint_encoder false

