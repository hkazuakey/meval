#!/bin/bash

FNO=$1

echo "## ${FNO} : \"`./get_text.py ${FNO}`\""
echo "### Mecab"
echo "\`\`\`"
cat /home/kazu/Work/00_personal/sandbox/jma_comparison/results_mecab/results_${FNO}.mecab
echo "\`\`\`"
echo "### Gosen"
echo "\`\`\`"
cat /home/kazu/Work/00_personal/sandbox/jma_comparison/results_gosen/results_${FNO}.mecab
echo "\`\`\`"
