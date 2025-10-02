#!/bin/bash

# running
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_code_critique.yaml ar_11_1e-6_code_critique 8 4

# to be run
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_aops_mix_code_high.yaml ar_11_1e-6_aops_mix_code_high 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_aops_mix_code_medium.yaml ar_11_1e-6_aops_mix_code_medium 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_aops_mix_code_low.yaml ar_11_1e-6_aops_mix_code_low 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_so_mix_code_high.yaml ar_11_1e-6_so_mix_code_high 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_so_mix_code_medium.yaml ar_11_1e-6_so_mix_code_medium 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-6_so_mix_code_low.yaml ar_11_1e-6_so_mix_code_low 8 4
bash commands/submit_sft_config.sh examples/configs/acereason11_ablation/1e-7_so_mix_code_high.yaml ar_11_1e-7_so_mix_code_high 8 4