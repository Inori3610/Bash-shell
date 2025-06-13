#!/bin/bash

echo "Nhap ten file can tim dong dai nhat :"
ls
read -p "Ten file : " ten_file
echo "Dong dai nhat trong file : "
grep -E "^.{$(wc -L < $ten_file)}$" $ten_file
echo "So luong ky tu : $(wc -L $ten_file)"
