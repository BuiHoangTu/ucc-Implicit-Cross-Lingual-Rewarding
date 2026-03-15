#!/bin/bash
#SBATCH --partition=crtai2
#SBATCH --gres=gpu:2
#SBATCH --time=1028:00:00

#SBATCH --job-name=prepare
#SBATCH --output=run1.log

# SBATCH --nodes=1
# SBATCH --nodelist=node001


# (Optional) activate conda if needed
# source ~/micromamba/etc/profile.d/conda.sh

# conda activate ICR
# bash scripts/run_pipeline.sh
set -e

conda run -n ICR bash scripts/run_pipeline.sh dummy "bn de en es fr ru sw th zh" crosslingual_rewarding ultrafeedback_binarized/subset/random_5000/ M0 
