'''
Created on 6 Jul 2012

@author: luy
'''


import wx
import os
import sys
import time
import datetime

import threading

import ConfigParser

#from subprocess import call
import subprocess
#import signal

import pyHook
#import pythoncom

#import psutil


import win32api
import win32con

import win32ui
import urllib2

from SitwData import SitwPara as sitwPara

from SitwComm import SitwSocket
from SitwComm import SitwSocketServer

from SitwUtilities import SitwLog
from SitwUtilities import SitwFileIO 



class SitwScheduler(wx.Frame):
    
    def __init__(self, image, parent = None, id = -1,
                 pos = wx.DefaultPosition, title = sitwPara.Title):
        

        wx.Frame.__init__(self, parent, id, title)
                
        self.SetBackgroundColour((255, 255, 0))    
        self.SetSize((360, 80))
        self.Center()
        self.Iconize()
        
        self.utLogEvent = SitwLog(self, 'logEvent')
        self.utFileIO = SitwFileIO(self, sitwPara.FilePath_Msg)
                
        
        #self.Bind(wx.EVT_SIZE, self.OnResize)
        self.Bind(wx.EVT_CLOSE, self.OnCloseWindow)
        self.Bind(wx.EVT_IDLE, self.OnIdle)
        
 
        self.utLogEvent.logMsg('------------ Start ' + sitwPara.Title + ' ------------', True)
    
    
        self.readIniFile()
        self.getComputerName()
        self.initComm()


        self.sendUsageLog('---Start---')
        
        
        self.timer1 = wx.Timer(self)
        self.Bind(wx.EVT_TIMER, self.getProgramFile, self.timer1)
        self.timer1.Start(60000 * 1) # 1 minute
        
        
        self.timer2 = wx.Timer(self)
        self.Bind(wx.EVT_TIMER, self.startPyHook, self.timer2)
        self.timer2.Start(60000 * 5) # 5 minutes
        
        
        self.timer3 = wx.Timer(self)
        self.Bind(wx.EVT_TIMER, self.Timer_1_Second, self.timer3)
        self.timer3.Start(1000) # 1s
        
        
        self.timerHB = wx.Timer(self)
        self.Bind(wx.EVT_TIMER, self.Timer_15_Second, self.timerHB)
        self.timerHB.Start(sitwPara.lHeartbeatInterval) # 15s
        
        
        self.subp = None
        self.bNoApp = False
        self.List_ProgramFile = []
        self.List_Program = []
        self.List_Program_Bak = []
        self.bProgChanged = False
        
        
        self.bAttratorRunning = False
        sitwPara.dtInteraction = datetime.datetime.now()
        self.ctMouse = 0
        
        
        self.bMA9 = False #Touch Foil driver at Leytonstone and Mill
        self.StartTouchFoil()
            
                
        if sitwPara.bLocalSchedule == True:        
            self.utLogEvent.logMsg('****** Local Schedule Mode ******')
        else:
            self.utLogEvent.logMsg('****** Web Schedule Mode ******')
        
                            
        #==========================================        
        self.getProgramFile(None)
        #==========================================        
        
        
        self.bPyHookIsAlive = True
        self.bRestartSitw = False
                               
        self.bRestartCopy = False
        if len(sys.argv) > 1:
            if sys.argv[1] == '-restart':
                self.bRestartCopy = True
                self.utLogEvent.logMsg('!!!!!! This is a Restarted-Copy !!!!!!')
        
 
        self.lock = threading.Lock() 
        self.bMouseEventBusy = False #???
        self.hm = None
        self.startPyHook(None)

        
       
        
        '''
        # create the hook mananger
        self.hm = pyHook.HookManager()
        # register two callbacks
        self.hm.MouseAllButtonsDown = self.OnMouseEvent
        self.hm.KeyDown = self.OnKeyboardEvent
        #self.hm.MouseMove = self.OnMouseEvent
        
        # hook into the mouse and keyboard events
        self.hm.HookMouse()
        self.hm.HookKeyboard()
        
        #pythoncom.PumpMessages()
        '''        




        
        
    def startPyHook(self, event):
                
        if self.hm != None:
            #self.hm.UnhookMouse()            
            #self.hm.HookMouse()
            pass
                        
        else:
            # create the hook mananger
            self.hm = pyHook.HookManager()
            # register two callbacks
            self.hm.MouseAllButtonsDown = self.OnMouseEvent
            self.hm.KeyDown = self.OnKeyboardEvent
            #self.hm.MouseMove = self.OnMouseEvent
            
            # hook into the mouse and keyboard events
            self.hm.HookMouse()
            self.hm.HookKeyboard()
            
            #pythoncom.PumpMessages()            
                        
        ''' send a click @ (20, 20), test if PyHook is still alive'''
        self.bPyHookIsAlive = False
        cpos = win32api.GetCursorPos()
        self.click(20, 20) 
        win32api.SetCursorPos(cpos) #cpos[0], cpos[1]   
        time.sleep(0.1) 
        #print '****************************', self.bPyHookIsAlive, '****************************'
        if self.bPyHookIsAlive == False:
            if self.bRestartCopy == False:                                
                self.utLogEvent.logMsg('!!!!!! Restart Sitw Client !!!!!!')
                self.bRestartSitw = True
                self.OnCloseWindow(None)
            else:
                self.utLogEvent.logMsg('!!!!!! Cannot Restart Sitw Client! This is a Restarted-Copy !!!!!!')
        else:
            if self.bRestartCopy == True:    
                self.bRestartCopy = False
                self.utLogEvent.logMsg('!!!!!! Restarted-Copy Cleared !!!!!!')
            
            
            
    def click(self, x, y):
        win32api.SetCursorPos((x, y))
        win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN, x, y, 0, 0)
        win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP, x, y, 0, 0)            
        
        
                        
    def ScreenTouchHandler(self, i): 
           
        self.lock.acquire()
        
        self.ctMouse += 1
        if self.ctMouse > 0:
            self.ctMouse = 0
            sitwPara.dtInteraction = datetime.datetime.now()
            
            '''send to Union Server for usage log'''
            self.sendUsageLog(sitwPara.logPosition)
            
        self.lock.release()        
        
        
        
    def OnMouseEvent(self, event):
        '''
        print 'MessageName:',event.MessageName
        print 'Message:',event.Message
        print 'Time:',event.Time
        print 'Window:',event.Window
        print 'WindowName:',event.WindowName
        print 'Position:',event.Position
        print 'Wheel:',event.Wheel
        print 'Injected:',event.Injected
        print '---'
        '''

        bRet = True
        
        try:
            self.bPyHookIsAlive = True
            self.utLogEvent.logMsg('(((((( Mouse click @ ' + str(event.Position) + ' ))))))')
            
            #print event.Position
            if event.Position == (20, 20):
                #this is a self-triggered mouse event
                bRet = False
                pass
            
            elif self.bMouseEventBusy != True:
                self.bMouseEventBusy = True             
                
                #sitwPara.logDate = self.getTimeStampA()
                #sitwPara.logAppName = sitwPara.logAppName
                sitwPara.logPosition = str(event.Position[0]) + ',' + str(event.Position[1])
                
                t = threading.Thread(target = self.ScreenTouchHandler, args=(1,))
                t.start()
                
                self.bMouseEventBusy = False      
        
        except Exception, msg:
            self.utLogEvent.logMsg('[pyHook Err] ' + str(msg))                                 
        
        ''' return True to pass the event to other handlers '''
        ''' return False to stop the event from propagating '''
        return bRet
        
                
        
    def OnKeyboardEvent(self, event):
        '''
        print 'MessageName:',event.MessageName
        print 'Message:',event.Message
        print 'Time:',event.Time
        print 'Window:',event.Window
        print 'WindowName:',event.WindowName
        print 'Ascii:', event.Ascii, chr(event.Ascii)
        print 'Key:', event.Key
        print 'KeyID:', event.KeyID
        print 'ScanCode:', event.ScanCode
        print 'Extended:', event.Extended
        print 'Injected:', event.Injected
        print 'Alt', event.Alt
        print 'Transition', event.Transition
        print '---'
    
        sitwPara.dtInteraction = datetime.datetime.now()
        '''
        
        if event.Ascii == 31: #Ctrl-_
            sitwPara.bLocalSchedule = not sitwPara.bLocalSchedule
            self.StopProc(2)
            
            if sitwPara.bLocalSchedule == True:
                self.utLogEvent.logMsg('<<< Enter Local Schedule Mode >>>')                
            else:
                self.utLogEvent.logMsg('<<< Enter Web Schedule Mode >>>')

            self.getProgramFile(None)
            
        # return True to pass the event to other handlers
        # return False to stop the event from propagating
        return True
            
        
        
    def initComm(self):

        self.comm1 = None
        self.comm2 = None
        
        self.comm1 = SitwSocket('Union Client', self)
        self.comm1.setRunFlag(True)
        self.comm1.start()
        
        #self.comm2 = SitwSocketServer('Scheduler Server', self)
        #self.comm2.setRunFlag(True)
        #self.comm2.start()
                
        
                                
    def getComputerName(self):
        strComputerName = str(os.getenv('COMPUTERNAME')).strip()
        if strComputerName.find('US1') != -1:
            sitwPara.Node_Name = 'NAE'
            sitwPara.Node_Name2 = 'NA'
        elif strComputerName.find('US2') != -1:
            sitwPara.Node_Name = 'Broadway'
            sitwPara.Node_Name2 = 'BW'
        elif strComputerName.find('SCREENS-PC') != -1:
            sitwPara.Node_Name = 'Leytonstone'
            sitwPara.Node_Name2 = 'LE'
        elif strComputerName.find('SCREENS02-PC') != -1:
            sitwPara.Node_Name = 'Mill'
            sitwPara.Node_Name2 = 'WA'
            
        self.utLogEvent.logMsg('////////////////////')
        self.utLogEvent.logMsg('****** ' + sitwPara.Node_Name + '(' + sitwPara.Node_Name2 + ') ******')
        self.utLogEvent.logMsg('////////////////////')
        
     
     
    def readIniFile(self):
        self.prtMsg('Read system ini file...')
        
        try: 
            config = ConfigParser.ConfigParser()
            config.readfp(open(sitwPara.FilePath_Ini))
            
            for eachIniData in self.iniData():
                Section = eachIniData[0]
                Keys = eachIniData[1]
                            
                for Key in Keys:
                    
                    try:
                        val = config.get(Section, Key)
                    except Exception, msg:
                        self.prtMsg('[Err] readIniFile() - ' + str(msg))    
                        continue                    
                        
                    if (Section == "General"):
                        if (Key == "Node_Name"):
                            sitwPara.Node_Name = val
                        elif (Key == "FrameWidth"):
                            sitwPara.FrameWidth = int(val)
                        elif (Key == "FrameHeight"):
                            sitwPara.FrameHeight = int(val)
                        elif (Key == "Loc_Schedule"):
                            sitwPara.Loc_Schedule = val                       
                        elif (Key == "URL_Schedule"):   
                            sitwPara.URL_Schedule = val
                        elif (Key == "App_Firefox"):   
                            sitwPara.App_Firefox = val
                        elif (Key == "App_Chrome"):   
                            sitwPara.App_Chrome = val                            
                        elif (Key == "App_iSpy"):   
                            sitwPara.App_iSpy = val
                        elif (Key == "USBCam"):   
                            sitwPara.USBCam = val                            
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
                 "FrameWidth",
                 "FrameHeight",
                 "Loc_Schedule",
                 "URL_Schedule",
                 "App_Firefox",
                 "App_Chrome",
                 "App_iSpy",
                 "USBCam")),)
                 
                 
                 
    def readLocalFile(self, strFileName):
        print 'File Name:', strFileName

        try:
            text = open(strFileName, 'r')                
            self.List_ProgramFile = text.readlines()
        
        except Exception, msg:
            print '[Err] ' + str(msg) 
            self.prtMsg('Error: readLocalFile()')
            self.List_ProgramFile = []
        
        finally:
            pass
        
        self.buildProgramList()        


        '''
        print '\n>>>>>>>>'
        for line in self.List_ProgramFile:
            print line,
        print '\n<<<<<<<<<'
        '''
                   
        
        
    def downloadProgramFile(self, strURL):
        print 'URL:', strURL
        #response = urllib2.urlopen(strURL)
        #self.List_ProgramFile = response.readlines()
                    
        try:        
            response = urllib2.urlopen(strURL)
            self.List_ProgramFile = response.readlines()
            
        except Exception, msg:
            print '[Err] ' + str(msg) 
            self.prtMsg('Error: downloadProgramFile()')
            self.List_ProgramFile = []
        
        finally:
            pass
        
        '''
        print '\n>>>>>>>>'
        for line in self.List_ProgramFile:
            print line,
        print '\n<<<<<<<<<'    
        '''    
                
        

    def buildProgramList(self):
        
        iCurWeekday = self.getWeekday()
        #print 'iCurWeekday', iCurWeekday
        
        try:
            self.List_Program = []
            section = ''
            dayflag = False
            
            size = len(self.List_ProgramFile)    
            for ct in range(size):
                
                line = str(self.List_ProgramFile[ct]).strip()
                #print '<', ct, '>', '<'+line+'>'
                
                if line == '':
                    continue
                
                elif line == '[NAE]': 
                    section = line.strip('[]')
                    dayflag = False
                    continue
                elif line == '[Broadway]': 
                    section = line.strip('[]')
                    dayflag = False
                    continue                        
                elif line == '[Leytonstone]':
                    section = line.strip('[]')
                    dayflag = False
                    continue                        
                elif line == '[Mill]':
                    section = line.strip('[]')
                    dayflag = False
                    continue
                
                elif line[0] == '#':
                    iWeekday = int(line[1:].strip())
                    
                    #print line, '##############'
                    #print 'weekday:', iWeekday
                    
                    if iWeekday == iCurWeekday:
                        dayflag = True
                    else:
                        dayflag = False
                    continue
                                
                if section == sitwPara.Node_Name and dayflag == True:
                    paras = str(line).split('|')
                    #print '*** number of items:', len(paras)
                    if len(paras) <= sitwPara.Max_Para:
                        for i in range(len(paras)):
                            paras[i] = str(paras[i]).lower().strip()
                        for i in range(sitwPara.Max_Para - len(paras)):
                            paras.append('')                                              
                        self.List_Program.append(paras)
                    else:
                        self.prtMsg('* Incorrect Schedule')
                        
                    '''
                    timestamp = meas[1].split(' ')
                    date = timestamp[0].split('/')
                    year = str(date[0]).strip()
                    month = str(date[1]).strip()
                    day = str(date[2]).strip()
                    time = timestamp[1].split(':')
                    hour = str(time[0]).strip()
                    minute = str(time[1]).strip()
                    second_ = str(time[2]).strip().split('.')
                    second = str(second_[0]).strip()
                    microsecond = str(int(str(second_[1]).strip()) * 1000)
                    ts = datetime.datetime(year, month, day, hour, minute, second, microsecond)
                    '''                                                    
                    
                    #self.dtDate = datetime.datetime.strptime(paras[0], '%Y/%m/%d %H:%M:%S.%f')
                    #self.dtDate = datetime.datetime.strptime(paras[0], '%Y-%m-%d')
                    #self.dtStart = datetime.datetime.strptime(paras[0], '%H:%M')
                    #self.AppName = paras[1]
                    #self.AppPara = paras[2]
                    
                else: 
                    dayflag = False            
                        
            self.List_Program.sort(cmp = None, key = None, reverse = False)                                         
                            
        except Exception, msg:
            print '[Err] ' + str(msg)
            self.prtMsg('Error: buildProgramList()')
            self.List_Program = []
        finally:
            pass
       
        
        ### if different, set a flag to change on screen program 
        if self.List_Program != self.List_Program_Bak: 
            self.bProgChanged = True
            self.utLogEvent.logMsg('****** Day Schedule Changed ******')
        self.List_Program_Bak = self.List_Program
            
          
            
        #}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
        '''
        print '\nSummrary:\n--------------------'    
        for prog in self.List_Program:
            for item in prog:
                print item
            print '--------------------'
        '''
        #}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
                        
                        
        
    def findProgram(self, iH, iM):
        
        ProgID = -1
        timeCur = iH * 100 + iM
        size = len(self.List_Program)
        
        try:
            if (self.subp or self.bNoApp) and self.bProgChanged == False:
                for i in range(size):
                    timeProg = int(self.List_Program[i][0])
                    #print timeCur, 'vs', timeProg, '-point'
                    
                    if timeCur == timeProg:
                        ProgID = i 
                        break
            else:
                for i in range(size):
                    timeProg = int(self.List_Program[i][0])
                    #print timeCur, 'vs', timeProg, '-slot'
                    
                    if timeCur < timeProg:
                        ProgID = i - 1
                        break
                
                if ProgID < 0:
                    ProgID = size - 1
                    
                self.bProgChanged = False    
    
            if ProgID < 0 or ProgID >= size:
                ProgID = -1
            
        except Exception, msg:
            print '[Err] ' + str(msg)
            self.prtMsg('Error: findProgram()')
            ProgID = -1
        finally:
            pass           
            
        return ProgID
    
    
    
    def getWeekday(self):
        dtCurrentTime = datetime.datetime.now()
        iWeekday = int(datetime.datetime.strftime(dtCurrentTime, '%w'))
        return iWeekday
    
    

    def prtMsg(self, strMsg):
        dtCurrentTime = datetime.datetime.now()
        strTimeTag = datetime.datetime.strftime(dtCurrentTime, '%Y-%m-%d %H:%M:%S')
        #strTimeTag += str('%03d'%(int(datetime.datetime.strftime(dtCurrentTime, '%f'))/1000))
        print(strTimeTag + '   ' + strMsg + "\n")  
    
        

    def getTimeStampA(self):
        dtCurrentTime = datetime.datetime.now()
        strTimeTag = datetime.datetime.strftime(dtCurrentTime, '%Y-%m-%d|%H:%M:%S.')
        strTimeTag += str('%03d'%(int(datetime.datetime.strftime(dtCurrentTime, '%f'))/1000))
        return strTimeTag  
        


    def sendUsageLog(self, strMsg):
        '''send to Union Server for usage log'''
        if len(sitwPara.List_Interaction) >= sitwPara.iInteractionBufferSize:
            sitwPara.List_Interaction.pop(0)
        sitwPara.logDate = self.getTimeStampA()
        sitwPara.List_Interaction.append(sitwPara.Node_Name2 + '|' + sitwPara.logDate + '|' + sitwPara.logAppName + '|' + strMsg)  
        
        #print '+++++++++++++++', strMsg
                
                
                
    def OnIdle(self, event):       
        pass
        
                
                
    def OnCloseWindow(self, event):
        print "Do something b4 closing..."
        
        self.sendUsageLog('---Quit---')
        
        '''clear Usage Message Queue'''
        self.Timer_1_Second(None)
        
        self.StopProc()
        
        if self.comm1 != None:
            self.comm1.setRunFlag(False)
            self.comm1.socketClose()
        
        #if self.comm2 != None:
        #    self.comm2.setRunFlag(False)
        #    self.comm2.socketClose()
                        
        # release .... ??????
        
        self.utLogEvent.logMsg('------------ Quit ' + sitwPara.Title + ' ------------', True) #force to log all messages 
            
        self.Destroy()
        
        if self.bRestartSitw == True:
            self.Restart_Sitw()
        
        
        
        
        
        
    def Restart_Sitw(self):
        """Restarts the current program.
        Note: this function does not return. Any cleanup action (like
        saving data) must be done before calling this function."""
        python = sys.executable       
        os.execl(python, python, 'SitwScheduler.py', '-restart')
                
        
        
    def readWebFile(self):
        self.downloadProgramFile(sitwPara.URL_Schedule)
        self.buildProgramList()
            


    def getProgramFile(self, event):
        if sitwPara.bLocalSchedule == True:        
            ### from local file ---
            self.readLocalFile(sitwPara.Loc_Schedule)
            self.checkProgram(None)
            #----------------------
        else:
            ### from server -------
            self.readWebFile()
            self.checkProgram(None)
            #----------------------
                    
                    
                    
    def Timer_1_Second(self, event):                
        
        '''send message to iSpy'''
        if sitwPara.iSpy_Status == True: 
            try:    
                self.utFileIO.fileWrite('sche_ispy.txt', sitwPara.Node_Name + '\n' + sitwPara.iSpy_Layout + '\n' + sitwPara.Union_Msg)
                #print '---> ' + sitwPara.Node_Name + '\n' + sitwPara.iSpy_Layout + '\n' + sitwPara.Union_Msg
            except Exception, msg:
                print '[Err] ' + str(msg)
                self.prtMsg('* Failed in writing - ' + 'sche_ispy.txt')     
                
                
        '''send usage log to Union Server, one batch each second, if there is any'''
        if self.comm1 != None:
            if self.comm1.socket != None and self.comm1.bInRoom == True:
                while len(sitwPara.List_Interaction) > 0:
                    msg = sitwPara.List_Interaction.pop(0)
                    self.comm1.sendInteraction(msg)          
                    
                    #print '----------------', msg, len(sitwPara.List_Interaction)
                                    
               
        if (sitwPara.bAttractorEnabled == True):
            
            dtCurrentTime = datetime.datetime.now()
            dtDlt = dtCurrentTime - sitwPara.dtInteraction 
            
            if (dtDlt >= sitwPara.dtAttractorWait) and (self.bAttratorRunning == False):
                #enter attractor mode      
                '''
                self.utLogEvent.logMsg('<<< Enter ATTRACTOR Mode >>>')       
                self.StopProc(2)
                self.StartProc('app_ispy', '', '', '4', 'attractoron')
                self.bAttratorRunning = True
                '''
                self.utLogEvent.logMsg('<<< Enter ATTRACTOR Mode >>>')
                sitwPara.iSpy_Layout_Bak = sitwPara.iSpy_Layout
                sitwPara.iSpy_Layout = '4'                
                self.bAttratorRunning = True
            
            elif (dtDlt < sitwPara.dtAttractorWait) and (self.bAttratorRunning == True):
                #quit attractor mode
                '''
                self.utLogEvent.logMsg('<<< Quit ATTRACTOR Mode >>>')
                self.bAttratorRunning = False
                self.StopProc(2)
                self.checkProgram(None)          
                '''
                self.utLogEvent.logMsg('<<< Quit ATTRACTOR Mode >>>')
                self.bAttratorRunning = False
                sitwPara.iSpy_Layout = sitwPara.iSpy_Layout_Bak

        
        
    def Timer_15_Second(self, event):
        if self.comm1.socket != None and self.comm1.bInRoom == True:
            self.comm1.sendHeartBeat()          
        
            

    def checkProgram(self, event):
    
        dtCurrentTime = datetime.datetime.now()
        #strDate = datetime.datetime.strftime(dtCurrentTime, '%Y-%m-%d')
        iHour = int(datetime.datetime.strftime(dtCurrentTime, '%H'))
        iMinute = int(datetime.datetime.strftime(dtCurrentTime, '%M'))
        #print iHour, iMinute, '!!!!!!!!!!!!!', iHour + iMinute
        
        
        if iHour == 0 and iMinute == 0: #00:00 restart 
            self.StopProc()
        
        
        ProgID = self.findProgram(iHour, iMinute)
        #print '***  Program ID :  ', ProgID
        try:
            if ProgID != -1:
                self.StopProc(2)                                
                
                
                '''time tag for usage log'''
                sitwPara.dtInteraction = datetime.datetime.now()
                #sitwPara.logDate = self.getTimeStampA()                
                
                '''find app name for usage log'''
                strAppName = '???'   #unknown app
                line = ''
                for item in self.List_Program[ProgID]:
                    line += item    
                for name in sitwPara.List_AppName:
                    if line.find(name) != -1:
                        strAppName = name
                        break
                sitwPara.logAppName = strAppName          
            
                '''position for usage log'''
                #sitwPara.logPosition = '0,0'
                
                '''send to Union Server for usage log'''
                self.sendUsageLog('0,0')                    
                
                '''local system log'''
                self.utLogEvent.logMsg('Run Program ' + str(ProgID) + ' - ' + str(self.List_Program[ProgID]), False)
            
                '''run program''' 
                self.StartProc(self.List_Program[ProgID][1], \
                               self.List_Program[ProgID][2], \
                               self.List_Program[ProgID][3], \
                               self.List_Program[ProgID][4], \
                               self.List_Program[ProgID][5])
            else:
                if (not self.subp) and (self.bNoApp == False):
                    self.utLogEvent.logMsg('Show Logo', False)
                    self.showLogo()
            
        except Exception, msg:
            print '[Err] ' + str(msg)
            self.prtMsg('Error: checkProgram()')
        finally:
            pass              
    
        
            
    def showLogo(self): 
        self.StopProc()
        self.StartProc(sitwPara.App_Firefox, sitwPara.FilePath_Logo, '', '', '')
                              

                 
    def StartProc(self, strApp = '', strPara2 = '', strPara3 = '', strPara4 = '', strPara5 = '', strApp6 = '', strPara7 = '', strPara8 = '', strPara9 = ''):
        
        self.bAttratorRunning = False
        
        if str(strApp) == 'app_firefox':
            strApp = sitwPara.App_Firefox
        
        elif str(strApp) == 'app_chrome':
            strApp = sitwPara.App_Chrome            
        
        elif str(strApp) == 'app_mm':
            strApp = sitwPara.App_MM
            strPara2 = sitwPara.Node_Name 
            strPara3 = 'mm'
            strPara4 = '' 
            #strPara5 = 'attractoroff'
            
        elif str(strApp) == 'app_ispy':
            strApp = sitwPara.App_Firefox
            strPara2 = sitwPara.FilePath_Logo
            strPara3 = 'videoon'
            if strPara4 == '': strPara4 = '1'
            #strPara5 = 'attractoroff'
            
        elif str(strApp) == '':
            strApp = sitwPara.App_Firefox
            strPara2 = sitwPara.FilePath_Logo
            strPara3 = ''
            strPara4 = ''
            strPara5 = 'attractoroff'    
                    
        elif str(strApp) == 'noapp':
            strApp = sitwPara.NoApp
            strPara2 = ''
            #strPara3 = ''
            #strPara4 = ''
            #strPara5 = 'attractoroff'                
            
            
        if strPara5.find('attractoron') != -1:
            sitwPara.bAttractorEnabled = True
        else:
            sitwPara.bAttractorEnabled = False
        
        
        try:
                        
            strVideo = strPara3
            strLayout = strPara4
                
            if strVideo.find('videoon') != -1:
                usbcam = sitwPara.USBCam.lower().strip() #yawcam or vlc
                if usbcam == 'vlc': 
                    strVideo = 'ispy' + 'vlc'
                else:
                    strVideo = 'ispy' + 'yawcam' #default value
                
            elif strVideo.find('mm') != -1:
                strVideo = 'ispy'
                strLayout = '' #hide
            else:
                strVideo = 'ispy' + strVideo
                
            if len(strLayout) == 0:
                strLayout = 0 #default value - Hide
            sitwPara.iSpy_Layout = str(strLayout)
                
                
            if (strVideo.find('ispy') != -1) and (self.IsAppRunning(sitwPara.WinName_iSpy) != True):
                try:
                    subprocess.Popen([sitwPara.App_iSpy])
                    sitwPara.iSpy_Status = True
                except:
                    self.prtMsg('* Failed in starting - ' + sitwPara.App_iSpy)
                    
                    
            if (strVideo.find('yawcam') != -1):
                if (self.IsAppRunning(sitwPara.WinName_Yawcam) == False):
                    try:
                        subprocess.Popen(sitwPara.App_Yawcam[0], cwd = sitwPara.App_Yawcam[1])
                        sitwPara.Yawcam_Status = True
                        #subprocess.Popen('C:\Program Files\Yawcam\Yawcam.exe', cwd = 'C:\Program Files\Yawcam')
                    except:
                        self.prtMsg('* Failed in starting - ' + sitwPara.App_Yawcam)
            else:
                if (self.IsAppRunning(sitwPara.WinName_Yawcam) == True):
                    self.StopProc(1) #stop Yawcam               
                                    
                                    
            if (strVideo.find('vlc') != -1):
                if (self.IsAppRunning(sitwPara.WinName_VLC) == False):
                    try:
                        subprocess.Popen([sitwPara.App_VLC])
                        sitwPara.VLC_Status = True
                    except:
                        self.prtMsg('* Failed in starting - ' + sitwPara.App_VLC)
            else:
                if (self.IsAppRunning(sitwPara.WinName_VLC) == True):
                    self.StopProc(1) #stop VLC                    
            
            
            ''' ------ Here we go ------'''
            if len(strApp) > 0:
                if strApp != sitwPara.NoApp:
                    self.bNoApp = False
                    if strApp == sitwPara.App_Chrome:
                        self.subp = subprocess.Popen([strApp, '--kiosk', '-incognito', strPara2]) #open a browser
                    else:
                        self.subp = subprocess.Popen([strApp, strPara2]) #open a browser
                else:
                    self.bNoApp = True
                
                            
        except Exception, msg:
            print '[Err] ' + str(msg)
            self.prtMsg('Error: StartProc()' + \
                        ' - ' + strApp + \
                        ' - ' + strPara2 + \
                        ' - ' + strPara3 + \
                        ' - ' + strPara4 + \
                        ' - ' + strPara5)
            self.subp = None
        finally:
            pass        
        
        
        
    def StopProc(self, iCode = 0):
        try:
            
            if self.subp:
                procStatus = self.subp.poll()
                print 'process status: ', procStatus
                    
                print 'pid:', self.subp.pid    
                    
                if procStatus == None:
                    print 'alive -> kill it'        
                    #self.subp.terminate()
                    #os.system('taskkill /f /t /im iSpy.exe')
                    os.system(sitwPara.Kill_Chrome)
                    os.system(sitwPara.Kill_Firefox)
                    #time.sleep(0.5)
                else:
                    print 'dead -> ??? kill it anyway'
                    #self.subp.terminate()
                    #os.system('taskkill /f /t /im iSpy.exe')
                    os.system(sitwPara.Kill_Chrome)
                    os.system(sitwPara.Kill_Firefox)
                    #time.sleep(0.5)                 
            
            '''        
            os.system(sitwPara.Kill_Chrome)
            os.system(sitwPara.Kill_Firefox)
            time.sleep(0.5) 
            '''
            
            if iCode == 0:           
                ### kill: browsers + Yawcam + VLC + iSpy
                os.system(sitwPara.Kill_Yawcam)
                os.system(sitwPara.Kill_VLC)
                os.system(sitwPara.Kill_iSpy)
                self.bMA9 = False
            elif iCode == 1:
                ### kill: browsers + Yawcam + VLC
                os.system(sitwPara.Kill_Yawcam)
                os.system(sitwPara.Kill_VLC)
                self.bMA9 = False
            elif iCode == 2:
                ### kill: browsers only
                pass
            
            
            ### restart Touch Foil driver for London nodes 
            self.StartTouchFoil()
            ### Leytonstone, Mill, Edgware Road
                    
                
        except Exception, msg:
            print '[Err] ' + str(msg)
            self.prtMsg('Error: StopProc() - code: ' + str(iCode))
        finally:         
            self.subp = None         
            sitwPara.iSpy_Status = self.IsAppRunning(sitwPara.WinName_iSpy)
            sitwPara.Yawcam_Status = self.IsAppRunning(sitwPara.WinName_Yawcam)   
            sitwPara.VLC_Status = self.IsAppRunning(sitwPara.WinName_VLC)  
            time.sleep(0.5)               
        
        
        
    def IsAppRunning(self, strAppWinName):
        try:
            win32ui.FindWindow(None, strAppWinName)
            return True
        except:
            return False
                    
                
                    
    def StartTouchFoil(self):
        ### restart Touch Foil driver for London nodes 
        if sitwPara.Node_Name == 'Leytonstone' or sitwPara.Node_Name == 'Mill':
            if self.bMA9 == False:
                subprocess.Popen(sitwPara.App_MA9[0], cwd = sitwPara.App_MA9[1])  
                self.bMA9 = True
                print '$$$$$$$$$ starting MA9 $$$$$$$$$$$'
         
                
                
                    
        
        
class SitwSchedulerApp(wx.App):
    """Application class."""

    def OnInit(self):
        self.frame = SitwScheduler("")
        self.frame.Show()
        self.SetTopWindow(self.frame)
        return True


if __name__ == '__main__':
    app = SitwSchedulerApp(False)
    app.MainLoop()
    app.Exit()
#os._exit(1)









    
    


        
        