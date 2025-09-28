#!/bin/bash

# Define my_srun variable with sequential job submission
nodes=${1:-2}
num_submits=${2:-1}
dep_jid=$3

echo "Using $nodes nodes for submission"
echo "Submitting $num_submits sequential jobs"

COMMON_ARGS="--parsable --nodes=$nodes --gpus-per-node=8 --account=llmservice_fm_post --job-name=nemozihansft8b --partition=batch --time=240 --cpus-per-task=128 --mem=0 --output=logs/nemozihansft8b_%j/%a.out --error=logs/nemozihansft8b_%j/%a.err"
starting_command="cd /workspace/lustre/Workspace/RL && pwd && ls -l && source .venv/bin/activate && which python && export PATH=\"/lustre/fsw/portfolios/llmservice/users/dongfuj:$PATH\" && echo \$PATH"
command="${starting_command} && uv run examples/run_sft.py --config=examples/configs/sft_acetoolreason_zihan_sft_8b_think_v2.yaml cluster.num_nodes=$nodes"
container="/lustre/fsw/portfolios/llmservice/users/dongfuj/images/acetoolreason.sqsh"
mounts="/lustre"

# Submit the first job
if [ -n "$dep_jid" ]; then
    echo "Submitting first job with dependency on job $dep_jid"
    jid=$(COMMAND="$command" \
          CONTAINER="$container" \
          MOUNTS="$mounts" \
          sbatch $COMMON_ARGS --dependency=afterany:$dep_jid ray.sub)
else
    echo "Submitting first job without dependencies"
    jid=$(COMMAND="$command" \
          CONTAINER="$container" \
          MOUNTS="$mounts" \
          sbatch $COMMON_ARGS ray.sub)  
fi
echo "Submitted job 1 with Job ID: $jid"

# Submit remaining jobs with dependencies
for i in $(seq 2 $num_submits); do
    echo "Submitting job $i with dependency on job $jid"
    jid=$(COMMAND="$command" \
          CONTAINER="$container" \
          MOUNTS="$mounts" \
          sbatch $COMMON_ARGS --dependency=afterany:$jid ray.sub)
    echo "Submitted job $i with Job ID: $jid"
done

echo "All $num_submits jobs submitted successfully!"
