#!/bin/bash

if [ $# -lt 1 ]; then
    echo "You must specify the target type!!"
    echo ""
    exit 1
fi
TARGET=$1

SRCDIR=out_${TARGET}
TARGET_FNAME=./data/comparison_${TARGET}.md

for i in ${SRCDIR}/*.md; do cat $i >> ${TARGET_FNAME}; done
