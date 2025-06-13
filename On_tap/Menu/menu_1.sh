#!/bin/bash

while :; do
  clear
  echo "---------Main Menu-----------"
  echo "SERVER NAME : $(hostname)"
  echo "Login User : $(whoami)"
  echo "1. Hien thi thoi gian hien tai"
  echo "2. Tim tat ca cac tap tin cau hinh .conf trong He Thong"
  echo "3. Hien thi thong tin dia chi IP"
  echo "4. Hien thi cac che do tuong lua"
  echo "5. Thoat"

  echo "Nhap vao lua chon tu 1-5 : "
  read choice

  case $choice in
    1)
      date +"Hom nay la ngay %d thang %m nam %Y | %H:%M:%S"
      read -p "Nhan Enter de tiep tuc"
      ;;
    2)
      echo "Tat ca cac tep tin duoi .conf co trong HT : "
      sudo find / -name "*.conf"
      read -p "Nhan Enter de tiep tuc"
      ;;
    3)
      ifconfig
      read -p "Nhan Enter de tiep tuc"
      ;;
    4)
      echo "Trang thai tuong lua"
      sudo ufw status
      read -p "Nhap Enter de tiep tuc"
      ;;
    5)
      echo "Chuong trinh chay tren $(hostname) ket thuc"
      exit 0
      ;;
    *)
      echo "Lua chon khong hop le"
      read -p "Nhap Enter de tiep tuc"
      ;;
    esac
  done
