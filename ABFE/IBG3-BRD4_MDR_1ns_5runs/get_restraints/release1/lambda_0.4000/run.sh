#!/bin/bash
#SBATCH -o somd-array-gpu-%A.%a.out
#SBATCH -p main
#SBATCH -n 1
#SBATCH --gres=gpu:1
echo "CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES"
lam=$1
echo "lambda is: " $lam
srun somd-freenrg -C somd.cfg -t somd.prm7 -c somd.rst7 -m somd.pert -l $lam -p CUDA