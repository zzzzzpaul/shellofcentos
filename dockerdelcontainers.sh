#!/bin/bash
RMLIST=$(sudo docker ps -a -q)
if [ $RMLIST == "" ] then;
	echo "未找到运行中的docker容器"
fi
if [ $RMLIST != "" ] then;
	echo "停止并删除运行中的容器" &&\
	sudo docker stop $RMLIST &&\
	sudo docker rm $RMLIST
fi
