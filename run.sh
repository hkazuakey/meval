#!/bin/bash

SUPPORT_CMDS="BootstrapTest Count Divide Flat parts PropTest Scorer Shuffle TagErrAnalysis WbdErrAnalysis"

BUILD_DIR=`pwd`/target
LIB_DIR=`pwd`/lib
PARAMS="${LIB_DIR}/commons-cli-1.4.jar:${LIB_DIR}/icu4j-60_2.jar:${BUILD_DIR}/my-meval-1.0-SNAPSHOT.jar"

function help() {
    echo "You must specify the proper commnad name from the following!!"
    echo "\"${SUPPORT_CMDS}\""
    echo ""
    exit 1
}

if [ $# -lt 1 ]; then
    help
fi

CMD_NAME=""
for i in ${SUPPORT_CMDS}; do
    if [ ${i} == ${1} ]; then
        CMD_NAME=${i}
        break;
    fi
done

if [ -z ${CMD_NAME} ]; then
    help
fi

echo "Target Applicaton is ${CMD_NAME}"
shift

java -cp ${PARAMS} meval.${CMD_NAME} "$@"

exit 0
