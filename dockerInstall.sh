#!/bin/bash
#基于Docker容器的Portainer安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
echo '此脚本将会安装docker环境, 安装前请先用sudo su命令进提升到管理员权限'
echo '卸载原docker'
sudo yum remove -y docker docker-common container-selinux docker-selinux docker-engine
#yum update 和以下命令会升级centos内核
#sudo yum --exclude=kernel* update
echo '开始安装docker'
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install -y docker-ce
rm -fr /etc/docker && cd /etc && mkdir docker && cd /etc/docker
sudo echo '{"registry-mirrors":["https://registry.docker-cn.com","http://hub-mirror.c.163.com","https://docker.mirrors.ustc.edu.cn"]}' > ./daemon.json
sudo systemctl enable docker
sudo systemctl start docker
echo '查看docker-ce版本, 镜像, 容器'
sudo docker -v
sudo docker images -a
sudo docker ps -a

#dockerhub安装,centos7.9 版本需要python3.9 和 glibc2.28支持, 以下三种安装方法都失败, 所以正解应该是不执行yum update -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

#安装docker-compose
curl -L https://github.com/docker/compose/releases/download/1.25.0-rc2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose version

#安装docker-compose方法2, 以上方法失效
yum install -y epel-release
yum install -y python-pip
pip install --upgrade pip
pip install docker-compose
#python报错



