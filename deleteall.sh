#!/bin/bash
RMLIST=$(sudo docker ps -a -q)
RMILIST=$(sudo docker images -a -q)
sudo docker stop $RMLIST && sudo docker rm $RMLIST && sudo docker rmi $RMILIST -f
