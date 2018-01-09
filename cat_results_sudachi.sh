#!/bin/bash

FNO=$1

echo "## ${FNO} : \"`./get_text.py ${FNO}`\""
echo "### Mecab"
echo "\`\`\`"
cat /home/kazu/Work/00_personal/sandbox/jma_comparison/results_mecab/results_${FNO}.mecab
echo "\`\`\`"
echo "### Sudachi"
echo "\`\`\`"
cat /home/kazu/Work/00_personal/sandbox/jma_comparison/results_sudachi/results_${FNO}.mecab
echo "\`\`\`"
