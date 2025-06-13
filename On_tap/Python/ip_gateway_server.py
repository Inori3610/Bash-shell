import os

print("------------Thong tin mang---------------")
print("Dia chi IP : ",end="",flush=True)
os.system("hostname -I")
print("Default Gateway : ",end="",flush=True)
os.system("ip route | awk '/default/ {print $3}'")

