import os

print("--------Thong tin he thong--------")

print("Ten may chu : ",end="",flush=True)
os.system("hostname")
print("Gateway : ",end="",flush=True)
os.system("ip route | awk '/default/ {print $3}'")
