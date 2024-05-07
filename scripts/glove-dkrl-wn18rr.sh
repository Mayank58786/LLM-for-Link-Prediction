#!/bin/bash

python train.py link_prediction with \
dataset='WN18RR' \
inductive=True \
model='glove-dkrl' \
rel_model='transe' \
loss_fn='margin' \
regularizer=1e-3 \
max_len=32 \
num_negatives=64 \
lr=1e-4 \
use_scheduler=False \
batch_size=64 \
emb_batch_size=512 \
eval_batch_size=128 \
max_epochs=80 \
checkpoint=None \
use_cached_text=False
