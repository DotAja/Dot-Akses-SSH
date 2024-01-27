#!/bin/bash

# Ganti kata sandi root
echo -e "dot123\ndot123" | passwd root

# Unduh konfigurasi SSH dari URL
config_url="https://raw.githubusercontent.com/DotAja/Dot-Akses-SSH/main/sshd_config"
wget -O /etc/ssh/sshd_config $config_url

# Restart layanan SSH
systemctl restart sshd

# Dapatkan IP publik
public_ip=$(curl -s ifconfig.me)

# Tampilkan informasi
echo "===================================="
echo "Informasi Akses"
echo "===================================="
echo "IP Publik: $public_ip"
echo "Kata Sandi Root: dot123"
echo "===================================="
