import socket

print("Searching DNS ip")

URL = input("Nhap dia chi ten mien can kiem tra :")
ip = socket.gethostbyname(URL)
print(f"IP cho {URL} : {ip}")
