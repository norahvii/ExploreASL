#!/bin/bash

BASE_DIR=$(pwd)
DATASETROOT="${BASE_DIR}/incoming"

docker run -e DATASETROOT="${DATASETROOT}" \
           -e IMPORTMODULES=1 \
           -e PROCESSMODULES="[1,1,0]" \
           -v "${BASE_DIR}/incoming:/data/incoming" \
           -v "${BASE_DIR}/data/outgoing:/data/outgoing" \
           exploreasl/xasl:1.11.0