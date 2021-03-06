#!/bin/bash
sudo apt update
sudo apt install shadowsocks-libev
#mkdir /etc/shadowsocks-libev
sudo -s
echo "{
    "server":"0.0.0.0",
    "server_port":51105,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"mypassword",
    "timeout":300,
    "method":"aes-256-gcm",
    "fast_open": false
}" > /etc/shadowsocks-libev/config.json
sudo systemctl start shadowsocks-libev
