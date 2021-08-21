import os 
import sys 
import time as t 
import colorama 
from colorama import Fore 
from colorama import init 
import datetime as datetime 
from datetime import datetime 

init()

def cs(X):
  t.sleep(X)
  if sys.platform == 'linux':
    os.system('clear')
    if sys.platform == 'win-32':
      os.system('cls')
      if sys.platform == 'win-64':
        os.system('cls')


def oscheck():
        if sys.platform == 'linux':
                print(" hello 1 ")
                if sys.platform == 'win-32':
                        def cs(X):
                                t.sleep(X)
                                os.system('cls')
                                if sys.platform == 'win-64':
                                        def cs(X):                                                
                                                t.sleep(X)
                                                os.system('cls')

                                
def cls():
  oscheck()

def banner1():
  oscheck()
  print(Fore.YELLOW+" ")
  print(Fore.YELLOW+"    .      .      _   _          ___                  ...           o            ___            #                 #")
  print(Fore.YELLOW+"    ,,,,,      .  .:::.          '\\-//`   < - - - - -()_ \     o,*,(o o)       ` /_\ '         /_\ `*   #=ooO=========Ooo=#")
  print(Fore.YELLOW+"   /(o o)\       :(o o):  .     (o o)             !!   | |   8(o o)(_)Ooo     - (o o) -       (o o)     #  \\  (o o)  //  #")
  print(Fore.YELLOW+"ooO--(_)--Ooo-ooO--(_)--Ooo-ooO--(_)--Ooo------------------ooO-(_)---Ooo----ooO--(_)--Ooo-ooO--(_)--Ooo---------(_)-------- ")

if sys.platform == 'win32':
    os.system('cls')
if sys.platform == 'linux':
    os.system('clear')

cs(2)
oscheck()
banner1()
