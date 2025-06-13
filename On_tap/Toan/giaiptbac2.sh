#!/bin/bash

read -p "Nhap vao a : " a
read -p "Nhap vao b : " b
read -p "Nhap vao c : " c

delta=$((b * b - 4 * a * c))

echo "Delta : $delta"

if [[ "$delta" -lt 0 ]]; then
  echo "Phuong trinh vo nghiem"
elif [[ "$delta" -eq 0 ]]; then
  x=$((-b / (2 * a)))
  echo "Phuong trinh co nghiem kep x= $x"
else
  x1=$(echo "-$b + sqrt($delta) / (2 * $a)" | bc)
  x2=$(echo "-$b - sqrt($delta) / (2 * $a)" | bc)

  echo "Phuong trinh co 2 nghiem phan biet : "
  echo "x1 = $x1"
  echo "x2 = $x2"
fi
