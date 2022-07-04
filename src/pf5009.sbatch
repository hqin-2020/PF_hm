#!/bin/bash

#SBATCH --account=pi-lhansen
#SBATCH --job-name=pf5009
#SBATCH --output=pf5009.out
#SBATCH --error=pf5009.err
#SBATCH --time=6-23:00:00
#SBATCH --partition=standard
#SBATCH --cpus-per-task=32
#SBATCH --mem=32G

# Load Python modules
module load python/booth/3.8/3.8.5

scratch_dir="/scratch/${SLURM_JOB_USER}/"
mkdir -p $scratch_dir

srun python3 Run_Aso1_0_CPU5009.py  