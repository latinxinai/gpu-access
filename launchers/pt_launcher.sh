#!/bin/bash
#SBATCH --job-name=[JOBNAME]
#SBATCH --ntasks=2
#SBATCH --mem=1gb
#SBATCH --time=00:01:00
#SBATCH --output=/home/dia/[PATH]/%j.out
#SBATCH -e /home/dia/[PATH]/%j.err
#SBATCH --gres=gpu:1
#SBATCH --nodelist=dgxa100jal

pwd; hostname; date


module use --append /shared/modulefiles/
source /etc/profile.d/modules.sh
module load Python/3.11.6


python  [NAME-WITH-FULLPATH].py

date
