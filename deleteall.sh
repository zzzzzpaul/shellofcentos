#!/bin/bash
RMLIST=`docker ps -a -q`
RMILIST=`docker images -a -q`
sudo docker stop $RMLIST && sudo docker rm $RMLIST && sudo docker rmi $RMILIST -f
