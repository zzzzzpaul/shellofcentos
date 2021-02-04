#!/bin/bash
#度牛电商软件开发部
#CentOS7.6基础环境
#Surrport By Paul / duniu.LTD, mailto: zzzzzpaul@qq.com
echo "                                                                       #    "
echo "                                                                       ##   "
echo "                                                                       ##   "
echo "                    #########################                  #        ##  "
echo "              ############                   #####             #        ##  "
echo "          ######                                 ###           #        ##  "
echo "      #####                                        ###         ^#      ##?  "
echo "     ##                                              ##          #     ##   "
echo "     #                                                ###        #&    ##   "
echo "     #                                                 ####       &@%@@#    "
echo "     ##                                                   #####  &@   @#&   " 
echo "      #                                                    ######@     &?   "
echo "      ##                                                    #######@   @@   "
echo "      ##                                                     ####  ####     "   
echo "      ###                                                  ###              "
echo "      ####                                                ##                "
echo "      ## #                                              ##                  "
echo "       # #                                            ##                    "
echo "       # ##     ##v############################### ##%                      "
echo "       #  #    ## @ \                         #####                         "
echo "       #  ##  ##  &&                           ##                           "
echo "      ##   #  #                               ####                          "
echo "      #    # ##                               #  #                          "
echo "      #    ###                               ##  #                          "
echo "     ##     ##                               #   #                          "
echo "     #     ##                                #   ##                         "
echo "           ##                                #   ##                         "
echo "          ####                              ##    #                         "
echo "          # ##                              ##    #                         "
echo "          #  #                              #     #                         "
echo "         ##  #                              #     #                         "
echo "         ##  #                              #     #                         "
echo "         #  ;#                              #     #                         "
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
echo "脚本作者:度牛电商软件开发部--XXX"
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
sleep 3
clear
FRPPATH=/root/frp/
FRPCONFIGPATH=/root/frp/config/
FRPFILE=/root/frp/config/frps.ini
echo "开始安装frp服务端, 脚本报错请先检查脚本, 并确定已安装docker, docker-compose, 并开放7000端口" &&\
	echo "拉取frp镜像" &&\
	docker pull chenhw2/frp &&\
	echo "创建frps配置文件" &&\
	mkdir $FRPPATH &&\
	mkdir $FRPCONFIGPATH &&\
	touch $FRPFILE &&\
	chmod +x $FRPFILE &&\
	echo '[common]' > $FRPFILE &&\
	echo 'bind_port = 7000' >> $FRPFILE &&\
	echo 'token = 7ujm*IK<' >> $FRPFILE &&\
	echo "启动frp服务容器" &&\
	docker run -di --name frpserver -e "ARGS=frps" -v $FRPCONFIGPATH:/frp/frps.ini --net 127.0.0.1 --restart=always --privileged=true chenhw2/frp &&\
	echo "frp服务器搭建成功"

