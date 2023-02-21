#!/bin/bash -l
#SBATCH -p ib 
#SBATCH --job-name="PURE_FLOODING"             	 
#SBATCH --ntasks=1           
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=16G
#SBATCH --array=0-6719
#SBATCH --mail-type=ALL
#SBATCH --mail-user="k.fuger@tuhh.de"
#SBATCH --time=22:00:00
#SBATCH --constraint=OS8

# Execute simulation
python3 run_pf_experiment.py "pure-flooding" $SLURM_ARRAY_TASK_ID

# Exit job
exit
