#!/bin/bash
#SBATCH --account=b1245
#SBATCH --partition=b1245
#SBATCH --time=01:00:00
#SBATCH --job-name=example-cpu-job
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=5G

## Load the modules you need for your job
module purge all
module load python-miniconda3/4.12.0

## Run the job scripts
python --version
