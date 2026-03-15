#!/bin/bash
#SBATCH --partition=crtai2
#SBATCH --gres=gpu:1
#SBATCH --time=08:00:00

#SBATCH --job-name=setup
#SBATCH --output=run0.log

# SBATCH --nodes=1
# SBATCH --nodelist=node001


# (Optional) activate conda if needed
# source ~/micromamba/etc/profile.d/conda.sh

conda create -n ICR python=3.10 -y

# conda activate ICR
# pip install -r requirements.txt
conda run -n ICR pip install -r requirements.txt --extra-index-url https://download.pytorch.org/whl/cu118




