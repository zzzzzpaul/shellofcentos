#!/bin/bash
#度牛电商软件开发部
#CentOS7.6基础环境
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
#出现windows编辑的空格错误时使用:set fileformat=unix来排除错误
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
echo '复制下面四行代码运行'
echo 'yum install epel-release && \'
echo 'yum update -y && \'
echo 'yum list jq && \'
echo 'yum install -y jq && \'
echo '修改sudo'
echo 'visudo'
## Allow root to run any commands anywhere
#root    ALL=(ALL)       ALL
#Defaults:root !requiretty
#visudo配置jenkins服务器如下
## Allow root to run any commands anywhere
#root    ALL=(ALL)       ALL
#jenkins ALL=(root)      NOPASSWD: /usr/bin/docker
#Defaults:jenkins !requiretty
