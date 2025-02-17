#!/bin/sh

set -x

EXPERIMENT="exp_name"

DATA_DIR="./data"
LOG_DIR="./logs"

mkdir -p ${LOG_DIR}

python3 code/main.py \
  --phase=inference \
  --batch_size=128 \
  --eval_data_split="test" \
  --eval_dataset_size=0 \
  --eval_checkpoint="experiments/exp_name/checkpoint_epoch020.model" \
  --checkpoint_dir="./experiments" \
  --experiment_name="${EXPERIMENT}" >> ${LOG_DIR}/${EXPERIMENT}_test.log 2>&1 &
