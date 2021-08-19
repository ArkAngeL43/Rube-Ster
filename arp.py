import os 
import colorama 
from colorama import Fore 
from colorama import init 
from datetime import datetime 
import time as t 
import sys 

init()

def cls(X):
    t.sleep(X)
    os.system('clear')

def banner():
    print(Fore.RED+" ______________________________")
    print(Fore.RED+"|<Lets Proove these n00bs wrong| ")
    print(Fore.RED+"|------------------------------|")
    print(Fore.RED+"   \ ")
    print(Fore.RED+"    \ ")
    print(Fore.RED+"        .--. ")
    print(Fore.RED+"       |o_o |")
    print(Fore.RED+"       |:_/ |" )
    print(Fore.RED+"      //   \ \ ")
    print(Fore.RED+"     (|     | ) ")
    print(Fore.RED+"    /'\_   _/`\ ")
    print(Fore.RED+"    \___)=(___/" )
    print(Fore.RED+"-----------RUBE-STER IS SCANNING-------")


cls(3)
def scan1():
    os.system(' sudo arp-scan -l --verbose ')
    print(' --------------------------------------------------- ')
    os.system(' sudo arp-scan -l --verbose -W ./scan/scan.pcap ')
    print(Fore.YELLOW+"")
    print(".")
    t.sleep(0.5)
    print(".")
    t.sleep(0.5)
    print(".")
    t.sleep(0.5)
    print(".")
    t.sleep(0.5)
    print(".")
    t.sleep(0.5)
    print(" | |")
    print('[DATA] Rubster Saved PCAP and is going to scan')
    t.sleep(1)
    print(" | |")
    print('[DATA] Rubster Finished At [INFO]         ===> ' + str(datetime.now()))
    t.sleep(1)
    print(" | |")
    print('[DATA] Rubster starting Again AT          ===> ' + str(datetime.now()))
    t.sleep(1)
    print(" | |")
    print('[DATA] Rubster Waiting 5s for ARP Request ===> ' + str(datetime.now()))
    print(" | |")
    print(Fore.RED+"")
    os.system(' ruby load-s.rb ')
    os.system(' tshark -r ./scan/scan.pcap ')
    print(Fore.BLUE+"")
    print(' [INFO]<>[DATA] ==> RUBSTER SCANNING FINISHED AT ==> ' + str(datetime.now()))

banner()
scan1()
