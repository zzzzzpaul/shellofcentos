#!/bin/bash
#基于Docker容器的Portainer安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
echo '此脚本将会安装docker-compose环境, 如果安装失败, 安装前请先用sudo su命令进提升到管理员权限'
echo '开始安装3' &&\
sleep 1 &&\
echo '开始安装2' &&\
sleep 1 &&\
echo '开始安装1' &&\
sleep 1 &&\
curl -L https://github.com/docker/compose/releases/download/1.25.0-rc2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose &&\
if [ $? == 0 ]
then
	echo "安装成功, 设置执行权限" &&\
	chmod +x /usr/local/bin/docker-compose &&\
	echo "打印版本信息..." &&\
	docker-compose version
else
	echo "安装失败, 请检查网络, 或重新执行脚本"
fi
