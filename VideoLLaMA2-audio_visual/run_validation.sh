#!/bin/bash
# Validación batch del modelo L1 sobre el conjunto de validación oficial
# Ejecutar desde VideoLLaMA2-audio_visual/:
#   conda activate videollama2
#   sh run_validation.sh
#
# Output: submission.csv en el directorio actual

MODEL_PATH=/media/2tbraid/martugue/TFG/models/L1_videollama2_av
VAL_JSON=/media/5tbraid/data/martugue/SnapUGC/processed/val.json

python videollama2/test.py \
    --model-path ${MODEL_PATH} \
    --modal-type av \
    --json_file ${VAL_JSON}

# Mover resultado a carpeta del modelo
cp submission.csv ${MODEL_PATH}/submission_val.csv
echo "Validación completada. Resultados en: ${MODEL_PATH}/submission_val.csv"
