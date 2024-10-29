#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh

conda activate VLMEvalEnv

pip install -e . -q

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

python3 run.py --data BLINK HallusionBench MME MMStar POPE RealWorldQA MMBench_DEV_EN  --model Phi-3-Vision
python3 run.py --data Q-Bench1_VAL Q-Bench1_TEST --model Phi-3-Vision