#!/bin/bash
sleep 1
PROJECT_DIR="/home/vla/haoyanan/vla/openpi"
CONFIG="pi05_libero_lora"
EXP_NAME="libero_pi05_lora_0115"
echo ">>> 正在进入项目目录: $PROJECT_DIR"
cd "$PROJECT_DIR"
echo "H Training script for OpenPI Pi05 LoRA"
echo "Config: $CONFIG"
echo "Experiment name: $EXP_NAME"
export WANDB_API_KEY=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
export HF_ENDPOINT=https://hf-mirror.com
export CUDA_VISIBLE_DEVICES=0,1
uv run scripts/compute_norm_stats.py --config-name $CONFIG
XLA_PYTHON_CLIENT_MEM_FRACTION=0.95 uv run scripts/train.py $CONFIG --exp-name=$EXP_NAME --overwrite