#!/bin/bash

apt-get update && apt-get -y install git
git clone https://github.com/flyzy2005/ss-fly ~/ss-fly
~/ss-fly/ss-fly.sh -bbr
read -t 30 -s -p "请输入密码:" PASSWD
echo -e "\n"
~/ss-fly/ss-fly.sh -i $PASSWD 443
echo "正在将加密方式修改为bf-cfb"
sed -i "s/aes-256-cfb/bf-cfb/g" /etc/shadowsocks.json
~/ss-fly/ss-fly restart
