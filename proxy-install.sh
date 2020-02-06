#!/bin/bash
#安装代理程序使用的脚本
#安装shadowsocks
echo test > test.txt
apt update
apt -y install shadowsocks-libev
#mkdir /etc/shadowsocks-libev
cp start-script/shadowsocks-libev/config.json /etc/shadowsocks-libev
#systemctl start shadowsocks-libev 不行
systemctl restart shadowsocks-libev


#安装v2ray
wget https://install.direct/go.sh
bash go.sh
cp start-script/v2ray/config.json /etc/v2ray/config.json
systemctl start v2ray

#配置bbr
#开启TCP BBR
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
#保存生效，配置内核
sysctl   -p
#查看内核是否已开启BBR
#看bbr是否处于available列表中
sysctl net.ipv4.tcp_available_congestion_control
#查看bbr是否是被配置用于tcp congestion control
sysctl net.ipv4.tcp_congestion_control
#查看bbr是否已经启动
lsmod | grep bbr