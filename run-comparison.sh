#!/bin/bash

G_BASE_DIR=/home/kazu/Work/00_personal/sandbox/jma_comparison/results_mecab
P_BASE_DIR=/home/kazu/Work/00_personal/sandbox/jma_comparison/results_gosen

if [ $# -ne 0 ]; then
    G_BASE_DIR=$1
    P_BASE_DIR=$2
fi

RESULTS_DIR=results

rm -rf ${RESULTS_DIR}
mkdir -p ${RESULTS_DIR}

for i in {0..999}; do
    COMP_F_NAME=results_${i}.mecab
    run.sh Scorer -f "1" -g ${G_BASE_DIR}/${COMP_F_NAME} -p ${P_BASE_DIR}/${COMP_F_NAME} > comp_results_${i}.txt
done
