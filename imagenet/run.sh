if [ $# -ne 2 ]; then
  python -m pdb main.py --lr 0.01 --dist-url 'tcp://127.0.0.1:9999' --dist-backend 'nccl' --multiprocessing-distributed --world-size $1 --rank $2 /fs/vulcan-scratch/datasets/imagenet/
fi

python main.py --lr 0.01 --dist-url 'tcp://127.0.0.1:9999' --dist-backend 'nccl' --multiprocessing-distributed --world-size $1 --rank $2 /fs/vulcan-scratch/datasets/imagenet/
