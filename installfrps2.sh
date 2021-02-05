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
FRPPATH=/root/frp_0.35.1_linux_amd64
echo "开始安装frp服务端, 脚本报错请先检查脚本, 并确定已安装docker, docker-compose, 并开放7000端口" &&\
	echo "下载frp包" &&\
	wget https://github.com/fatedier/frp/releases/download/v0.35.1/frp_0.35.1_linux_amd64.tar.gz &&\
	echo "解压frp安装包" &&\
	tar -vxf frp_0.35.1_linux_amd64.tar.gz &&\
	cd $FRPPATH &&\
	cp $FRPPATH/frps.ini $FRPPATH/frps.ini.b &&\
	cp $FRPPATH/frpc.ini $FRPPATH/frpc.ini.b &&\
	rm -f $FRPPATH/frps.ini &&\
	touch $FRPPATH/frps.ini &&\
	FRPFILE=$FRPPATH/frps.ini
	chmod +x $FRPFILE &&\
	echo '[common]' > $FRPFILE &&\
	echo 'bind_port = 7000' >> $FRPFILE &&\
	echo 'token = 7ujm*IK<' >> $FRPFILE &&\
	echo '' >> $FRPFILE &&\
	echo "启动frp服务" &&\
	$FRPPATH/frps -c $FRPFILE &&\
	echo "frp服务器搭建成功"

