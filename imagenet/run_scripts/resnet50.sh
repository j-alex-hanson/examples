#!/bin/bash
source activate pytorch

percent=$1
num=$2

cat > resnet50.tmp.sh <<EOF
#!/bin/bash
srun python \
  ../main.py \
    -a resnet50 \
    --lr 0.01 \
    --resume checkpoint.resnet50.$percent.tar \
    --checkpoint-root resnet50.$percent \
    /fs/vulcan-scratch/datasets/imagenet/
EOF

chmod +x resnet50.tmp.sh

#SBATCH commands
sbatch \
       --output=logs/resnet50.$percent.$num.log \
       --job-name=hard_data_baseline \
       --gres=gpu:4 \
       --qos=high \
       --time=1-12:00:00 \
       --mem=128gb \
       --export=all \
       resnet50.tmp.sh

rm resnet50.tmp.sh
