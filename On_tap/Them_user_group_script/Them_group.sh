#!/bin/bash

read -p "Nhap vao ten group them moi : " groupname

if groups | grep "$groupname" &>/dev/null; then
  echo "Group $groupname da ton tai trong he thong"
else
  sudo groupadd "$groupname"
  if [ $? -eq 0 ]; then
    echo "Da tao group $groupname thanh cong"
  else
    echo "Loi khi tao Group $groupname"
  fi

fi
read -p "Ban co muon them user moi vao group $groupname moi lap khong ? (Y/N)" choice

if [[ "$choice" == "Y" || "$choice" == "y" ]]; then
  while :; do
    read -p "Nhap vao ten user moi : " username
    if id "$username" &>/dev/null; then
      echo "Username $username da ton tai"
    else
      sudo useradd -m $username
      sudo passwd $username
      echo "Da tao user $username thanh cong"
      sudo usermod -aG "$groupname" "$username"
      echo "Da them $username vao $group"
    fi

    read -p "Ban co muon them user khac vao nua khong (Y/N)" choice
    if [[ "$choice" == "N" || "$choice" == "n" ]]; then
      echo "Thoat chuong trinh"
      break
    fi
  done
else
  echo "Thoat chuong trinh"
fi
  
