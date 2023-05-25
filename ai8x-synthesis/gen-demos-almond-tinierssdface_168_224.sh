#!/bin/sh
DEVICE="MAX78000"
TARGET="sdk/Examples/$DEVICE/CNN"
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose"

python ai8xize.py --test-dir $TARGET --prefix PINTO11 --checkpoint-file ../ai8x-training/logs/2023.05.24-172210/qat_best_q.pth.tar --config-file networks/almond-tinierssd.yaml --sample-input sample_almond.npy --fifo $COMMON_ARGS "$@"