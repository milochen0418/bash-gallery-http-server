#!/bin/bash

PORT_NUM=5566
TOPIC=ALL
SRC_DIR=/home/joanmirochen/nodejs/test/downloads 

cd /tmp/
git clone https://github.com/milochen0418/gallery-web-generator
cd ./gallery-web-generator/
#./gallery_procedure.sh 5566 /home/joanmirochen/nodejs/test/downloads ALL
./gallery_procedure.sh $PORT_NUM $SRC_DIR $TOPIC
