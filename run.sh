#!/bin/bash
echo "$@"
if [ $# \< "3" ];then
	echo "Usage: $1 sourcCodeName(Don't include suffix) programPara1 programPara2"
	exit -1
fi
make clean
make NAME=$1 LINE=$2  BOUND=$3 
echo "Compilation finished!-----------------------Start run program:"

