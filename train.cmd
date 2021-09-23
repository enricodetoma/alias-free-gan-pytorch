mkdir d:\lmdb
python prepare_data.py --out d:\lmdb --n_worker 16 ./modern_paintings_resized/
python train.py --n_gpu 2 --conf config/config-t.jsonnet training.batch=16 path=d:\lmdb
