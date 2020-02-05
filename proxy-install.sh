#!/bin/bash
#安装代理程序使用的脚本
echo test > test.txt
sudo apt update
sudo apt -y install shadowsocks-libev
#mkdir /etc/shadowsocks-libev
sudo cp start-script/config.json /etc/shadowsocks-libev
#sudo systemctl start shadowsocks-libev 不行
sudo systemctl restart shadowsocks-libev
