'''
Created on 10 Feb 2011

@author: YL
'''


#import wx
#import datetime
import wx.lib.buttons

from SitwData import SitwPara as sitwPara
 
#from SitwUtilities import SitwFileIO

 


[wxID_PANEL1, wxID_PANEL1COMBOBOX1, wxID_PANEL1COMBOBOX2, 
 wxID_PANEL1COMBOBOX3, wxID_PANEL1COMBOBOX4, wxID_PANEL1COMBOBOX5, 
 wxID_PANEL1STATICBOX1, wxID_PANEL1STATICTEXT1, wxID_PANEL1STATICTEXT2, 
 wxID_PANEL1STATICTEXT3, wxID_PANEL1STATICTEXT4,
] = [wx.NewId() for _init_ctrls in range(11)]


class SitwPanelCfg1(wx.Panel):
    def __init__(self, parent, ID, sitwPanelControl):
        
        wx.Panel.__init__(self, parent, ID)
        
        self.sitwPanelControl = sitwPanelControl

        
        
        self.staticBox1 = wx.StaticBox(id=wxID_PANEL1STATICBOX1,
              label=u'Log Library', name='staticBox1', parent=self,
              pos=wx.Point(0, 0), size=wx.Size(200, 152), style=0)
        '''
        self.comboBox1 = wx.ComboBox(choices=[], id=wxID_PANEL1COMBOBOX1,
              name='comboBox1', parent=self, pos=wx.Point(16, 16),
              size=wx.Size(168, 21), style=wx.CB_READONLY, value=u'')
        '''
        self.staticText1 = wx.StaticText(id=wxID_PANEL1STATICTEXT1,
              label=u'Year', name='staticText1', parent=self,
              pos=wx.Point(16, 48), size=wx.Size(84, 13), style=0)

        self.comboBox2 = wx.ComboBox(choices=[], id=wxID_PANEL1COMBOBOX2,
              name='comboBox2', parent=self, pos=wx.Point(104, 48),
              size=wx.Size(80, 21), style=wx.CB_READONLY, value=u'')

        self.staticText2 = wx.StaticText(id=wxID_PANEL1STATICTEXT2,
              label=u'Month', name='staticText2', parent=self,
              pos=wx.Point(16, 72), size=wx.Size(67, 16), style=0)

        self.comboBox3 = wx.ComboBox(choices=[], id=wxID_PANEL1COMBOBOX3,
              name='comboBox3', parent=self, pos=wx.Point(104, 72),
              size=wx.Size(80, 21), style=wx.CB_READONLY, value=u'')

        self.staticText3 = wx.StaticText(id=wxID_PANEL1STATICTEXT3,
              label=u'Day', name='staticText3', parent=self,
              pos=wx.Point(16, 96), size=wx.Size(79, 13), style=0)

        self.comboBox4 = wx.ComboBox(choices=[], id=wxID_PANEL1COMBOBOX4,
              name='comboBox4', parent=self, pos=wx.Point(104, 96),
              size=wx.Size(80, 21), style=wx.CB_READONLY, value=u'')
        '''
        self.staticText4 = wx.StaticText(id=wxID_PANEL1STATICTEXT4,
              label=u'Location', name='staticText4', parent=self,
              pos=wx.Point(16, 120), size=wx.Size(79, 13), style=0)
        '''
        '''
        self.comboBox5 = wx.ComboBox(choices=[], id=wxID_PANEL1COMBOBOX5,
              name='comboBox5', parent=self, pos=wx.Point(104, 120),
              size=wx.Size(80, 21), style=wx.CB_READONLY, value=u'')
        '''     
        '''
        self.comboBox1.Bind(wx.EVT_COMBOBOX, self.OnComboBox1Combobox,
              id=wxID_PANEL1COMBOBOX1)
        '''
        self.comboBox2.Bind(wx.EVT_COMBOBOX, self.OnComboBox2Combobox,
              id=wxID_PANEL1COMBOBOX2)        
        self.comboBox3.Bind(wx.EVT_COMBOBOX, self.OnComboBox3Combobox,
              id=wxID_PANEL1COMBOBOX3)
        self.comboBox4.Bind(wx.EVT_COMBOBOX, self.OnComboBox4Combobox,
              id=wxID_PANEL1COMBOBOX4)
        '''
        self.comboBox5.Bind(wx.EVT_COMBOBOX, self.OnComboBox5Combobox,
              id=wxID_PANEL1COMBOBOX5)
        '''
        
                
