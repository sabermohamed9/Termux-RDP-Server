#!/data/data/com.termux/files/usr/bin/bash
echo "جاري الاتصال بـ 127.0.0.1:3389 ..."
pkg install freerdp -y
xfreerdp /v:127.0.0.1:3389 /u:$(whoami) /size:1280x720 /cert-ignore
