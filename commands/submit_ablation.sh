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


# running 
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/3e-5_apos_max_32k_mix_code_high.yaml ar_11_1e-6_code_critique 8 4

# to be run

bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/3e-5_apos_max_32k_mix_code_only_high.yaml ar_11_3e-5_apos_high_32k_t1-inf.yaml 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/3e-5_apos_max_32k_mix_code_1-5_high.yaml ar_11_3e-5_apos_high_32k_t1-5.yaml 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/3e-5_apos_max_32k_mix_code_1-10_high.yaml ar_11_3e-5_apos_high_32k_t1-10.yaml 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/3e-5_apos_max_32k_mix_code_1-15_high.yaml ar_11_3e-5_apos_high_32k_t1-15.yaml 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/3e-5_apos_max_32k_mix_code_1-5_high_hybrid_tool.yaml ar_11_3e-5_apos_high_32k_t1-inf-hybrid.yaml 8 4