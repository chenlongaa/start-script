#!/bin/bash
sudo apt update
sudo apt install shadowsocks-libev
git clone https://github.com/chenlongabc/start-script.git
#mkdir /etc/shadowsocks-libev
cp start-script/config.json /etc/shadowsocks-libev
sudo systemctl start shadowsocks-libev