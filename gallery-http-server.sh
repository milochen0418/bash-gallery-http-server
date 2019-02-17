#!/bin/bash

PORT_NUM=5566
#TOPIC=ALL
SRC_DIR=/home/joanmirochen/nodejs/test/downloads/校花
#SRC_DIR=/home/joanmirochen/nodejs/downloads/辣妹


# record current folder
CURDIR=$(pwd)
BACKDIR=""
CURDIR_FP=/tmp/gallery-http-server-curdir_$(date '+%Y-%m-%dT%H:%M:%S').txt
rm -f $CURDIR_FP
echo $CURDIR > $CURDIR_FP


#make md5sum
cd $SRC_DIR
SRC_MD5=$(find ./ | md5sum | awk '{print $1}') 
cd -

MD5_TMP_DIR=/tmp/gallery-http-server-$SRC_MD5

echo "MD5_TMP_DIR=$MD5_TMP_DIR"
echo "SRC_DIR=$SRC_DIR"

if [ ! -d "$MD5_TMP_DIR" ]
then
	mkdir $MD5_TMP_DIR
	cd $MD5_TMP_DIR
	git clone https://github.com/milochen0418/gallery-web-generator
	cd ./gallery-web-generator/
	#./gallery_procedure.sh 5566 /home/joanmirochen/nodejs/test/downloads ALL
	./simple_gallery_procedure.sh $SRC_DIR $PORT_NUM
else 
	cd $MD5_TMP_DIR
	cd ./gallery-web-generator/
	./simple_gallery_runweb.sh $SRC_DIR $PORT_NUM
fi


# go back to current folder that you record before  
BACKDIR=$(cat $CURDIR_FP)
cd $BACKDIR
exit 0
