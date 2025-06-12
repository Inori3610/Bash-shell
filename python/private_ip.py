import socket

hostname = socket.gethostname()

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(("8.8.8.8", 80))

private_ip = s.getsockname()[0]
s.close()

print("Your Host name : ", hostname)
print("Your Private IP : ", private_ip)
