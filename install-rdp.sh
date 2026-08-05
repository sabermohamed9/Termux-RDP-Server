#!/data/data/com.termux/files/usr/bin/bash

echo "========================================"
echo "  تثبيت وتشغيل خادم RDP على هاتفك  "
echo "========================================"

echo "[1/4] جاري تحديث Termux..."
pkg update -y && pkg upgrade -y

echo "[2/4] تثبيت مستودع X11..."
pkg install x11-repo -y

echo "[3/4] تثبيت XRDP و سطح المكتب XFCE4..."
pkg install xrdp xfce4 -y

echo "[4/4] تجهيز وتشغيل الخادم..."
echo "xfce4-session" > ~/.xsession
xrdp -nodaemon &

echo "========================================"
echo "✅ تم التثبيت والتشغيل!"
echo "اتصل عبر تطبيق RDP على: 127.0.0.1:3389"
echo "========================================"
