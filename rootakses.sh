sudo su
echo -e "$dot\n$dot\n" | passwd root
wget -qO- -O /etc/ssh/sshd_config  https://raw.githubusercontent.com/DotAja/Dot-Akses-SSH/main/sshd_config
systemctl restart sshd
public_ip=$(curl -s ifconfig.me)
echo "===================================="
echo "===================================="
printf "%-30s\n" "DOT AJA"
echo "===================================="
echo "AKSES SSH : ssh@$public_ip:22"
echo "PASSWORD : dot"
echo "===================================="
echo "AKSES SSH"
echo "COPY DAN PASTEKAN KE PUTTY"
echo "===================================="
echo "===================================="