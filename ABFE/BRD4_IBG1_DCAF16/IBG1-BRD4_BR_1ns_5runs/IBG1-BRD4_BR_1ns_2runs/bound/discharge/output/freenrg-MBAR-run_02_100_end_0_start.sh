#!/bin/bash
#SBATCH -o somd-array-gpu-%A.%a.out
#SBATCH -p main
#SBATCH -n 1
#SBATCH --time 24:00:00
#SBATCH --gres=gpu:1
analyse_freenrg mbar -i /home/yanfz/IBG1_1ns_BR+2/bound/discharge/output/lambda*/run_02/simfile_truncated_100_end_0_start.dat -p 100 --overlap --output /home/yanfz/IBG1_1ns_BR+2/bound/discharge/output/freenrg-MBAR-run_02_100_end_0_start.dat