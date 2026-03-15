#!/bin/bash
#SBATCH --partition=crtai2
#SBATCH --gres=gpu:1
#SBATCH --time=1028:00:00

#SBATCH --job-name=pairing
#SBATCH --output=run2.log

# SBATCH --nodes=1
# SBATCH --nodelist=node001


# (Optional) activate conda if needed
# source ~/micromamba/etc/profile.d/conda.sh

conda run -n ICR python utils/generate_preference_pair.py \
    --code_dir "./" \
    --langs bn de en es fr ru sw th zh \
    --dpo_model "Llama-3-Base-8B-SFT-DPO" \
    --ref_model "Llama-3-Base-8B-SFT" \
    --dataset "ultrafeedback_binarized/subset/random_5000/"
