'''
Created on 19 Apr 2013

@author: luy
'''


#import wx
import time
#import datetime
from threading import Thread






class SitwThread(Thread):
    
    def __init__(self, name):
        
        Thread.__init__(self)
        
        
        self._name = name
        self._bRunFlag = False
        
        self.setName(self._name)
        self.setDaemon(True)
        
  
        
        
        
                
    def run(self):
        while self._bRunFlag:
            print self._name, '   ', time.ctime()
            time.sleep(1)
            
        Thread.__init__(self)
        self.setName(self._name)
        
        
    def setRunFlag(self, bRunFlag):
        self._bRunFlag = bRunFlag
        
        
    def getRunFlag(self):
        return self._bRunFlag
    
    
    def setActInterval(self, fActInterval_McrS):
        self.fActInterval_McrS = fActInterval_McrS
        
    
    
    
    