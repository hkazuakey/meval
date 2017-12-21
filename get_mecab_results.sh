#!/bin/bash

OUTDIR=results${1}

rm -rf ${OUTDIR}
mkdir -p ${OUTDIR}

outcount=0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "${line}" | mecab > ${OUTDIR}/mecab_results_${outcount}.mecab
    outcount=$((++outcount))
done < "$2"
