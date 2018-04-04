#!/bin/bash
#

DATASET_SPLIT_NAME='validation'
# MODEL_NAME='mobilenet_v1'
MODEL_NAME='inception_v3'
EVAL_DIR='/home/arie/slim/result/any'
DATASET_DIR='/mnt/data/imagenet/adversarial/BIM_Val_Results/mobilenet_bim_val_tfrecords'
# CHECKPOINT_PATH='/home/arie/cleverhans/examples/nips17_adversarial_competition/sample_attacks/checkpoint/mobilenet/mobilenet_v1_1.0_224.ckpt'
CHECKPOINT_PATH='/home/arie/cleverhans/examples/nips17_adversarial_competition/sample_attacks/checkpoint/inception/inception_v3.ckpt'

python eval_image_classifier.py \
  --dataset_split_name="${DATASET_SPLIT_NAME}" \
  --model_name="${MODEL_NAME}" \
  --eval_dir="${EVAL_DIR}" \
  --dataset_dir="${DATASET_DIR}" \
  --graph_file="${CHECKPOINT_PATH}"

