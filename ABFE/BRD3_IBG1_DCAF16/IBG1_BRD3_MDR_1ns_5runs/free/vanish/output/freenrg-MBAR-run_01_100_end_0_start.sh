#!/bin/bash
#SBATCH -o somd-array-gpu-%A.%a.out
#SBATCH -p main
#SBATCH -n 1
#SBATCH --time 24:00:00
#SBATCH --gres=gpu:1
analyse_freenrg mbar -i /home/yanfz/IBG1_BRD3_MDR/free/vanish/output/lambda*/run_01/simfile_truncated_100_end_0_start.dat -p 100 --overlap --output /home/yanfz/IBG1_BRD3_MDR/free/vanish/output/freenrg-MBAR-run_01_100_end_0_start.dat