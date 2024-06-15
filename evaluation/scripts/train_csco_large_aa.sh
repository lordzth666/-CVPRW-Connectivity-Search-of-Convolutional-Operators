# srun --partition=athena-mini --gpus-per-task=4 bash 
./distributed_train.sh 4 /imagenet/ --model gram224 -b 192 --sched step --epochs 450 --decay-epochs 2.4 --decay-rate .97 --opt rmsproptf --opt-eps .001 -j 8 --warmup-lr 1e-6 --weight-decay 3e-5 --drop 0.0 --drop-path 0.0 --model-ema --model-ema-decay 0.9999 --aa rand-m9-mstd0.5 --remode pixel --reprob 0.2 --amp --lr .048 --gram_proto gram_export/csco/csco_im_se_large.prototxt --data-dir ./data/ImageNet --bn-momentum 0.001 --bn-eps 0.001 --warmup-prefix