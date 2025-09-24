# cd /workspace/lustre/Workspace/RL

# pwd
# ls -l
# source .venv/bin/activate
# which python
# export WANDB_RESUME="must"
export WANDB_RUN_ID="46lkc86a"
export PATH="/lustre/fsw/portfolios/llmservice/users/dongfuj:$PATH"
which uv
echo $PATH
ray status


uv run examples/run_sft.py --config=examples/configs/sft_acetoolreason_megatron.yaml

uv run examples/run_sft.py --config=examples/configs/sft_acetoolreason_mix_megatron.yaml

uv run examples/run_sft.py --config=examples/configs/sft_acetoolreason_zihan_sft.yaml



uv run examples/run_sft.py --config=examples/configs/sft_acetool_qwen3_megatron.yaml

uv run examples/run_sft.py --config=examples/configs/sft_acetoolreason11_megatron.yaml
