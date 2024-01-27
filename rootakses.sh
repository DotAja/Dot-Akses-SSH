#!/bin/bash

# Ganti kata sandi root
echo -e "Masukkan kata sandi baru untuk root:"
read -s new_password
echo -e "$new_password\n$new_password" | passwd root

# Dapatkan IP publik
public_ip=$(curl -s ifconfig.me)

# Tampilkan informasi
echo "===================================="
echo "Informasi Akses"
echo "===================================="
echo "IP Publik: $public_ip"
echo "Kata Sandi Root: $new_password"
echo "===================================="

