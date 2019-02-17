#!/bin/bash

PORT_NUM=5566
#TOPIC=ALL
SRC_DIR=/home/joanmirochen/nodejs/test/downloads/校花


# record current folder
CURDIR=$(pwd)
BACKDIR=""
CURDIR_FP=/tmp/gallery-http-server-curdir.txt
rm -f $CURDIR_FP
echo $CURDIR > $CURDIR_FP


cd /tmp/
rm -rf gallery-web-generator
git clone https://github.com/milochen0418/gallery-web-generator
cd ./gallery-web-generator/
#./gallery_procedure.sh 5566 /home/joanmirochen/nodejs/test/downloads ALL
./simple_gallery_procedure.sh $SRC_DIR $PORT_NUM



# go back to current folder that you record before  
BACKDIR=$(cat $CURDIR_FP)
cd $BACKDIR
exit 0
