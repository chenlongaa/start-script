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

#����bbr
#����TCP BBR
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
#������Ч�������ں�
sysctl   -p
#�鿴�ں��Ƿ��ѿ���BBR
#��bbr�Ƿ���available�б���
sysctl net.ipv4.tcp_available_congestion_control
#�鿴bbr�Ƿ��Ǳ���������tcp congestion control
sysctl net.ipv4.tcp_congestion_control
#�鿴bbr�Ƿ��Ѿ�����
lsmod | grep bbr