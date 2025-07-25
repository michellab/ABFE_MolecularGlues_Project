#!/bin/bash
#SBATCH -o somd-array-gpu-%A.%a.out
#SBATCH -p main
#SBATCH -n 1
#SBATCH --time 24:00:00
#SBATCH --gres=gpu:1

python -c 'from a3fe.run.system_prep import slurm_heat_and_preequil_bound; slurm_heat_and_preequil_bound()'