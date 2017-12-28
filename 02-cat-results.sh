#!/bin/bash

if [ $# -lt 1 ]; then
    echo "You must specify the target type!!"
    echo ""
    exit 1
fi
TARGET=$1

BASEFN=non_100_${TARGET}.txt
grep "F  :    " WbdErrAnalysis_${TARGET}_results/wbd_*.txt | awk '$3<100.00{print}' > ${BASEFN}

OUTDIR=out_${TARGET}
mkdir -p ${OUTDIR}
for i in `grep -v "NaN" ${BASEFN} | awk -F':' '{print $1}' | sed 's/\./ /g' | sed 's/_/ /g' | awk '{print $4}'`; do ./cat_results_${TARGET}.sh $i > ${OUTDIR}/${i}.md; done
