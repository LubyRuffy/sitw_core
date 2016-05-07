'''
Created on 8 Mar 2011

@author: YL
'''


import wx
#from SitwData import SitwPara as sitwPara
import SitwPanelCfg as sitwPanelcfg





class SitwPanelControl(wx.Panel):
    
    SPACING = 3

    def __init__(self, parent, ID, sitwViewFrame):
        
        wx.Panel.__init__(self, parent, ID, style = wx.RAISED_BORDER)
        self.SetBackgroundColour((100,120,120)) 
        
        '''from main frame'''
        self.sitwViewFrame = sitwViewFrame

        
        
        '''init cfg & opr panels'''        
        self.cfg = wx.Panel(self, -1, style = wx.SUNKEN_BORDER)   
        self.opr = wx.Panel(self, -1) 
        self.opr.SetBackgroundColour((160, 180, 180))
        self.boxSizer1 = wx.BoxSizer(wx.VERTICAL)
        self.boxSizer1.Add(self.cfg, 1, wx.ALL)
        #self.boxSizer1.Add(self.opr, 0, wx.ALL)
        self.SetSizer(self.boxSizer1)
        
        '''init config panels'''
        self.cfg1 = self.createConfig1()
        self.cfg7 = self.createConfig7()
        self.boxSizer2 = wx.BoxSizer(wx.VERTICAL)
        self.boxSizer2.Add(self.cfg1, 0, wx.ALL, self.SPACING)
        self.boxSizer2.Add(self.cfg7, 0, wx.ALL, self.SPACING)
        self.cfg.SetSizer(self.boxSizer2)

  
    
    
    def createConfig1(self):
        cfg0 = sitwPanelcfg.SitwPanelCfg1(self.cfg, -1, self)
        cfg0.staticBox1.SetForegroundColour('white')
        return cfg0
    
    def createConfig7(self):
        cfg0 = sitwPanelcfg.SitwPanelCfg7(self.cfg, -1, self)
        return cfg0
    

           
    '''cfg'''       
    def initPanelValueCfg(self):    
        self.cfg1.initPanelValue()
        self.cfg7.initPanelValue()
        
  
        
        
    def valCfgApply(self):
        pass
        
        
    
    def valCfgReload(self):
        pass
        
        
        
                
