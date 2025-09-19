#!/bin/bash

script_path=$1
num_submits=${2:-1}
nodes=$3
dep_jid=$4

# Check if script path is provided
if [ -z "$script_path" ]; then
    echo "Usage: $0 <script_path> [number_of_jobs] [nodes]"
    exit 1
fi

other_args=""
if [ -n "$nodes" ]; then
    other_args="--nodes=$nodes"
fi

echo "Submitting $num_submits jobs with sbatch using script: $script_path"

# Submit the first job
if [ -n "$dep_jid" ]; then
    echo "Submitting first job with dependency on job $dep_jid"
    jid=$(sbatch --parsable --dependency=afterany:$dep_jid $other_args $script_path)
else
    echo "Submitting first job without dependencies"
    jid=$(sbatch --parsable $other_args $script_path)
fi
echo "Submitted job 1 with Job ID: $jid"

# Submit remaining jobs with dependencies
for i in $(seq 2 $num_submits); do
    echo "Submitting job $i with dependency on job $jid"
    jid=$(sbatch --parsable --dependency=afterany:$jid $other_args $script_path)
    echo "Submitted job $i with Job ID: $jid"
done

echo "All $num_submits jobs submitted successfully!"