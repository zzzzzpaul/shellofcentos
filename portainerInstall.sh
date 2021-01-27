#!/bin/bash
#基于Docker容器的Portainer安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
echo '此脚本将会安装docker环境, 安装前请先用sudo su命令进提升到管理员权限'
echo '卸载原docker'
sudo yum remove -y docker docker-common container-selinux docker-selinux docker-engine
sudo yum update
echo '开始安装docker'
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install -y docker-ce
sudo rm -fr /etc/docker
cd /etc
sudo mkdir docker
cd ./docker
sudo echo '{"registry-mirrors":["https://registry.docker-cn.com","http://hub-mirror.c.163.com","https://docker.mirrors.ustc.edu.cn"]}' > ./daemon.json
sudo systemctl enable docker
sudo systemctl start docker
echo '查看docker-ce版本, 镜像, 容器'
sudo docker -v
sudo docker images -a
sudo docker ps -a
echo '拉取portainer镜像,请稍后'
sudo docker pull docker pull portainer/portainer
sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer --restart=always
sudo cd /usr/libexec/docker/
sudo ln -s docker-runc-current docker-runc
echo '安装过程无报错, 访问ip:9000'