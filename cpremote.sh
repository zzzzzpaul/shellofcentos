#!/bin/bash
echo "拷贝远程文件到本地目录(默认为root用户)"
read -p "输入远程ip： " RIP
read -p "输入远程文件路径： " RPATH
read -p "输入本地路径： " LPATH
echo "开始复制文件， 如需要登陆， 请登陆"
scp -r root@$RIP:$RPATH $LPATH
if [ $? == 0 ]
then
	echo "复制文件成功"
else
	echo "脚本出错， 请检查代码"
fi
