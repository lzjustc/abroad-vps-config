#!/bin/bash

# install bbr
# wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh

apt-get update && apt-get -y install git
git clone https://github.com/flyzy2005/ss-fly ~/ss-fly

#
CONFIG ='{
    "server":"0.0.0.0",
    "server_port":443,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"1qaz2wsx3edcss",
    "timeout":300,
    "method":"bf-cfb",
    "fast_open": true,
    "workers": 1,
    "prefer_ipv6":true 
}'

mkdir -p /etc/shadowsocks
echo $CONFIG > /etc/shadowsocks/config.json
~/ss-fly/ss-fly.sh -bbr
~/ss-fly/ss-fly.sh -i password 443

echh $CONFIG > /etc/shadowsocks/shadowsocks.json
