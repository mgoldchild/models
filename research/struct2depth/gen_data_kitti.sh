#!bin/bash

# NOTE:
# - need to update global variables in gen_data_kitti.py in order to specify data directory.
# - directory structure is like below
# $ tree ./preprocessing_in/
# preprocessing_in/
# └── hoge
#     ├── calib_cam_to_cam.txt
#     └── test
#         ├── image_02
#         │   ├── data
#         │   │   ├── 0000000000.png
#         │   │   ├── 0000000001.png

python gen_data_kitti.py
