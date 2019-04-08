#!/bin/bash
#SBATCH --job-name=hard_data_baseline
#SBATCH --output=logs/resnet50_13.log
#SBATCH --gres=gpu:4
#SBATCH --qos=high
#SBATCH --time=1-12:00:00
#SBATCH --mem=128gb

srun python ../main.py -a resnet50 --lr 0.01 --resume checkpoint.pth.tar /fs/vulcan-scratch/datasets/imagenet/
