#!/bin/bash
echo "============================================================"
echo "============================================================"
echo "==              stage 1 starting                          =="
echo "==   when u see this, that prove download success         =="
echo "==         构建阶段1,jar包制作镜像并推送到Harbor          =="
echo "============================================================"
echo "============================================================" &&\
echo "构建后脚本1, 打包镜像并推送到harbor" &&\
cd /var/lib/jenkins/workspace/dn_gate_dev/ &&\
#wget -O Dockerfile https://raw.githubusercontent.com/zzzzzpaul/shellofcentos/master/Dockerfile20210128 &&\
sudo docker build -t mcmsimg:1.00 . &&\
sudo docker login -u tpaul -p Tpaul123 192.168.0.45 &&\
sudo docker tag mcmsimg:1.00 192.168.0.45/dn_gate_dev/mcmsimg:1.00 &&\
sudo docker push 192.168.0.45/dn_gate_dev/mcmsimg:1.00 &&\
sudo docker logout &&\
echo "清除镜像" &&\
wget -O cleanimgs.sh https://raw.githubusercontent.com/zzzzzpaul/shellofcentos/master/dockerdelimages.sh && bash cleanimgs.sh ||\
echo "脚本执行完毕,如有报错请检查脚本,退出Harbor服务器登录"
