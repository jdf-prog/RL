uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b \
    --megatron-path results/sft_acetoolreason/step_2388/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason-nemotron_7b_sft_with_code_2388_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b \
    --megatron-path results/sft_acetoolreason_mix/step_4813/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason-nemotron_7b_sft_mix_with_code_4813_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_acetoolreason_11_1e-5/step_1750/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason-nemotron_11_7b_sft_with_code_1750_step_1e-5

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b \
    --megatron-path results/sft_acetoolreason_with_code_1e-5/step_2388/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason-nemotron_7b_sft_with_code_2388_step_1e-5


uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_acetoolreason_11_1e-5/step_2250/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason-nemotron_11_7b_sft_with_code_2250_step_1e-5

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_acetoolreason_11_1e-5_v2/step_2750/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason-nemotron_11_7b_v2_sft_with_code_2750_step_1e-5

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/zihan_sft_8b_think_v2 \
    --megatron-path results/acetool_zihan_sft_8b_think_v2/step_2000/policy/weights/iter_0000000 \
    --hf-path models/acetool_zihan_nemotron_8b_think_v2_sft_2000_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/qwen3_8b \
    --megatron-path results/sft_acetool_qwen3_megatron/step_2000/policy/weights/iter_0000000 \
    --hf-path models/qwen3_8b_acetool_sft_2000_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/zihan_sft_8b_think_v2 \
    --megatron-path results/acetool_zihan_sft_8b_think_v2_lr1e-6/step_3000/policy/weights/iter_0000000 \
    --hf-path models/zihan_sft_8b_think_v2_lr1e-6_sft_3000_step


# ablation models
uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_ar_11_1e-6_apos_code_low/step_3043/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason_sft_ar_11_1e-6_apos_code_low_3043_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_ar_11_1e-6_apos_code_medium/step_3278/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason_sft_ar_11_1e-6_apos_code_medium_3278_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_ar_11_1e-6_so_code_high/step_8000/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason_sft_ar_11_1e-6_so_code_high_8000_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_ar_11_1e-6_so_code_low/step_9444/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason_sft_ar_11_1e-6_so_code_low_9444_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_ar_11_1e-6_so_code_medium/step_9659/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason_sft_ar_11_1e-6_so_code_medium_9659_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_ar_11_1e-7_so_code_high/step_6000/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason_sft_ar_11_1e-7_so_code_high_6000_step

uv run 3rdparty/Megatron-Bridge-workspace/Megatron-Bridge/examples/models/checkpoint_conversion.py export \
    --hf-model models/acereason_nemotron_7b_1_1 \
    --megatron-path results/sft_ar_11_1e-6_code_critique/step_3000/policy/weights/iter_0000000 \
    --hf-path models/acetoolreason_sft_ar_11_1e-6_code_critique_3000_step