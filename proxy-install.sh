#!/bin/bash
#安装代理程序使用的脚本
#安装shadowsocks
echo test > test.txt
sudo apt update
sudo apt -y install shadowsocks-libev
#mkdir /etc/shadowsocks-libev
sudo cp start-script/shadowsocks-libev/config.json /etc/shadowsocks-libev
#sudo systemctl start shadowsocks-libev 不行
sudo systemctl restart shadowsocks-libev


#安装v2ray
wget https://install.direct/go.sh
sudo bash go.sh
sudo cp start-script/v2ray/config.json /etc/v2ray/config.json
sudo systemctl start v2ray