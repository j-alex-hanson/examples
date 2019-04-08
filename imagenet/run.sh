python  main.py --lr 0.01 --dist-url "tcp://vulcan${3}.umiacs.umd.edu:9999" --dist-backend 'nccl' --multiprocessing-distributed --world-size $1 --rank $2 /fs/vulcan-scratch/datasets/imagenet/