#        self.Bind(wx.EVT_ENTER_WINDOW, self.OnPanel1EnterWindow)
#        self.Bind(wx.EVT_LEAVE_WINDOW, self.OnPanel1LeaveWindow)
                
                
                
    def initPanelValue(self):
        
        '''table list'''
        '''
        i = idx = 0
        self.comboBox1.Clear()
        for item in sitwPara.List_Table:
            self.comboBox1.Append(str(item))
            if item == sitwPara.Default_Table:
                idx = i
            i += 1    
        self.comboBox1.Select(idx)
        sitwPara.Default_Table_Idx = idx
        sitwPara.Default_Table = self.comboBox1.Value
        '''
        
        '''year list'''        
        self.comboBox2.Clear()
        sitwPara.List_Year = []
        
        for item in sitwPara.List_DateAll:

            year = item['year']
            month = item['month']
            day = item['day']            
            
            if year not in sitwPara.List_Year:
                sitwPara.List_Year.append(year)

        sitwPara.List_Year.sort(cmp = None, key = None, reverse = True)
        
        i = idx = 0
        for item in sitwPara.List_Year:
            self.comboBox2.Append(item)
            if item == sitwPara.Default_Year:
                idx = i
            i += 1            

        self.comboBox2.Select(idx)
        sitwPara.Default_Year = self.comboBox2.Value 
        
        
        '''month list'''
        self.comboBox3.Clear()
        sitwPara.List_Month = []
        
        for item in sitwPara.List_DateAll:
            
            year = item['year']
            month = item['month']
            day = item['day']
            
            if (year == sitwPara.Default_Year) and (month not in sitwPara.List_Month):
                sitwPara.List_Month.append(month)
        
        sitwPara.List_Month.sort(cmp = None, key = None, reverse = True)
        
        i = idx = 0
        for item in sitwPara.List_Month:
            self.comboBox3.Append(item)
            if item == sitwPara.Default_Month:
                idx = i
            i += 1
            
        self.comboBox3.Select(idx)
        sitwPara.Default_Month = self.comboBox3.Value
        
        
        '''day list'''
        self.comboBox4.Clear()
        sitwPara.List_Day = []
        
        for item in sitwPara.List_DateAll:
            
            year = item['year']
            month = item['month']
            day = item['day']
            
            if (year == sitwPara.Default_Year) and (month == sitwPara.Default_Month) and (day not in sitwPara.List_Day):
                sitwPara.List_Day.append(day)
        
        sitwPara.List_Day.sort(cmp = None, key = None, reverse = False)
        
        i = idx = 0
        for item in sitwPara.List_Day:
            self.comboBox4.Append(item)
            if item == sitwPara.Default_Day:
                idx = i
            i += 1
            
        self.comboBox4.Select(idx)        
        sitwPara.Default_Day = self.comboBox4.Value
        
        
        '''sensor id list'''
        '''
        self.comboBox5.Clear()
        sitwPara.List_SensorID = []
        
        for item in sitwPara.List_DataAll[sitwPara.Default_Table_Idx]:
            
            sid = item['sid']
            year = item['year']
            month = item['month']
            day = item['day']
             
            if (year == sitwPara.Default_Year) and (month == sitwPara.Default_Month) and (day == sitwPara.Default_Day) and (sid not in sitwPara.List_SensorID):
                sitwPara.List_SensorID.append(sid)
        
        sitwPara.List_SensorID.sort(cmp = None, key = None, reverse = False)
        
        i = idx = 0
        for item in sitwPara.List_SensorID:
            self.comboBox5.Append(item)
            if item == sitwPara.Default_SensorID:
                idx = i
            i += 1
            
        self.comboBox5.Select(idx)        
        sitwPara.Default_SensorID = self.comboBox5.Value      
        '''
        self.getDispalydata()
        
        
        
    def getDispalydata(self):
        '''get dispaly data'''
        strFileName = sitwPara.Prefix + sitwPara.Default_Year + sitwPara.Default_Month + sitwPara.Default_Day + sitwPara.Postfix
        self.sitwPanelControl.sitwViewFrame.sitwFileIO.fileRead(sitwPara.strDefPath + '/' + strFileName)
        
        self.sitwPanelControl.sitwViewFrame.analyLogFile()

        for item in sitwPara.List_GW:
            item.drawGraphLog()
        
        self.sitwPanelControl.sitwViewFrame.prtData(sitwPara.List_Ana_Report)

        
        
    '''                            
    def OnComboBox1Combobox(self, event):
        sitwPara.Default_Table = self.comboBox1.Value
        #print 'new Val: ', sitwPara.Default_Table
        self.initPanelValue()
        #print '----', sitwPara.Default_Table_Idx
    ''' 
    def OnComboBox2Combobox(self, event):
        sitwPara.Default_Year = self.comboBox2.Value
        #print 'new Val: ', sitwPara.Default_Year 
        self.initPanelValue() 
    
    def OnComboBox3Combobox(self, event):
        sitwPara.Default_Month = self.comboBox3.Value
        #print 'new Val: ', sitwPara.Default_Month
        self.initPanelValue()
    
    def OnComboBox4Combobox(self, event):
        sitwPara.Default_Day = self.comboBox4.Value
        #print 'new Val: ', sitwPara.Default_Day
        self.initPanelValue()              
    '''
    def OnComboBox5Combobox(self, event):
        sitwPara.Default_SensorID = self.comboBox5.Value
        #print 'new Val: ', sitwPara.Default_SensorID              
        self.initPanelValue()        
    '''
    

    
                        

[wxID_PANEL1, wxID_PANEL1GENBUTTON2, 
] = [wx.NewId() for _init_ctrls in range(2)]


class SitwPanelCfg7(wx.Panel):
    
    def __init__(self, parent, ID, sitwPanelControl):
        
        wx.Panel.__init__(self, parent, ID)
        
        
        self.sitwPanelControl = sitwPanelControl


        self.genButton2 = wx.lib.buttons.GenButton(id=wxID_PANEL1GENBUTTON2,
              label=u'Reload', name='genButton2', parent=self, pos=wx.Point(116,
              8), size=wx.Size(48, 20), style=0)
        self.genButton2.SetFont(wx.Font(8, wx.SWISS, wx.NORMAL, wx.BOLD, False,
              u'MS Shell Dlg 2'))

                      
        self.genButton2.Bind(wx.EVT_BUTTON, self.OnGenButtonReload,
              id=wxID_PANEL1GENBUTTON2)

    
    
    def initPanelValue(self):
        pass

    
    
    def OnGenButtonApply(self, event):
        pass
        

        #................
        
        

    def OnGenButtonReload(self, event):
        #print 'Reload'
        self.sitwPanelControl.valCfgReload()        
        self.sitwPanelControl.initPanelValueCfg()
        
        




