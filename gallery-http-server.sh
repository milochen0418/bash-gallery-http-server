#!/bin/bash

PORT_NUM=5566
#TOPIC=ALL
SRC_DIR=$PWD
#SRC_DIR=/home/joanmirochen/nodejs/test/downloads/校花
#SRC_DIR=/home/joanmirochen/nodejs/downloads/辣妹

echo "SRC_DIR=$SRC_DIR"
#exit 0
if [ $# -ne 0 ]; then
	if [ "$1" = "--help" ]; then
		echo "gallery-http-server [PORT_NUM] [SRC_DIR]"
		echo "PORT_NUM(optional) : the port number you want to use. default is $PORT_NUM"
		echo "SRC_DIR(optional : the photos you want to show is in SRC_DIR. default is $SRC_DIR"
		exit 0
	fi	
fi 

if [ $# -gt 0 ]; then
	PORT_NUM=$1
fi

if [ $# -gt 1 ]; then
	SRC_DIR=$2
fi 


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
