#!/bin/bash
#SBATCH --job-name=dist_hard_data_baseline
#SBATCH --output=logs/dist_resnet50.log
#SBATCH --gres=gpu:4
#SBATCH --qos=high
#SBATCH --time=1-12:00:00
#SBATCH --mem=128gb

srun python ../main.py -a resnet50 --lr 0.01 --resume checkpoint.pth.tar --dist-url 'tcp://127.0.0.1:9999' --dist-backend 'nccl' --multiprocessing-distributed --world-size 2 --rank 0 /fs/vulcan-scratch/datasets/imagenet/
