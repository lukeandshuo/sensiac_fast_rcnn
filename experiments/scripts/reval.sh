#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"

LOG="experiments/logs/reval.txt.`date +'%Y-%m-%d_%H-%M-%S'`"
exec &> >(tee -a "$LOG")
echo Logging output to "$LOG"

time ./tools/reval.py output/default/vgg_cnn_m_1024_fast_rcnn_iter_40000 \
  --imdb sensiac_test