#!/bin/bash
#��װ�������ʹ�õĽű�
#��װshadowsocks
echo test > test.txt
apt update
apt -y install shadowsocks-libev
#mkdir /etc/shadowsocks-libev
cp start-script/shadowsocks-libev/config.json /etc/shadowsocks-libev
#systemctl start shadowsocks-libev ����
systemctl restart shadowsocks-libev


#��װv2ray
wget https://install.direct/go.sh
bash go.sh
cp start-script/v2ray/config.json /etc/v2ray/config.json
systemctl start v2ray