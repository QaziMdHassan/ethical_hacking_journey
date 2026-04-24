#!/bin/bash

echo "=================="
echo " LINUX ENUMERATION SCRIPT"
echo "=================="

echo ""
echo "=== SYSTEM INFO ==="
uname -a
hostname
cat /etc/issue

echo ""
echo "=== CURRENT USER ==="
whoami
id

echo""
echo "=== SUDO RIGHTS ==="
sudo -l

echo""
echo "=== SUID FILS ==="
find / -perm -4000 2>/dev/null

echo""
echo "=== CRON JOBS ==="
cat /etc/crontab

echo""
echo "=== OPEN PORTS ==="
netstat -tulpn

echo""
echo "=== WRITABLE FOLDERS ==="
find / -writable -type d 2>/dev/null

echo""
echo "=== ALL USERS ==="
cat /etc/passwd

echo""
echo "=================="
echo " ENUMERATION COMPLETE"
echo "=================="

