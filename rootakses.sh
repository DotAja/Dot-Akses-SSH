#!/bin/sh

sudo su
echo -e "dot\ndot" | passwd root
wget -qO /etc/ssh/sshd_config https://raw.githubusercontent.com/DotAja/Dot-Akses-SSH/main/sshd_config
systemctl restart sshd
public_ip=$(curl -s ifconfig.me)
echo "===================================="
printf "%-30s\n" "DOT AJA"
echo "===================================="
echo "AKSES SSH : ssh@$public_ip:22"
echo "PASSWORD : dot"
echo "===================================="
echo "AKSES SSH"
echo "COPY DAN PASTEKAN KE PUTTY"
echo "===================================="