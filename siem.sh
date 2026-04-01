#!/bin/zsh

LOG="/var/log/auth.log"

echo "==== Security Analysis Report ===="
echo "Time: $(date)"
echo ""

# Unsecessful Logins
failed=$(grep "Failed password" $LOG | wc -l)

echo "[!]Brute Force Detection"
if [ $failed -gt 5 ]; then
   echo " Critical:  Possible Brute Force Attack ($failed attempts)"
elif [ $failed -gt 2 ]; then
   echo " WARNING: Suspicious Activity ($failed attempts)"
else
   echo  "Normal Activity ($failed attempts)"
fi
echo ""

# Successful Logins
echo "[!]Successful Login Detected:"
grep "Accepted password" $LOG | tail -3
echo ""

# User Creation
echo "[!]Suspicious User Creation:"
grep "useradd" $LOG
echo ""

# Sudo Usage
echo "[!]Privilege Escalation"
grep "sudo" $LOG | tail -5
echo ""

echo "==== END OF REPORT ===="
