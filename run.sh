#!/bin/bash

time=$(date +"%Y-%m-%d")
echo "Date: $time"

WORK_DIR=your_path_to_file
cd $WORK_DIR

my_folder="${WORK_DIR}/log/${time}/"

mkdir -p "${my_folder}"


sbatch -J "Example_Submit" \
  --time "44:00:00" \
  --array "1-1" \
  -o "${my_folder}/output_%x_%j_%a.txt" \
  -e "${my_folder}/error_%x_%j_%a.txt" \
    submit.sh
