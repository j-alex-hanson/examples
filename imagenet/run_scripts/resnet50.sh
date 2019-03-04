#!/bin/bash
#SBATCH --job-name=hard_data_baseline
#SBATCH --output=logs/resnet50.log
#SBATCH --gres=gpu:4
#SBATCH --qos=high
#SBATCH --time=1-12:00:00

srun python ../main.py -a resnet50 --lr 0.01 /fs/vulcan-scratch/datasets/imagenet/
