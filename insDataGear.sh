#!/bin/bash
#度牛电商软件开发部
#CentOS7.6基础环境
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo "        \ ' ' / \ ' ' / \ ' ' / \ ' ' /          "
echo "       -  牛  - -  年 - -  大 - -  吉 -          "
echo "        / ' ' \ / ' ' \ / ' ' \ / ' ' \          "
echo "                                                 "
echo "                                             LD  "
echo "                rrynCjZjESbUbUSUbSyr          gG " 
echo "       rTUBgDgDBWSKnLrrrrrrrrrrrryCWDggUr      g "
echo "    gDBGbzr                           rZgDLbg  D "
echo "    Dg                                    DggrBg "
echo "     gr                                 rcDDgKgS "
echo "     SDB                          rSDgDGkT  nyJ  "
echo "     rgDg                       EDgjr            "
echo "      g Dg                    SgS                "
echo "      g  DE   cDgDBGNGBNNGDEBDg                  "
echo "      D   gr ggr oo         ggD                  "
echo "     gG   rDgD    Y        DJ gK                 "
echo "    gg     gg             Dg  Cg                 "
echo "    r     gDg             gr   gr                "
echo "         gD D            zg    gB                "
echo "         g  gE           Og    cg                "
echo " rKUkkjkDgryNgWBBGOGbirr bD ZCTWDTJCiJJKzTJc     "
echo " ########################@##################@#####@######################## "    
echo "                 ,---,                   ,---,             "
echo "               ,---.'|       ,---,     ,---.'|             "
echo "               |   | :   ,-+-. /  |    |   | :  .--.--.    "
echo "               |   | |  ,--.'|'   |    |   | | /  /    '   "
echo "             ,--.__| | |   |  ,'' |  ,--.__| ||  :  /'./   "
echo "            /   ,^   | |   | /  | | /   ,^   ||  :  ;_     "
echo "           .   '  /  | |   | |  | |.   '  /  | \  \    '.  "
echo "           '   ; |:  | |   | |  |/ '   ; |:  |  '----.   \ "
echo "           |   | '/  ' |   | |--'  |   | '/  ' /  /--'  /  "
echo "           |   :    :| |   |/      |   :    :|'--'.     /  "
echo "            \   \  /   '---'        \   \  /    '--'---'   "
echo "             '----'                  '----'                "
echo "脚本作者:度牛电商软件开发部--tpaul"
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持' &&\
sleep 2 &&\
clear
echo "此脚本将使用yum安装jdk1.8, datagear服务器端" &&\
echo "安装即将开始......" &&\
sleep 2 &&\
echo "step1: 卸载原有jdk..." &&\
rpm -qa | grep java | xargs rpm -e --nodeps ||\
wget -O insJre.sh https://raw.githubusercontent.com/zzzzzpaul/shellofcentos/master/insJre.sh && bash insJre.sh &&\
echo "Jdk1.8安装完毕, 即将开始下载DataGear压缩包并安装运行......" &&\
sleep 2 &&\
wget http://www.datagear.tech/download/version/2.2.0/datagear-2.2.0.zip &&\
echo "安装zip, unzip解压软件" &&\
yum install -y unzip zip ||\
echo "解压下载包..." &&\
unzip ./datagear-2.2.0.zip &&\
cd ./datagear-2.2.0 &&\
chmod 777 ./*.sh &&\
echo "设置防火墙中..." &&\
sleep 1 &&\
firewall-cmd --zone=public --add-port=50401/tcp --permanent &&\
firewall-cmd --reload &&\
./startup.sh &&\
LOCALIP=$(ip a show dev enp0s3 | grep -w inet | awk '{print $2}'|awk -F '/' '{print $1}')
echo "安装完毕, 使用 admin/admin 访问如下接口" &&\
echo "http://$LOCALIP:50401"
