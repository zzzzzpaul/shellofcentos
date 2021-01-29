#!/bin/bash
#度牛电商软件开发部
#CentOS7.6基础环境
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
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
echo "脚本作者:度牛电商软件开发部--唐保罗"
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
wget -O clearc.sh https://raw.githubusercontent.com/zzzzzpaul/shellofcentos/master/dockerdelcontainers.sh && bash clearc.sh &&\
wget -O cleari.sh https://raw.githubusercontent.com/zzzzzpaul/shellofcentos/master/dockerdelimages.sh && bash cleari.sh &&\
sudo docker login -u tpaul -p Tpaul123 192.168.0.45 &&\
sudo docker pull 192.168.0.45/dn_gate_dev/mcmsimg:1.00 &&\
sudo docker run -d --name mcms -p 8080:8080 192.168.0.45/dn_gate_dev/mcmsimg:1.00 &&\
sudo docker logout
