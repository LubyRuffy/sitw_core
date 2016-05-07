'''
Created on 13 Mar 2013

@author: luy
'''



import os
import datetime

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
        self.wrtLog(bForce)
    
    
    
    def wrtLog(self, bForce = True):
        
        if self.logReady == False:
            self.scheduler.prtMsg('Log directory <' + self.logPath + '> is NOT ready')
            return        
        
        if bForce or len(self.logMessage) > 256:
            '''save to file....'''
            log = None
            logFile = self.logPath + '\\' + self.getFileName()
            
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



    def fileWrite(self, filename, txt):

        file = None
        ffn = self.dirFile + filename
        
        try:                
            file = open(ffn, 'w')
            file.write(txt)
            
        except: #IOError
            self.scheduler.prtMsg('Error >>> ' + ffn + ' write failure.')
        
        finally:
            if file:
                file.close() 
                


    def fileRead(self, filename):
        pass
            
            
            
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
         
         
         
                     
                
    