'''
Created on 13 Mar 2013

@author: luy
'''



import os
import wx
import datetime, time

from xml.dom import minidom, Node
from SitwData import SitwPara as sitwPara

    
    
class SitwLog():
    
    def __init__(self, parent, logName):

        self.scheduler = parent
        self.logName = logName        
        self.logPath = sitwPara.FilePath_Log + self.logName
        self.logMessage = '\n\n\n'
        self.logReady = False
        
        if self.makeDir(self.logPath) == True:
            self.scheduler.prtMsg('Log directory <' + self.logPath + '> is ready')
            self.logReady = True
        else:
            self.scheduler.prtMsg('Log directory <' + self.logPath + '> is NOT ready')
            
        
                
    def logMsg(self, strLog = '', bForce = False):    
        
        dtCurrentTime = datetime.datetime.now()
        strTimeTag = datetime.datetime.strftime(dtCurrentTime, '%Y-%m-%d %H:%M:%S')
        strLog = strTimeTag + '\t' + strLog
        print(strLog)  
        self.logMessage += strLog + '\n'
        #self.wrtLog(bForce)
        self.wrtLog(True) #write into file immediately in this app
    
    
    
    def wrtLog(self, bForce = True):
        
        if self.logReady == False:
            self.scheduler.prtMsg('Log directory <' + self.logPath + '> is NOT ready')
            return        
        
        if bForce or len(self.logMessage) > 256:
            '''save to file....'''
            log = None
            logFile = self.logPath + '/' + self.getFileName()
            
            try:                
                log = open(logFile, 'a')
                log.write(self.logMessage)
                
            except: #IOError
                self.scheduler.prtMsg('Error >>> ' + logFile + ' write failure.')
            
            finally:
                if log:
                    log.close()               
            
            self.logMessage = ''
    
    
    
    def getFileName(self):
        
        dtCurrentTime = datetime.datetime.now()
        self.strFileNameDate = datetime.datetime.strftime(dtCurrentTime, '%Y%m%d')
        #self.strFileNameTime = datetime.datetime.strftime(dtCurrentTime, '%H%M%S')
        strFileName = self.logName + '_' + self.strFileNameDate + '.txt'
        return strFileName
    
    
    
    def makeDir(self, logPath):
        
        try:
            if not os.path.exists(logPath):
                os.makedirs(logPath)
        except Exception:
            pass  
        
        if os.path.exists(logPath):
            return True
        else:
            return False    
    
    
    
    
    
