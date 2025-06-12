#!/bin/bash/

tong=0
echo "Nhap vao so tu nhien n "
read n

for ((i = 0; i <= $n; i++)); do
    if [ $(($i % 2)) -eq 0 ]; then
        if [ $(($i % 5)) -eq 0 ]; then
            tong=$(($tong + $i))
        fi
    fi
done

echo "Tong cac so tu nhien chia het cho 2 va 5 cua $n : $tong"

exit 0
