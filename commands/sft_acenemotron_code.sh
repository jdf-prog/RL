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

uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-6_code_critique.yaml > logs/ar_11_1e-6_code_critique.out 2>&1 &
uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-6_aops_mix_code_high.yaml > logs/ar_11_1e-6_aops_mix_code_high.out 2>&1 &
uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-6_aops_mix_code_medium.yaml > logs/ar_11_1e-6_aops_mix_code_medium.out 2>&1 &
uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-6_aops_mix_code_low.yaml > logs/ar_11_1e-6_aops_mix_code_low.out 2>&1 &
uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-6_so_mix_code_high.yaml > logs/ar_11_1e-6_so_mix_code_high.out 2>&1 &
uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-6_so_mix_code_medium.yaml > logs/ar_11_1e-6_so_mix_code_medium.out 2>&1 &
uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-6_so_mix_code_low.yaml > logs/ar_11_1e-6_so_mix_code_low.out 2>&1 &
uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/1e-7_so_mix_code_high.yaml > logs/ar_11_1e-7_so_mix_code_high.out 2>&1 &

uv run examples/run_sft.py --config=examples/configs/acereason11_ablation/6e-6_apos_max_32k_mix_code_1-inf_high_hybrid_tool.yaml > logs/ar_11_6e-6_apos_max_32k_mix_code_1-inf_high_hybrid_tool.out 2>&1 &

uv run examples/run_sft.py --config=examples/configs/zihan_8b_sft/acereason_sft_9e-6_mix_v1.yaml > logs/sft_zihan_8b_sft_9e-6_mix_v1.out 2>&1 &

uv run examples/run_sft.py --config=examples/configs/wenliang_8b_sft/mix_v1_9e-6.yaml > logs/sft_wenliang_8b_hybrid_9e-6_tool_mix_v1.out 2>&1 &

uv run examples/run_sft.py --config=examples/configs/wenliang_8b_sft/mix_v2_9e-6.yaml > logs/sft_wenliang_8b_hybrid_9e-6_tool_mix_v2.out 2>&1 &


# zihan multi-turn debug
# check
uv run examples/run_sft.py --config=examples/configs/zihan_multi_turn_debug/sft.yaml > logs/sft_zihan_multi_turn_debug.out 2>&1 &

uv run examples/run_sft.py --config=examples/configs/wenliang_8b_sft/mix_v1_1_2e-5.yaml > logs/sft_wenliang_8b_hybrid_2e-5_tool_mix_v1_1.out 2>&1 &

uv run examples/run_sft.py --config=examples/configs/wenliang_8b_sft/mix_v2.1_9e-6.yaml > logs/sft_wenliang_8b_hybrid_9e-6_tool_mix_v2.1.out 2>&1 &