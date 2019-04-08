#!/bin/bash
#SBATCH --job-name=hard_data_baseline
#SBATCH --output=logs/resnet50_scavenger.log
#SBATCH --gres=gpu:8
#SBATCH --partition=scavenger
#SBATCH --account=scavenger
#SBATCH --time=3-00:00:00

#SBATCH --mem=128gb

srun python ../main.py -a resnet50 --lr 0.01 /fs/vulcan-scratch/datasets/imagenet/