class SitwFileIO():
    
    def __init__(self, parent, dirFile):
        self.scheduler = parent
        self.dirFile = dirFile
        self.msgReady = False

        if self.makeDir(dirFile) != True:
            self.scheduler.prtMsg('<' + dirFile + '> is NOT ready')
        else:
            self.msgReady = True

        sitwPara.strDefPath = sitwPara.FilePath_Log + self.dirFile
        
        

    def fileWrite(self, filename, txt):

        fFile = None
        ffn = self.dirFile + filename
        
        try:                
            fFile = open(ffn, 'w')
            fFile.write(txt)
            
        except: #IOError
            self.scheduler.prtMsg('Error >>> ' + ffn + ' write failure.')
        
        finally:
            if fFile:
                fFile.close() 
                


    def fileRead(self, strFileName):
        
        ret = ''
        
        if len(strFileName) == 0:
            
            wildcard = 'Sitw Usage Log (*.txt)|*.txt|All files (*.*)|*.*'
            dialogFile = wx.FileDialog(None, 'Choose a file', '', '', wildcard, wx.OPEN)
            
            dialogFile.SetDirectory(sitwPara.strDefPath)
            
            if dialogFile.ShowModal() == wx.ID_OK:
                sitwPara.strDefPath = dialogFile.GetDirectory()
                strFileName = dialogFile.GetPath()   
            else:
                strFileName = ''    
            
            ret = strFileName    
            
               
        elif len(strFileName) > 0 and os.path.isfile(strFileName) == True: 
            try:
                text = open(strFileName, 'r')                
                sitwPara.List_TextFile = text.readlines()
                ret = strFileName
            
            except Exception, msg:
                print '[Err] ' + str(msg) 
                sitwPara.List_TextFile = []
                ret = ''
                
            finally:
                pass      
            
        return ret
    
    
            
        '''
        try:
            #self.sitwView.SetCursor(wx.StockCursor(wx.CURSOR_WAIT))

            sitwPara.List_Table = []



            for x in range(len(sitwPara.List_Table)):
                #print sitwPara.List_Table[x], '=== table name'
                
                cursor.execute("SELECT * FROM " + sitwPara.List_Table[x])
                columns = list(map(lambda x: x[0], cursor.description))
                #print columns, '=== table columns'
            
                
                sitwPara.List_DataAll[x] = []
                idxSensorID = columns.index(sitwPara.DB_Column_SensorID)    
                idxReading = columns.index(sitwPara.DB_Column_Reading)    
                idxTimestamp = columns.index(sitwPara.DB_Column_Timestamp)    
                for row in cursor:
                    sid = str(row[idxSensorID]).strip()
                    val = str(row[idxReading]).strip()
                    dtDate = self.Str2Date(str(row[idxTimestamp]))
                    #strTimeTag = datetime.datetime.strftime(dtCurrentTime, '%Y-%m-%d %H:%M:%S')
                    year = str(datetime.datetime.strftime(dtDate, '%Y')).strip()
                    month = str(datetime.datetime.strftime(dtDate, '%m')).strip()
                    day = str(datetime.datetime.strftime(dtDate, '%d')).strip()
                    hour = str(datetime.datetime.strftime(dtDate, '%H')).strip()
                    minute = str(datetime.datetime.strftime(dtDate, '%M')).strip()
                    second = str(datetime.datetime.strftime(dtDate, '%S')).strip()
                                        
                    sitwPara.List_DataAll[x].append({'sid':sid, 'val':val, 'year':year, 'month':month, 'day':day, 'hour':hour, 'minute':minute, 'second':second})
            
                #print len(sitwPara.List_DataAll[x])
                #print sitwPara.List_DataAll[x][0]
                #print '================\n'
               
                 
        except Exception: #IOError      
            wx.MessageBox('File ' + filename + ' load failure.', 'Error')
        #except Exception, msg: 
            #wx.MessageBox(msg, 'Error')
        finally:
            if self.conn:
                self.conn.close() 


        
        
        self.sitwView.SetCursor(wx.StockCursor(wx.CURSOR_ARROW))

    dialogFile.Destroy()
    
    self.sitwView.initPanelValueCfg()
    ''' 
    

    
            
            
    def makeDir(self, dirFile):
        try:
            if not os.path.exists(dirFile):
                os.makedirs(dirFile)
        except Exception:
            pass  
        
        if os.path.exists(dirFile):
            return True
        else:
            return False               
            
            
            
 
 
class SitwXML:
    def __init__(self):
        pass
    
    
    def XMLParser(self, strXML):
        
        ret = []
        
        doc = minidom.parseString(strXML)
        
        for node in doc.childNodes :                                      
            for child in node.childNodes :
                        
                if child.nodeType == Node.ELEMENT_NODE and child.tagName == "M" :
                    nd = child.firstChild
                    msgCode = nd.nodeValue
                    ret.append(str(msgCode))
                               
                if child.nodeType == Node.ELEMENT_NODE and child.tagName == "L": # and msgCode != 'u8':
                    for nd in child.childNodes :
                        if nd.nodeType == Node.ELEMENT_NODE and nd.tagName == "A" :
                            pr = nd.firstChild
                            if pr != None:
                                val = pr.nodeValue
                                ret.append(str(val))                     
                 
        return ret         
                 
   
                 
    def handle(self, node):
        for child in node.childNodes :
            if child.nodeType == Node.ELEMENT_NODE :
                if child.tagName == "title":
                    print "Title : " , self.getText(child.firstChild)
                if child.tagName == "author":
                    self.handle_author(child)
                if child.tagName == "pubdate":
                    print "Pubdate : " , self.getText(child.firstChild)
             
             
    def getText(self, node):
        if node.nodeType == Node.TEXT_NODE :
            return node.nodeValue
        else: return ""
         
         
         
                
    