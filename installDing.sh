#!/bin/bash
#CentOS7.6环境及工具安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
echo '这个脚本将会用git下载钉钉穿透, 但是并不会进行启动, 启动钉钉穿透的方法请参考钉钉穿透官方文档, https://ding-doc.dingtalk.com/doc#/kn6zg7/hb7000 '
echo '要将钉钉穿透服务设置为开机启动, 请编写相应的脚本, 或联系作者获得支持'
sudo yum install -y git
echo '如果脚本里git 安装命令执行失败, 请用yum install -y git命令安装git'
git clone https://github.com/open-dingtalk/pierced.git