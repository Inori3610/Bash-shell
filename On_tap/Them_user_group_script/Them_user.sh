#!/bin/bash

read -p "Nhap ten tai khoan moi : " username

if id "$username" &>/dev/null; then
  echo "Tai khoan $username da ton tai trong he thong"
else
  sudo useradd -m "$username"
  if [ $? -eq 0 ]; then
    sudo passwd $username
    echo "Da tao tai khoan thanh cong"
  else
    echo "Loi khi tao tai khoan $username"
  fi
fi





