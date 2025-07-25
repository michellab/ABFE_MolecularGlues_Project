#!/bin/bash
#SBATCH -o somd-array-gpu-%A.%a.out
#SBATCH -p main
#SBATCH -n 1
#SBATCH --time 24:00:00
#SBATCH --gres=gpu:1

python -c 'from a3fe.run.system_prep import slurm_solvate_free; slurm_solvate_free()'