#!/bin/bash
RMLIST=`docker ps -a -q`
RMILIST=`docker images -a -q`
sudo docker stop $RMLIST -f && sudo docker rm $RMLIST -f && sudo docker rmi $RMILIST -f
