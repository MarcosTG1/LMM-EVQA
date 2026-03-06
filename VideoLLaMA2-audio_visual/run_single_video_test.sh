#!/bin/bash
# Inferencia sobre un único vídeo con el modelo L1 entrenado
# Uso:
#   sh run_single_video_test.sh /ruta/al/video.mp4 "Título opcional" "Descripción opcional"

MODEL_PATH=/media/2tbraid/martugue/TFG/models/L1_videollama2_av
VIDEO_PATH=${1:-/media/5tbraid/data/martugue/SnapUGC/raw/val_videos/ejemplo.mp4}
TITLE=${2:-""}
DESCRIPTION=${3:-""}

python videollama2/test_single_video.py \
    --model-path ${MODEL_PATH} \
    --modal-type av \
    --video-path "${VIDEO_PATH}" \
    --title "${TITLE}" \
    --description "${DESCRIPTION}"
