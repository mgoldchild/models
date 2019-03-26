#!bin/bash
input_dir="/home/mike/apps/models/research/struct2depth/in"
output_dir="/home/mike/apps/models/research/struct2depth/out"
model_checkpoint="/home/mike/apps/models/research/struct2depth/ckpt/model-199160"

LANG=en_US.UTF-8 python inference.py \
    --logtostderr \
    --file_extension png \
    --depth \
    --egomotion true \
    --input_dir $input_dir \
    --output_dir $output_dir \
    --model_ckpt $model_checkpoint
