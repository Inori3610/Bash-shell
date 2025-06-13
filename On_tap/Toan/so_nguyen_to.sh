#!/bin/bash

read -p "Nhap so can kiem tra " num

if [[ "$num" -lt 2 ]]; then
  echo "$num khong phai la so nguyen to"
  exit 1
fi

for ((i=2; i * i <= num; i++)); do
  if [[ $((num%i)) -eq 0 ]]; then
    echo "$num khong phai la so nguyen to"
    exit 1
  fi
done

echo "$num la so nguyen to"
