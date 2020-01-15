#!/bin/bash
sudo snap install shadowsocks-libev
echo "{
    "server":"0.0.0.0",
    "server_port":23333,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"mypassword",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}" > /etc/shadowsocks-libev/config.json
sudo systemctl start shadowsocks-libev