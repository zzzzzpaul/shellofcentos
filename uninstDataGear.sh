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
echo "停止DataGear服务, 关闭端口, 并删除安装文件" &&\
cd /root/datagear-2.2.0 &&\
./shutdown.sh &&\
echo "关闭防火墙端口" &&\
firewall-cmd --zone= public --remove-port=50401/tcp --permanent ||\
firewall-cmd --reload ||\
cd ~ &&\
rm -rf /root/datagear-2.2.0 &&\
echo "卸载完成"
