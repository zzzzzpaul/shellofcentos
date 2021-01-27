#!/bin/bash
#这个脚本会在centos下安装apt, 以提高软件安装的兼容性
#wget http://yum.baseurl.org/download/3.4/yum-3.4.3.tar.gz
#tar -vxf yum-3.4.3.tar.gz
#touch /etc/ yum.conf
#cd yum-3.4.3
#./yummain.py install -y yum
#yum update
#修改host
vim /etc/hosts
# 尾行添加 199.232.96.133 raw.githubusercontent.com
curl https://raw.githubusercontent.com/dvershinin/apt-get-centos/master/apt-get.sh -o /usr/local/bin/apt-get
chmod 0755 /usr/local/bin/apt-get