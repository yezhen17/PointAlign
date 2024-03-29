#!/usr/bin/env sh
mkdir -p log
now=$(date +"%Y%m%d_%H%M%S")
log_name="LOG_"$now""
export CUDA_VISIBLE_DEVICES=0
python -u train_cls.py \
--config cfgs/rscnn_config_ssn_cls.yaml \
2>&1|tee log/$log_name.log &
