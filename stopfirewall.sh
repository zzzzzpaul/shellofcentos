#!/bin/bash
#基于Docker容器的Portainer安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
echo '执行此脚本会停止并禁用防火墙和SELINUX, 请谨慎使用'
sudo setenforce 0 && sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
sudo systemctl stop iptables
sudo systemctl stop firewalld
sudo systemctl disable iptables
sudo systemctl disable firewalld
echo '查看关闭状态'
sudo systemctl status firewalld
sudo systemctl status iptables
