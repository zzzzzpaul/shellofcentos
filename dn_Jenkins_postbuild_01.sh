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
# 进入到target目录
STAT=2
TARGETPATH="/var/lib/jenkins/workspace/dn_gate_dev/target"
cd $TARGETPATH
if [ $?==0 ] then;
	wget -O Dockerfile https://raw.githubusercontent.com/zzzzzpaul/shellofcentos/master/Dockerfile20210128
	$STAT=0
else 
	echo "进入目标文件出错,请检查"
	$STAT=1
fi 
if [ $STAT==0 ] then;
	docker build -f $TARGETPATH/Dockerfile mcmsimg
	$STAT=0
else 
	echo "制作镜像出错,请检查"
	$STAT=1
fi 
# 将镜像推送到harbor仓库
# tag镜像
docker login -u tpaul -p Tpaul123 192.168.0.45
if [ $STAT==0 ] then;
	docker tag mcmsimg 192.168.0.45/dn_gate_dev/mcmsimg:1.00
	$STAT=0
else 
	echo "镜像tag出错,请检查"
	$STAT=1
fi 
# 推送镜像
if [ $STAT==0 ] then;
	docker push 192.168.0.45/dn_gate_dev/mcmsimg:1.00
	$STAT=0
else 
	echo "推送镜像出错,请检查"
	$STAT=1
fi 	
echo "脚本执行完毕,如有报错请检查脚本,退出Harbor服务器登录" 
docker logout
