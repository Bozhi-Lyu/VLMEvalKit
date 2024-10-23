#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh

conda activate VLMEval

pip install -e . -q

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True


python3 run.py --data MMBench_DEV_EN MME MMStar POPE HallusionBench RealWorldQA --model Qwen2-VL-2B-Instruct
python3 run.py --data MMBench_DEV_EN MME MMStar POPE HallusionBench RealWorldQA --model Qwen2-VL-7B-Instruct

# python3 run.py --data MMBench_DEV_EN MME MMStar POPE HallusionBench RealWorldQA --model Qwen2-VL-2B-Instruct-AWQ
# python3 run.py --data MMBench_DEV_EN MME MMStar POPE HallusionBench RealWorldQA --model Qwen2-VL-7B-Instruct-AWQ

# python3 run.py --data MMBench_DEV_EN MME MMStar POPE --model Phi-3-Vision
# python3 run.py --data MMBench_DEV_EN MME MMStar POPE --model llava_next_llama3
# python3 run.py --data MMBench_DEV_EN MME --model MiniCPM-V-2_6 --verbose # OOM Error