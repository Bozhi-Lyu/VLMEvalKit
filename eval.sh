#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh

conda activate VLMEval

pip install -e . -q

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

python3 run.py --data MMBench_DEV_EN MME MMStar POPE --model VILA1.5-3b --verbose

python3 run.py --data MMBench_DEV_EN MME MMStar POPE --model llava_next_llama3 --verbose
# python3 run.py --data MMBench_DEV_EN MME --model MiniCPM-V-2_6 --verbose # OOM Error