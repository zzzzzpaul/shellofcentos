#!/bin/bash
#基于Docker容器的Portainer安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
sudo yum install -y wget
sudo wget https://mirrors.aliyun.com/zabbix/zabbix/3.4/rhel/7/x86_64/zabbix-agent-3.4.10-1.el7.x86_64.rpm
sudo yum localinstall -y zabbix-agent-3.4.10-1.el7.x86_64.rpm
echo '脚本执行完成,如果报错请检查脚本命令,若无报错,则安装成功,请配置/etc/zabbix/zabbix_agentd.conf'