#!/bin/bash

# install bbr
# wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh

apt-get update && apt-get -y install git
git clone https://github.com/flyzy2005/ss-fly ~/ss-fly

#
mkdir -p /etc/shadowsocks
cp config /etc/shadowsocks

~/ss-fly/ss-fly.sh

