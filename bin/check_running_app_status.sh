#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage:"
    echo "  $0 NAMESPACE APP_NAME"
    exit 1
fi

NAMESPACE=$1
APP_NAME=$2
status=`oc get pods -n ${NAMESPACE} | grep ${APP_NAME}  | grep -v build | grep -v deploy | grep 1/1 | grep Running | wc -l`
echo $status
