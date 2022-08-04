from colorama import Fore
import time 
print(Fore.RED+"Paste Youtube link Here:\n")
import pytube
link=input('link:-')
yt=pytube.YouTube(link)
SAVE_PATH = "/sdcard"  

print(Fore.GREEN+"Downloading..\n Please wait...")
try:
 yt.streams.first().download(SAVE_PATH)
 print(Fore.BLUE+'Vedio has been successfully Downloaded into /sdcard 🥳')
except:
 print(Fore.WHITE+'Error')
