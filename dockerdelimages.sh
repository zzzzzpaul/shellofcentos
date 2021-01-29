#!/bin/bash
RMILIST=$(sudo docker images -a -q)
sudo docker rmi $RMILIST -f
