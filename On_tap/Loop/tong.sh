#!/bin/bash

tong = 0
echo "Nhap so tu nhien N "

read n
for ((i = 1; i <= $n; i++)); do
    tong=$(($tong + $i))

done
echo "Tong cac so tu 1 den $n la : " $tong

exit
