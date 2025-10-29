#!/bin/bash

# done
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_code_critique.yaml ar_11_1e-6_code_critique 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_aops_mix_code_high.yaml ar_11_1e-6_aops_mix_code_high 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_aops_mix_code_medium.yaml ar_11_1e-6_aops_mix_code_medium 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_aops_mix_code_low.yaml ar_11_1e-6_aops_mix_code_low 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_so_mix_code_high.yaml ar_11_1e-6_so_mix_code_high 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_so_mix_code_medium.yaml ar_11_1e-6_so_mix_code_medium 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_so_mix_code_low.yaml ar_11_1e-6_so_mix_code_low 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-7_so_mix_code_high.yaml ar_11_1e-7_so_mix_code_high 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_code_critique.yaml ar_11_1e-6_code_critique 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/3e-5_apos_max_32k_mix_code_high.yaml ar_11_3e-5_apos_high_32k 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/6e-6_apos_max_32k_mix_code_high.yaml ar_11_6e-6_apos_code_high_max_32k 8 4

# to eval
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/6e-6_apos_max_32k_mix_code_1-inf_high_hybrid_tool.yaml ar_11_6e-6_apos_high_32k_t1-inf-hybrid 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/6e-6_apos_max_32k_mix_code_1-5_high.yaml ar_11_6e-6_apos_high_32k_t1-5 8 4


# running 

# to be run
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/6e-6_apos_max_32k_mix_code_only_high.yaml ar_11_6e-6_apos_high_32k_t1-inf 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/6e-6_apos_max_32k_mix_code_1-10_high.yaml ar_11_6e-6_apos_high_32k_t1-10 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/6e-6_apos_max_32k_mix_code_1-15_high.yaml ar_11_6e-6_apos_high_32k_t1-15 8 4


# zihan 8b sft
# sft_zihan_8b_sft_9e-6_mix_v1 (running, 1.42M data)
bash commands/submit_sft_config.sh examples/configs/zihan_8b_sft/acereason_sft_9e-6_mix_v1.yaml sft_zihan_8b_sft_9e-6_mix_v1 8 4

# wenliang_8b_hybrid_9e-6_tool_mix_v1.1 (to be run, only code tir data, 140k)
bash commands/submit_sft_config.sh examples/configs/wenliang_8b_sft/mix_v1_1_2e-5.yaml sft_wenliang_8b_hybrid_2e-5_tool_mix_v1_1 8 4

# wenliang 8b sft
# wenliang_8b_hybrid_9e-6_tool_mix_v1 (to be run, 1.42M data)
bash commands/submit_sft_config.sh examples/configs/wenliang_8b_sft/mix_v1_9e-6.yaml sft_wenliang_8b_hybrid_9e-6_tool_mix_v1 8 2

# wenliang_8b_hybrid_9e-6_tool_mix_v2 (to be run, 1.42M data)
bash commands/submit_sft_config.sh examples/configs/wenliang_8b_sft/mix_v2_9e-6.yaml sft_wenliang_8b_hybrid_9e-6_tool_mix_v2 8 6

bash commands/submit_sft_config.sh examples/configs/wenliang_8b_sft/mix_v2.1_9e-6.yaml sft_wenliang_8b_hybrid_9e-6_tool_mix_v2.1 8 6