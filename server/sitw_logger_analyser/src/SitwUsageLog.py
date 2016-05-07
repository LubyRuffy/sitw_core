'''
Created on 10 Feb 2014

@author: luy
'''


import wx
#import os
#import sys
#import time
import datetime

import ConfigParser

from SitwData import SitwPara as sitwPara

from SitwComm import SitwSocket


from SitwUtilities import SitwLog
#from SitwUtilities import SitwFileIO 



class SitwUsageLog(wx.Frame):
    
    def __init__(self, image, parent = None, cid = -1,
                 pos = wx.DefaultPosition, title = sitwPara.Title):
        

        wx.Frame.__init__(self, parent, cid, title)
                
        self.SetBackgroundColour((0, 255, 0))    
        self.SetSize((360, 80))
        self.Center()
        self.Iconize()
        
        self.utLogEvent = SitwLog(self, 'logActions')
                
        
        #self.Bind(wx.EVT_SIZE, self.OnResize)
        self.Bind(wx.EVT_CLOSE, self.OnCloseWindow)
        self.Bind(wx.EVT_IDLE, self.OnIdle)
        
 
        self.utLogEvent.logMsg('------------ ' + sitwPara.Title + ' ------------', True)
        
 
        self.readIniFile()
        self.initComm()

        
        
        self.timer3 = wx.Timer(self)
        self.Bind(wx.EVT_TIMER, self.Timer_1_Second, self.timer3)
        self.timer3.Start(1000) # 1s
        
        
        self.timerHB = wx.Timer(self)
        self.Bind(wx.EVT_TIMER, self.Timer_15_Second, self.timerHB)
        self.timerHB.Start(sitwPara.lHeartbeatInterval) # 15s
        
        
       
        
     
        
    def initComm(self):

        self.comm1 = None
        self.comm2 = None
        
        self.comm1 = SitwSocket('Union Client', self)
        self.comm1.setRunFlag(True)
        self.comm1.start()
        
        #self.comm2 = SitwSocketServer('Scheduler Server', self)
        #self.comm2.setRunFlag(True)
        #self.comm2.start()
                
        
                                
     
    def readIniFile(self):
        self.prtMsg('Read system ini file...')
        
        try: 
            config = ConfigParser.ConfigParser()
            config.readfp(open(sitwPara.FilePath_Ini))
            
            for eachIniData in self.iniData():
                Section = eachIniData[0]
                Keys = eachIniData[1]
                            
                for Key in Keys:
                    val = config.get(Section, Key)
                    if (Section == "General"):
                        if (Key == "Node_Name"):
                            sitwPara.Node_Name = val
                        else:
                            pass
                            
                    print('[' + Section + '] ' + Key + ' = ' + val)
                    continue
                
        except Exception, msg:
            print '[Err] ' + str(msg)
            self.prtMsg('Error: readIniFile()')
        
        finally:
            pass
        
                

    def iniData(self):
        return (("General",
                ("Node_Name",
                 "Other")),)
                 
                 
                 
    
    def getWeekday(self):
        dtCurrentTime = datetime.datetime.now()
        iWeekday = int(datetime.datetime.strftime(dtCurrentTime, '%w'))
        return iWeekday
    
    

    def prtMsg(self, strMsg):
        dtCurrentTime = datetime.datetime.now()
        strTimeTag = datetime.datetime.strftime(dtCurrentTime, '%Y-%m-%d %H:%M:%S')
        #strTimeTag += str('%03d'%(int(datetime.datetime.strftime(dtCurrentTime, '%f'))/1000))
        print(strTimeTag + '   ' + strMsg + "\n")  
        


    def OnIdle(self, event):       
        pass
        
                
                
    def OnCloseWindow(self, event):
        print "Do something b4 closing..."

        if self.comm1 != None:
            self.comm1.socketClose()
        
        if self.comm2 != None:
            self.comm2.socketClose()
                        
      
        
        # release .... ????
        
        self.utLogEvent.logMsg('========= Quit ' + sitwPara.Title + ' ==========', True) #force to log all messages 
            
        self.Destroy()
        

        
        
        
        


                    
                    
    def Timer_1_Second(self, event):        
        pass
        
        
    def Timer_15_Second(self, event):
        if self.comm1.socket != None and self.comm1.bInRoom == True:
            self.comm1.sendHeartBeat()          
        
            
                    
        
        
class SitwUsageApp(wx.App):
    """Application class."""

    def OnInit(self):
        self.frame = SitwUsageLog("")
        self.frame.Show()
        self.SetTopWindow(self.frame)
        return True


if __name__ == '__main__':
    app = SitwUsageApp(False)
    app.MainLoop()
    app.Exit()










    
    


        
        