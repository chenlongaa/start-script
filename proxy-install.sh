#!/bin/bash
#��װ�������ʹ�õĽű�
echo test > test.txt
sudo apt update
sudo apt -y install shadowsocks-libev
#mkdir /etc/shadowsocks-libev
sudo cp start-script/config.json /etc/shadowsocks-libev
#sudo systemctl start shadowsocks-libev ����
sudo systemctl restart shadowsocks-libev
