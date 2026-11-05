#!/bin/bash
#SBATCH --account=b1245
#SBATCH --partition=b1245-gpu-high
#SBATCH --time=01:00:00
#SBATCH --job-name=example-gpu-job
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:h100:1
#SBATCH --mem=5G

## Load the modules that you need for your job
module purge all
module load cuda/12.2.2-gcc-10.4.0

## Run the job scripts
nvcc --version
nvidia-smi --query-gpu=name,utilization.gpu,memory.used --format=csv
