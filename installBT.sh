#!/bin/bash
#此脚本会安装宝塔面板
echo "此脚本会安装宝塔面板,请在安装成功后记录安装成功的内外网接口地址,用户名和密码"
sudo yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh undefined