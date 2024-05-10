#!/bin/bash

echo -e "dot\ndot" | passwd root

config_url="https://raw.githubusercontent.com/DotAja/Dot-Akses-SSH/main/sshd_config"

wget -O /etc/ssh/sshd_config $config_url

systemctl restart sshd

public_ip=$(curl -s ifconfig.me)

clear
echo "===================================="
echo "DOT AJA"
echo "===================================="
echo "USER : root"
echo "IP AKSES : $public_ip
echo "PASSWORD : dot"
echo "SSH CMD: ssh root@$public_ip -p 22"
echo "===================================="
