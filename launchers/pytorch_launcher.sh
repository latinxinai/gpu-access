#!/bin/bash
#SBATCH --job-name=[JOB_NAME]
#SBATCH --cpus-per-task=[NUM_CPUS]
#SBATCH --mem=[NUM_RAM]gb
#SBATCH --output=/home/[USER]/logs/%j_[FILENAME].out
#SBATCH -e /home/[USER]/logs/%j[ERROR_FILENAME].err
#SBATCH --gres=gpu:[NUM_GPUS]
#SBATCH --nodelist=dgxa100jal
#SBATCH --partition=[PARTITION_NAME]

pwd; hostname; date

module use --append /shared/modulefiles/
source /etc/profile.d/modules.sh
module load Python/3.11.6

[YOUR_SCRIPTS_HERE]
#e.g:
#python /home/[USER]/scripts/my_script.py

date

