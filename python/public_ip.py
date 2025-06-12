import requests

ip = requests.get("https://api64.ipify.org?format=json").json()["ip"]

print(f"Your public IP address : {ip}")
