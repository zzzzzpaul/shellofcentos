#!/bin/bash
#基于Docker容器的Portainer安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
sudo docker pull portainer/portainer
sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer --restart=always
sudo cd /usr/libexec/docker/
sudo ln -s docker-runc-current docker-runc
echo '安装成功, 访问ip:9000'