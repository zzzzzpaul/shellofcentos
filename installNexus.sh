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
echo "脚本作者:度牛电商软件开发部--XXX"
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
yum install -y maven && mvn -version && java version && docker pull sonatype/nexus3
docker run -d -p 8081:8081 --name nexus -e NEXUS_CONTEXT=nexus --restart=always --privileged=true sonatype/nexus3
# 开发8081端口
# 用admin登录, 用下面命令查看随机密码
docker exec nexus cat /nexus-data/admin.password
