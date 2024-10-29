#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh

conda activate VLMEvalEnv

pip install -e . -q

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

# export PYTHONPATH=$PYTHONPATH:/home/bo/miniconda3/lib/python3.12/site-packages
# CUDA_VISIBLE_DEVICES=0,1 torchrun --nproc-per-node=2 run.py --data BLINK --model Qwen2-VL-2B-Instruct

# Finished:
# CUDA_VISIBLE_DEVICES=0,1 torchrun --nproc-per-node=2 run.py --data MME MMStar POPE RealWorldQA MMBench_DEV_EN --model Qwen2-VL-2B-Instruct

# Unfinished:
CUDA_VISIBLE_DEVICES=0,1 torchrun --nproc-per-node=2 run.py --data BLINK HallusionBench Q-Bench1_VAL Q-Bench1_TEST --model Qwen2-VL-2B-Instruct




# CUDA_VISIBLE_DEVICES=0,1 torchrun --nproc-per-node=2 run.py --data BLINK HallusionBench MME MMStar POPE RealWorldQA MMBench_DEV_EN Q-Bench1_VAL Q-Bench1_TEST --model Qwen2-VL-7B-Instruct


# python3 run.py --data MMBench_DEV_EN MME MMStar POPE --model Phi-3-Vision
# python3 run.py --data MMBench_DEV_EN MME MMStar POPE --model llava_next_llama3
# python3 run.py --data MMBench_DEV_EN MME --model MiniCPM-V-2_6 --verbose # OOM Error