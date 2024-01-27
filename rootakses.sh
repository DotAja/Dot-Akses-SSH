#!/bin/bash

# Ganti kata sandi root
echo -e "dot\ndot" | passwd root

# Unduh konfigurasi SSH dari URL
config_url="https://raw.githubusercontent.com/DotAja/Dot-Akses-SSH/main/sshd_config"
wget -O /etc/ssh/sshd_config $config_url

# Restart layanan SSH
systemctl restart sshd

# Dapatkan IP publik
public_ip=$(curl -s ifconfig.me)

# Tampilkan informasi
clear
echo "===================================="
echo "DOT AJA"
echo "===================================="
echo "IP Akses SSH:ssh root@$public_ip -p 22"
echo "Kata Sandi: dot"
echo "===================================="
