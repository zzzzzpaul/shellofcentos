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
echo "即将开始安装openjdk1.8" &&\
sleep 2 &&\
yum install -y java-1.8.0-openjdk* &&\
echo "打印java版本,检查是否安装成功" &&\
java -version ||\
echo "请检查yum安装的jdk8是否已配置环境变量, 复制命令 cat /etc/profile " &&\
echo "若没有配置环境变量,请查看/usr/lib/jvm/目录下的java安装目录,并配置java环境变量, 配置完成后使用source /etc/profile 使配置生效"

