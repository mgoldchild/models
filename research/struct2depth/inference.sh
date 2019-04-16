#!bin/bash
input_dir="/home/mike/apps/models/research/struct2depth/inference_in"
output_dir="/home/mike/apps/models/research/struct2depth/inference_out"
# model_checkpoint="/home/mike/apps/models/research/struct2depth/paper_ckpt/model-199160"
# model_checkpoint="/home/mike/Downloads/model-96"
# model_checkpoint="/home/mike/Downloads/model-9968"
# model_checkpoint="/home/mike/Downloads/model-4424"
# model_checkpoint="/home/mike/Downloads/model-2264"
# model_checkpoint="/home/mike/apps/models/research/struct2depth/training_out/model-204"
# model_checkpoint="/home/mike/Downloads/model-570"
model_checkpoint="/home/mike/apps/models/research/struct2depth/training_out/model-95"

python inference.py \
    --logtostderr \
    --file_extension png \
    --depth \
    --egomotion true \
    --input_dir $input_dir \
    --output_dir $output_dir \
    --model_ckpt $model_checkpoint
