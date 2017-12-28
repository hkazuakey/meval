#!/bin/bash

TARGET=$1
if [ $# -lt 1 ]; then
    echo "You must input target type!"
    echo ""
    exit 1
fi
echo "$TARGET"

G_BASE_DIR=/home/kazu/Work/00_personal/sandbox/jma_comparison/results_mecab
P_BASE_DIR=/home/kazu/Work/00_personal/sandbox/jma_comparison/results_${TARGET}

# RESULTS_DIR=results
RESULTS_DIR=WbdErrAnalysis_${TARGET}_results

rm -rf ${RESULTS_DIR}
mkdir -p ${RESULTS_DIR}

for i in {0..999}; do
    COMP_F_NAME=results_${i}.mecab
    # ./run.sh Scorer -f "1" -g ${G_BASE_DIR}/${COMP_F_NAME} -p ${P_BASE_DIR}/${COMP_F_NAME} > ${RESULTS_DIR}/comp_score_${i}.txt
    ./run.sh WbdErrAnalysis -g ${G_BASE_DIR}/${COMP_F_NAME} -p ${P_BASE_DIR}/${COMP_F_NAME} -o ${RESULTS_DIR}/wbd_err_${i}.txt > ${RESULTS_DIR}/wbd_${i}.txt
done
