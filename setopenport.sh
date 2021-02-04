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
echo "           |   | '/  ' |   | |--'  |   | '/  ' /  /--'   / "
echo "           |   :    :| |   |/      |   :    :|'--'.     /  "
echo "            \   \  /   '---'        \   \  /    '--'---'   "
echo "             '----'                  '----'                "
echo "脚本作者:度牛电商软件开发部--tpaul"
echo '没有完美的脚本, 如果安装过程报错, 请查找相关资料修改脚本, 或联系脚本作者获得支持'
sleep 3
clear
echo "此脚本适用于centOS7.6环境, 开放firewalld拦截的端口, 其他环境暂未测试, 如果脚本报错, 请用ps -ef | grep port 检查端口是否已被占用, 其他错误请检查脚本"
read -p "请输入需要开放的端口号, 范围1-65535, 端口号: " TPORT
PSTATUS=$(firewall-cmd --zone=public --query-port=$TPORT/tcp)
if [ "$PSTATUS" == "yes" ]
then
	echo "此端口已开放, 无需再次操作."
else
	firewall-cmd --zone=public --add-port=$TPORT/tcp --permanent &&\
		firewall-cmd --reload &&\
		echo "端口已开放, 再次检查此端口状态." &&\
		echo "当前端口状态为: $(firewall-cmd --zone=public --query-port=$TPORT/tcp)" 
fi
	


