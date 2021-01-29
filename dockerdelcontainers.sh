#!/bin/bash
RMLIST=$(sudo docker ps -a -q)
sudo docker stop $RMLIST
sudo docker rm $RMLIST 
