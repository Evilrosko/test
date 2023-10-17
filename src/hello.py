import os
import socket
import time

print("Mano vardas Karolis")
starttime = time.time()
while True:
        print(socket.gethostname())    
        with open('new.txt','r') as f:
            contents = f.read()
        print(contents)
        
        time.sleep(1.0 - ((time.time() - starttime) % 1.0))