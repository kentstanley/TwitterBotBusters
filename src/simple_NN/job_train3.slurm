#!/bin/bash
#SBATCH --job-name=gcn_gat_train_1  # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem=64G                # total memory per node (4 GB per cpu-core is default)
#SBATCH --gres=gpu:1             # number of gpus per node
#SBATCH --time=06:05:00          # total run time limit (HH:MM:SS)
module purge
module load anaconda3/2023.3
conda activate /scratch/network/rr4001/projects/voon/envs/botbusters

python3 train.py --config toy.yaml