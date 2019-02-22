#!/bin/bash
#SBATCH --job-name=hard_data_baseline
#SBATCH --output=logs/resnet50.log
#SBATCH --gres=gpu:4
#SBATCH --partition=dpart
#SBATCH --qos=high
#SBATCH --time=20:00:00

srun python main.py -a resnet50 --lr 0.01 --dist-url 'tcp://127.0.0.1:9999' --dist-backend 'nccl' --multiprocessing-distributed --world-size $1 --rank $2 /fs/vulcan-scratch/datasets/imagenet/
