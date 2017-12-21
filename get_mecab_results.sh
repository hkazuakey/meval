#!/bin/bash

OUTDIR=results_mecab

rm -rf ${OUTDIR}
mkdir -p ${OUTDIR}

outcount=0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "${line}" | mecab > ${OUTDIR}/results_${outcount}.mecab
    outcount=$((++outcount))
done < "$1"
