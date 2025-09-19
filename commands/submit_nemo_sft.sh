#!/bin/bash

# Define my_srun variable with sequential job submission
nodes=${1:-2}
num_submits=${2:-1}
dep_jid=$3

echo "Using $nodes nodes for submission"
echo "Submitting $num_submits sequential jobs"

COMMON_ARGS="--parsable --nodes=$nodes --gpus-per-node=8 --account=llmservice_fm_post --job-name=nemosft --partition=batch --time=240 --cpus-per-task=128 --mem=0 --output=logs/nemosft_%j/%a.out --error=logs/nemosft_%j/%a.err"
starting_command="cd /workspace/lustre/Workspace/RL && pwd && ls -l && source .venv/bin/activate && which python && export PATH=\"/lustre/fsw/portfolios/llmservice/users/dongfuj:$PATH\" && echo \$PATH"
command="${starting_command} && uv run examples/run_sft.py --config=examples/configs/sft_acetoolreason_megatron.yaml --cluster.num_nodes=$nodes"
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



# # Define my_srun variable
# nodes=${1:-2}
# num_submits=${2:-1}
# dep_jid=$3

# starting_command="cd /workspace/lustre/Workspace/RL && pwd && ls -l && source .venv/bin/activate && which python && export PATH="/lustre/fsw/portfolios/llmservice/users/dongfuj:$PATH" && echo \$PATH"
# echo "Using $nodes nodes for submission"

# COMMAND="${starting_command} && uv run examples/run_sft.py --config=examples/configs/sft_acetoolreason_megatron.yaml --cluster.num_nodes=$nodes" \
# CONTAINER="/lustre/fsw/portfolios/llmservice/users/dongfuj/images/acetoolreason.sqsh" \
# MOUNTS="/lustre" \
# sbatch \
#     --nodes=$nodes \
#     --gpus-per-node=8 \
#     --account=llmservice_fm_post \
#     --job-name=nemosft \
#     --partition=interactive \
#     --time=240 \
#     --cpus-per-task=128 \
#     --mem=0 \
#     --output=logs/nemosft_%j/%a.out \
#     --error=logs/nemosft_%j/%a.err \
#     ray.sub