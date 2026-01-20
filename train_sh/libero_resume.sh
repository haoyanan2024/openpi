# 设置环境变量 (参考自你的 libero.sh)
export WANDB_API_KEY=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
export HF_ENDPOINT=https://hf-mirror.com
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export XLA_PYTHON_CLIENT_MEM_FRACTION=0.95

# 执行恢复训练命令
# 注意：这里去掉了 --overwrite，加上了 --resume
uv run scripts/train.py pi05_libero --exp-name=libero_pi05_0116 --resume