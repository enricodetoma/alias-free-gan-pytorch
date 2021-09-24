#!/bin/sh

mkdir /mnt/d/lmdb
#python prepare_data.py --out /mnt/d/lmdb --n_worker 16 ./modern_paintings_resized/
python train.py --n_gpu 1 --conf config/config-t.jsonnet training.batch=1 training.n_sample=16 path=/mnt/d/lmdb
