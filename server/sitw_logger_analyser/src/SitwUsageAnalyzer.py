'''
Created on 5 Mar 2014

@author: luy
'''



import wx
import os
import sys
import time
import datetime

import ConfigParser

from SitwData import SitwPara as sitwPara


from SitwUtilities import SitwLog
from SitwUtilities import SitwFileIO 


from SitwControl import SitwPanelControl as sitwPanelControl
from SitwDisplay import SitwPanelDisplay as sitwPanelDisplay






class SitwUsageAnalyzer(wx.Frame):
    
    def __init__(self, image, parent = None, cid = -1,
                 pos = wx.DefaultPosition, title = sitwPara.Title + ' (Analyzer)'):
        
        self.bInitDone = False
        
        size = wx.DisplaySize()
        w = size[0]
        h = size[1]
        
                
        wx.Frame.__init__(self, parent, cid, title, pos = (w/4, h/6),
                          size=(1000, 757))
        self.Center()                 

        
        #self.utLogEvent = SitwLog(self, 'logActions')
        self.sitwFileIO = SitwFileIO(self, sitwPara.FilePath_Log + 'logActions')
                
        
        self.Bind(wx.EVT_SIZE, self.OnResize)
        self.Bind(wx.EVT_CLOSE, self.OnCloseWindow)
        self.Bind(wx.EVT_IDLE, self.OnIdle)
 
 
        #self.utLogEvent.logMsg('------------ ' + sitwPara.Title + ' (Analyzer)' + ' ------------', True)
        
        
        '''setup frame stuff'''
        self.CreateStatusBar()
        self.createMenuBar()        
        self.createPanels()
        
        
        #self.readIniFile()
        


        self.initPanelValueCfg()
        #self.initPanelValueOpr()
        
        self.initGraphics()
        
        
        

        '''Flag for mainframe initialisation status'''
        self.bInitDone = True #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        
                                        


     
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
    
    

        
    def OnMenuItemOpen(self, event):
        
        strFileName = self.sitwFileIO.fileRead('')
        if len(strFileName) > 0:    
            
            list_date = self.LogName2Date(strFileName)
            if len(list_date) > 0:
                sitwPara.Default_Year = list_date[0]
                sitwPara.Default_Month = list_date[1]
                sitwPara.Default_Day= list_date[2] 
            
            ''' update dir list'''
            sitwPara.List_DirLogFiles = []
            for f in os.listdir(sitwPara.strDefPath):
                if f.endswith(".txt"):
                    sitwPara.List_DirLogFiles.append(f)
            
            '''update date list'''
            sitwPara.List_DateAll = []
            for item in sitwPara.List_DirLogFiles:
                list_date = self.LogName2Date(item)
                if len(list_date) > 0:
                    sitwPara.List_DateAll.append({'year':list_date[0], 'month':list_date[1], 'day':list_date[2]})
            #print sitwPara.List_DateAll
            #self.analyLogFile()
            self.initPanelValueCfg()

        
        
    def OnMenuItemExit(self, event):
        self.Close()
    
 

    def OnMenuItemAbout(self, event):
        wx.MessageBox(' Lei Ye @ MRL', 'About')
        
        

    def OnResize(self, event):
        
        if self.bInitDone:
            pass

        event.Skip()
        
        
    
    def OnIdle(self, event):       
        pass
        
                
                
    def OnCloseWindow(self, event):
        print "Do something b4 closing..."                        
      
        # release .... ????
        
        #self.utLogEvent.logMsg('========= Quit ' + sitwPara.Title + ' (Analyzer) ==========', True) #force to log all messages 
            
        time.sleep(1)
        
        self.Destroy()
        

        
        
        
        
        
        
        
    def analyLogFile(self):
    
        sitwPara.List_Log_NA = []
        sitwPara.List_Log_BW = []
        sitwPara.List_Log_LE = []
        sitwPara.List_Log_WA = []
            
        for line in sitwPara.List_TextFile:
                    
            paras = str(line).strip().split('\t')
            
            if len(paras) > 1:
                line = paras[1]
                paras = str(line).strip().split('|')
                if len(paras) > 1:
                    
                    if paras[0] == 'NA':
                        sitwPara.List_Log_NA.append(paras)
                    elif paras[0] == 'BW':
                        sitwPara.List_Log_BW.append(paras)                                
                    elif paras[0] == 'LE':
                        sitwPara.List_Log_LE.append(paras)
                    elif paras[0] == 'WA':
                        sitwPara.List_Log_WA.append(paras)                                
        
        '''
        print sitwPara.List_Log_NA        
        print sitwPara.List_Log_BW
        print sitwPara.List_Log_LE
        print sitwPara.List_Log_WA
        '''
        
        self.analyUsage(sitwPara.List_Log_NA, 0)
        self.analyUsage(sitwPara.List_Log_BW, 1)
        self.analyUsage(sitwPara.List_Log_LE, 2)
        self.analyUsage(sitwPara.List_Log_WA, 3)
        
        '''    
        print '-', sitwPara.List_Ana_NA
        print '-', sitwPara.List_Ana_BW
        print '-', sitwPara.List_Ana_LE
        print '-', sitwPara.List_Ana_WA
        '''
        '''or'''
        '''
        for item in sitwPara.List_Ana_Report:
            print '==========='
            print item
        '''    
        
        
        
        
        
    def analyUsage(self, List_Log, idx):
        
        List_Ana = []
        
        item = []
        loc = ''
        app = ''
        t1 = t2 = ''
        session = 0
        touch = 0
        dtCur = 0
        dtPre = 0
        
        for item in List_Log:
            loc = item[0]
            
            if item[3] != app:
                if len(app) == 0:
                    pass
                else:
                    t2 = item[1] + ' ' + item[2] #use next app start time as current app end time 
                    
                    day1 = str(t1).split(' ')[0]
                    day2 = str(t2).split(' ')[0]
                    
                    if day1 == day2:    
                        #print loc, ':', t1, '->', t2, '#', app, ':', session     
                        List_Ana.append(loc + '|' + t1 + '|' + t2 + '|' + app + '|' + str(session))
                    else: 
                        #print 'ignore overnight data ', day1, day2, '#########################'
                        pass
                    
                t1 = item[1] + ' ' + item[2]
                t2 = t1                
                dtPre = self.Str2Date(t1)
                dtCur = dtPre
                #print '@', dtPre, dtCur #--------------
                app = item[3]     
                session = 0                
                touch = 0
                
                if item[4] == '0,0' or str(item[4]).lower().find('start') != -1:
                    pass
                else:   
                    touch += 1        
                
            else:
                if item[4] != '0,0' and str(item[4]).lower().find('quit') == -1:
                    
                    if session == 0 and touch == 0: #very 1st click for this app
                        touch = 1 
                        t2 = item[1] + ' ' + item[2]
                        dtPre = self.Str2Date(t2)
                        dtCur = dtPre                        
                    else:                        
                        t2 = item[1] + ' ' + item[2]
                        dtCur = self.Str2Date(t2)
                        dtDlt = dtCur - dtPre
                        dtPre = dtCur
                        #print '@@', dtPre, dtCur, dtDlt, dtDlt.seconds #----------------
                        if dtDlt.seconds > sitwPara.lSessionInterval_S:               
                            touch = 1
                        else:
                            touch += 1
                            if touch == sitwPara.iTouch4Session: #this is a new session
                                session += 1
                                
                                if idx == 0 and (dtCur.hour < 9 or dtCur.hour >= 21): #ignore NAE before 0900 and after 2100
                                    session = 0
        
        if len(item) > 0:    
            t2 = item[1] + ' ' + '23:59:59.999' #the end of day
            #print loc, ':', t1, '->', t2, '#', app, ':', session, '--'
            List_Ana.append(loc + '|' + t1 + '|' + t2 + '|' + app + '|' + str(session))
            
        #print List_Ana
        if idx == 0:
            sitwPara.List_Ana_NA = List_Ana
        elif idx == 1:
            sitwPara.List_Ana_BW = List_Ana
        elif idx == 2:
            sitwPara.List_Ana_LE = List_Ana
        elif idx == 3:
            sitwPara.List_Ana_WA = List_Ana
        
        sitwPara.List_Ana_Report[idx] = List_Ana
        
        
 
    def Str2Date(self, strDateTime):
        
        ret = datetime.datetime.fromtimestamp(time.mktime(time.strptime(strDateTime,"%Y-%m-%d %H:%M:%S.%f")))
        #ret = datetime.datetime.fromtimestamp(time.mktime(time.strptime(strDateTime, "%Y-%m-%d %H:%M:%S")))
        return ret
    
            
            
    def LogName2Date(self, strLogName):
        List_Ret = []
        idx = str(strLogName).find(sitwPara.Prefix)
        if idx != -1:
            strDate = str(strLogName)[(idx + len(sitwPara.Prefix)):-4]
            if len(strDate) == 8:
                strY = strDate[:4]
                strM = strDate[4:-2]
                strD = strDate[-2:]
                List_Ret = [strY, strM, strD]    
        return List_Ret

        
        
    '''--------------- Functions -----------------'''
    
    def createPanels(self):
        self.controlPanel = sitwPanelControl(self, -1, self)
        self.displayPanel = sitwPanelDisplay(self, -1, self)
        self.displayPanel.SetBackgroundColour((60, 60, 60))
        self.boxSizer = wx.BoxSizer(wx.HORIZONTAL)
        self.boxSizer.Add(self.controlPanel, 0, wx.EXPAND)
        self.boxSizer.Add(self.displayPanel, 1, wx.EXPAND)
        self.SetSizer(self.boxSizer)
        


    def menuData(self):
        # (menuLabel, menuItems(eachLabel, eachStatus, eachParent, eachType, eachHandler))
        return (
                ("&File",
                ("&Open", "Open Database File", "", "", self.OnMenuItemOpen),
                ("", "", "", "", ""),
                ("&Exit", "Exit", "", "", self.OnMenuItemExit)),
                                
                ("&Help",
                ("&About SitwUsageLog...", "", "", "", self.OnMenuItemAbout))        
                )
        

        
    def createMenu(self, menuData):
        menu = wx.Menu()
        menu0 = wx.Menu()
        
        for eachLabel, eachStatus, eachParent, eachType, eachHandler in menuData:
            if not eachLabel:
                menu.AppendSeparator()
                continue
            
            if not eachHandler:
                menu0 = wx.Menu()
                menu.AppendMenu(-1, eachLabel, menu0)
                continue
            
            if eachParent:
                if eachType == "":
                    menuItem = menu0.Append(-1, eachLabel, eachStatus)
                elif eachType == "1":
                    menuItem = menu0.AppendCheckItem(-1, eachLabel, eachStatus)
                elif eachType == "2":
                    menuItem = menu0.AppendRadioItem(-1, eachLabel, eachStatus)    
                self.Bind(wx.EVT_MENU, eachHandler, menuItem)
                continue
    
            if eachType == "":
                menuItem = menu.Append(-1, eachLabel, eachStatus)
            elif eachType == "1":
                menuItem = menu.AppendCheckItem(-1, eachLabel, eachStatus)
            elif eachType == "2":
                menuItem = menu.AppendRadioItem(-1, eachLabel, eachStatus)
            self.Bind(wx.EVT_MENU, eachHandler, menuItem)
               
        return menu           
                
                

    def createMenuBar(self):
        self.menuBar = wx.MenuBar()
        for eachMenuData in self.menuData():
            menuLabel = eachMenuData[0]
            menuItems = eachMenuData[1:]
            self.menuBar.Append(self.createMenu(menuItems), menuLabel)
        self.SetMenuBar(self.menuBar)

           
        
    def initPanelValueCfg(self):
        self.controlPanel.valCfgReload()
        self.controlPanel.initPanelValueCfg()
        
        
        
    def initGraphics(self):
        pass
    
        
        
        #.......
        


    def prtMsg(self, strMsg):
        dtCurrentTime = datetime.datetime.now()
        strTimeTag = datetime.datetime.strftime(dtCurrentTime, '%Y-%m-%d %H:%M:%S')
        #strTimeTag += str('%03d'%(int(datetime.datetime.strftime(dtCurrentTime, '%f'))/1000))
        print(strTimeTag + '   ' + strMsg + "\n")  
        

        
    def prtLog(self, strMsg):
        dtCurrentTime = datetime.datetime.now()
        strTimeTag = datetime.datetime.strftime(dtCurrentTime, '%H:%M:%S.')
        strTimeTag += str('%03d'%(int(datetime.datetime.strftime(dtCurrentTime, '%f'))/1000))
        self.displayPanel.logPanel.SetInsertionPoint(-1)
        self.displayPanel.logPanel.SetStyle(0,1,wx.TextAttr("green", ""))
        self.displayPanel.logPanel.WriteText(strTimeTag + '   ' + strMsg + '\n')  
    

    
    def prtData(self, listData):
        self.displayPanel.logPanel.Clear()
        self.displayPanel.logPanel.SetInsertionPoint(-1)          
        self.displayPanel.logPanel.SetStyle(0,1,wx.TextAttr("green", ""))
        for item in listData:
            for rec in item:
                self.displayPanel.logPanel.WriteText(rec + '\n')                    
            self.displayPanel.logPanel.WriteText('-----------------------\n')    
                    
                    

    def getCurrentPath(self):
        
        path = sys.path[0]
        
        if os.path.isdir(path):
            return path
        elif os.path.isfile(path):
            return os.path.dirname(path)


  
        

        
class SitwUsageApp(wx.App):
    """Application class."""

    def OnInit(self):
        self.frame = SitwUsageAnalyzer("")
        self.frame.Show()
        self.SetTopWindow(self.frame)
        return True



if __name__ == '__main__':
    app = SitwUsageApp(False)
    app.MainLoop()
    app.Exit()




    
    


        
        