import os

website = input("Enter website to ping : ")
response = os.system(f"ping -c 3 {website}")

if response == 0:
    print(f"{website} is reachable!")
else:
    print(f"{website} is unreachable")
