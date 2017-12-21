#!/bin/bash

OUTDIR=results1

outcount=0

rm -rf ${OUTDIR}
mkdir -p ${OUTDIR}

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "\"${line}\"" | mecab > ${OUTDIR}/mecab_results_${outcount}.mecab
    outcount=$((++outcount))
done < "$1"
