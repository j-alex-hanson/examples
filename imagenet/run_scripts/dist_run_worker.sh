#!/bin/bash
#SBATCH --job-name=dist_hard_data_baseline
#SBATCH --output=logs/dist_resnet50_worker.log
#SBATCH --gres=gpu:2
#SBATCH --qos=medium
#SBATCH --time=1-12:00:00
#SBATCH --mem=64gb

srun python ../main.py -a resnet50 --lr 0.01 --resume checkpoint.pth.tar --dist-url 'tcp://'$1':9999' --dist-backend 'nccl' --multiprocessing-distributed --world-size 2 --rank 1 /fs/vulcan-scratch/datasets/imagenet/
