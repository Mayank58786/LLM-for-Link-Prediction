#!/bin/bash
#SBATCH --job-name=blp_job
#SBATCH --output=blp_job.out
#SBATCH --error=blp_job.err
#SBATCH --time=12:00:00   # Requesting 12 hours
#SBATCH --partition=accelerated   # Partition name
#SBATCH --ntasks=1   # Number of tasks
#SBATCH --nodes=1   # Number of nodes
#SBATCH --cpus-per-task=152   # Number of cores per node

# Load necessary modules (if required by your system)
# module load anaconda3

# Activate the conda environment
source ~/.bashrc  # Ensure you can use conda
conda activate blp1

# Log in to wandb (you can also configure this in your script)
export WANDB_API_KEY=your_wandb_api_key  # Set your WANDB API key

# Run your script
./scripts/blp-transe-fb15k237.sh
