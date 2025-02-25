#!/bin/bash

#SBATCH -J WeSpeaker
#SBATCH -p standard-g
#SBATCH --gres=gpu:8
#SBATCH --account=project_465001402
#SBATCH --cpus-per-task=56
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=47:59:00
#SBATCH --output=log/output_%x_%j.txt
#SBATCH --error=log/error_%x_%j.txt
#SBATCH --array=1-3

module load LUMI YourContainer

. ./lumi.sh || exit 1

singularity exec $SIFPYTORCH bash xxx.sh
