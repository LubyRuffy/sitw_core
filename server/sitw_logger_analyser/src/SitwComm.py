'''
Created on 19 Apr 2013

@author: luy
'''


#import wx
import time
import datetime
import socket

from SitwData import SitwPara as sitwPara
from SitwUtilities import SitwXML
from SitwThread import SitwThread



class SitwSocket(SitwThread):
    
    def __init__(self, name, sysMain):
        
        SitwThread.__init__(self, name)
        
        self.sysMain = sysMain
        self.bInRoom = False
        
        self.socket = None
        
        self.tail = ''
        
        self.dtHeartbeat = datetime.datetime.now()
        
        self.xmlParser = SitwXML()    
   
        self.Host = ''
        self.Port = ''
        self.RoomID = ''
        
        
        
    def socketInit(self, Host, Port, RoomID):

        self.Host = Host
        self.Port = Port
        self.RoomID = str(RoomID)
        
        print 'init Union Client ' + self.RoomID, '<', self.Host, ':', self.Port, '>'
        
        self.socketClose()
         
        try:
            self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            self.socket.connect((self.Host, self.Port))
        except Exception, msg:
            print '[Err] ' + self.name + str(msg)
            self.socketClose()
        else:
            if self.socket!= None:
                print 'Client OK!'
            else:
                print 'Client Not OK!'

            
        
        
    def socketClose(self):
        
        print 'close Client ' + self.RoomID
        
        if self.socket != None:
            
            try:
                self.socket.close()
            except Exception, msg:
                print '[Err] ' + self.name + str(msg)
        
        self.bInRoom = False
        self.socket = None
        
        
        
    def run(self):        
        
        while self._bRunFlag:
            
            time.sleep(0.5) #500ms

            if self.socket == None:
                time.sleep(2) #2s
                self.socketInit(sitwPara.UnionHost, sitwPara.UnionPort, sitwPara.UnionRoomID1)
                #self.socketInit(sitwPara.SchedulerHost, sitwPara.SchedulerPort, sitwPara.UnionRoomID1)

            if self.socket != None:
                if self.bInRoom != True:
                    self.doHandshake()
                    self.doCreateRoom()
                    self.doJoinRoom()
                    time.sleep(2) #2s
                       
            
            if self.socket != None:
                dataIn = self.socketRead()
    
                para = str(dataIn).split('\0')
                
                if len(para) > 1:
                    para[0] = self.tail + para[0]
                    for i in range(len(para) - 1):
    
                        line = para[i].strip()
                        try:
                            msg = self.xmlParser.XMLParser(line)
                        except:
                            msg = line
                        print msg, '\n'
                        
                        self.msgParser(msg)
                        
                    self.tail = para[len(para) - 1]                 
                
                else:
                    self.tail = self.tail + para[0]
                    if len(self.tail) > sitwPara.BufferSize8K:
                        print '<' + self.RoomID +'> ! message is too long, cleared'
                        self.tail = ''
                                
            #wx.CallAfter(callback function, '')                
        #wx.CallAfter(callback function, '')    
        SitwThread.__init__(self, self._name)  
            
 
 
    def msgParser(self, msg):
        if len(msg) > 0:
            msgCode = msg[0]
            if msgCode == 'u66':
                if msg[4] == 'true':
                    print '<' + self.RoomID + '> Hello :: SUCCESS\n'
            elif msgCode == 'u29':
                self.UserID = msg[1]
                print '<' + self.RoomID + '> User ID :: ' + self.UserID + '\n'
            elif msgCode == 'u63':
                print '<' + self.RoomID + '> Handshake :: SUCCESS\n'
            elif msgCode == 'u32':
                print '<' + self.RoomID + '> Create Room <' + msg[1] + '> :: ' + msg[2] + '\n'
            elif msgCode == 'u131':
                print '<' + self.RoomID + '> Room <' + msg[1] + '> Occupant Count :: ' + msg[2] + '\n'                
            elif msgCode == 'u72':
                print '<' + self.RoomID + '> Join Room <' + msg[1] + '> :: ' + msg[2] + '\n'
                if msg[2] == 'SUCCESS':
                    self.bInRoom = True
            elif msgCode == 'u76':
                print '<' + self.RoomID + '> Leave Room <' + msg[1] + '> :: ' + msg[2] + '\n'
                if msg[2] == 'SUCCESS':
                    self.bInRoom = False                    
            elif msgCode == 'u84':
                print '<' + self.RoomID + '> ! <SESSION_TERMINATED> by server\n'
                #self.setRunFlag(False)
                self.bInRoom = False
            elif msgCode == 'u7':
                if len(msg) >= 6:
                    msgName = msg[1]
                    msgData = msg[5]
                    #print '<' + self.RoomID + '> ' + repr (msgData)
                    if msgName in sitwPara.List_UnionMsg_Type:                   
                        self.sysMain.utLogEvent.logMsg(msgData)


                
    def sendHeartBeat(self):      
        self.doSendMsg('HEARTBEAT', sitwPara.Node_Name2 + '_HEARTBEAT')                        
    
        
    def sendInteraction(self, msg):      
        self.doSendMsg('INTERACT', msg) 
    
        
    def doHandshake(self):
        msgHandshake = '<U><M>u65</M><L><A>Demo1</A><A>Python</A><A>1.9.3</A></L></U>\0'
        self.socketSend(msgHandshake)
        
        
    def doCreateRoom(self):
        msgCreateRoom = '<U><M>u24</M><L><A>'+ self.RoomID +'</A><A></A><A></A><A></A></L></U>\0'
        self.socketSend(msgCreateRoom)
        
        
    def doJoinRoom(self):
        msgJoinRoom = '<U><M>u4</M><L><A>' + self.RoomID + '</A><A></A></L></U>\0'
        self.socketSend(msgJoinRoom)
        
        
    def doLeaveRoom(self):
        msgLeaveRoom = '<U><M>u10</M><L><A>' + self.RoomID + '</A><A></A></L></U>\0'
        self.socketSend(msgLeaveRoom)       
         
                              
    def doSendMsg(self, msgName, msg):
        #msgSendMsg = '<U><M>u1</M><L><A>myMsgName</A><A>' + self.RoomID + '</A><A>true</A><A></A><A>' + str(datetime.datetime.now()) + '</A><A>' + str(sitwPara.Node_Name) + '</A><A>'+ msg +'</A></L></U>\0'
        msgSendMsg = '<U><M>u1</M><L><A>' + msgName + '</A><A>' + self.RoomID + '</A><A>true</A><A></A><A>' + msg +'</A></L></U>\0'
        self.socketSend(msgSendMsg)                        

 
    def socketRead(self):

        dataIn = ''
        try:
            dataIn = self.socket.recv(1024)
        except Exception, msg:
            print '[Err] ' + self.name + str(msg)
            self.socketClose()
            dataIn = ''
        return dataIn
    
        
    def socketSend(self, data):
        try:
            self.socket.sendall(data)
        except Exception, msg:
            print '[Err] ' + self.name + str(msg)
            self.socketClose()
      
 
        
