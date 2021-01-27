#!/bin/bash
#度牛电商软件开发部
#CentOS7.6基础环境
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
# win10和linux下脚本里换行报错, vim解决方法
#:set fileformat=unix
echo "            /~~~~~\        /~~~~~\               "
echo "           |    (~'        ~~~)   |              "
echo "            \    \__________/    /               "
echo "            /~::::::::         ~\                "
echo " /~~~~~~~-_| ::::::::             |_-~~~~~~~\    "
echo "\ ======= /|  ::A::;      A     :|\ ====== /     "
echo " ~-_____-~ |  _----------------_::| ~-____-~     "
echo "           |/~                  ~\|              "
echo "           /                      \              "
echo "          (        ()    ()        )             "
echo "           '\                   ./'              "
echo "             ~-_______________-~                 "
echo "                   /~~~~\                        "
echo "                  |      |                       "
echo "                  |      |                       "
echo "                 (________)                      "
echo "                     ()                          "
echo "       ,---,                   ,---,             "
echo "     ,---.'|       ,---,     ,---.'|             "
echo "     |   | :   ,-+-. /  |    |   | :  .--.--.    "
echo "     |   | |  ,--.'|'   |    |   | | /  /    '   "
echo "   ,--.__| | |   |  ,'' |  ,--.__| ||  :  /'./   "
echo "  /   ,^   | |   | /  | | /   ,^   ||  :  ;_     "
echo " .   '  /  | |   | |  | |.   '  /  | \  \    '.  "
echo " '   ; |:  | |   | |  |/ '   ; |:  |  '----.   \ "
echo " |   | '/  ' |   | |--'  |   | '/  ' /  /--'  /  "
echo " |   :    :| |   |/      |   :    :|'--'.     /  "
echo "  \   \  /   '---'        \   \  /    '--'---'   "
echo "   '----'                  '----'                "
echo "脚本作者:度牛电商软件开发部--XXX"
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
sleep 3
clear
#启动容器生成ngrok客户端,服务器端和ca证书
docker run --rm -it -e DOMAIN="duniucommerce.com" -v /root/ngrok:/myfiles hteen/ngrok /bin/sh /build.sh
docker run -idt --name ngrok-server -v /root/ngrok:/myfiles -p 8000:8000 -p 445:443 -p 4443:4443 -e DOMAIN="duniucommerce.com" --restart=always --privileged=true 9f29e9d374e9 /bin/sh /server.sh
#复制客户端执行文件
#客户端安装golang环境
tar -C /usr/local/ -vxf go1.15.7.linux-amd64.tar.gz
mkdir $HOME/go
echo 'export GOROOT=/usr/local/go'>> ~/.bashrc
echo 'export GOPATH=$HOME/go'>> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin'>> ~/.bashrc
source $HOME/.bashrc
#wget因为大陆网络问题可能下载不成功, 需要多试几次
wget https://copr.fedorainfracloud.org/coprs/ngompa/musl-libc/repo/epel-7/ngompa-musl-libc-epel-7.repo -O /etc/yum.repos.d/ngompa-musl-libc-epel-7.repo
yum install -y musl-libc-static
./ngrok -config=./ngrok.cfg -subdomain wp 8084
