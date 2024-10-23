#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh

conda activate VLMEval

pip install -e . -q

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

# python3 run.py --data MMBench_DEV_EN MME MMStar POPE --model VILA1.5-3b --verbose
python3 run.py --data BLINK HallusionBench MME MMStar POPE RealWorldQA MMBench_DEV_EN  --model Phi-3-Vision
