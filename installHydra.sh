#!/bin/bash
#CentOS7.6环境及工具安装
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
#sudo yum install -y openssl-devel pcre-devel ncpfs-devel postgresql-devel libssh-devel subversion-devel libncurses-devel
sudo yum install -y openssl-devel pcre-devel ncpfs-devel postgresql-devel libssh-devel subversion-devel libncurses-devel unzip zip
#sudo wget http://www.thc.org/releases/hydra-7.4.1.tar.gz
sudo wget https://github.com/vanhauser-thc/thc-hydra/archive/master.zip
unzip master.zip
cd thc-hydra-master/
chmod +x ./thc-hydra-master/*
./configure
make &&make install
hydra -h
# 测试
# hydra -l root -p 1qaz@WSX 101.133.215.147 ssh