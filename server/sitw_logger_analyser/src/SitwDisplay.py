'''
Created on 8 Mar 2011

@author: YL
'''


import wx
from SitwGraphics import SitwPanelCanvas
from SitwData import SitwPara as sitwPara






class SitwPanelDisplay(wx.Panel):
        
    def __init__(self, parent, ID, sitwViewFrame):
        wx.Panel.__init__(self, parent, ID)   
        
        '''from main frame'''
        self.sitwViewFrame = sitwViewFrame
        
        
        
        self.originalProportion = 0.90 #0.77
        self.originalProportionBack = self.originalProportion
         
                
        self.sp = wx.SplitterWindow(self, -1, wx.DefaultPosition, wx.DefaultSize, wx.SP_LIVE_UPDATE)
        self.sp.SetSashSize(1)
        self.p1 = wx.Panel(self.sp, style = wx.SUNKEN_BORDER)
        self.p2 = wx.Panel(self.sp, style = wx.SUNKEN_BORDER)
        self.p1.Show()
        self.p2.Show()
        self.sp.SetMinimumPaneSize(20)
        self.initpos = parent.Size[1]/3*2
        self.sp.SplitHorizontally(self.p1, self.p2, self.initpos)
        
        self.boxSizer1 = wx.BoxSizer(wx.VERTICAL)
        self.boxSizer1.Add(self.sp, 1, wx.EXPAND)
        self.SetSizer(self.boxSizer1)
        
        
        self.gw1 = SitwPanelCanvas(self.p1, self.sitwViewFrame)
        sitwPara.List_GW.append(self.gw1)
        

        self.boxSizer3 = wx.BoxSizer(wx.HORIZONTAL)
        self.boxSizer3.Add(self.gw1, 1, wx.EXPAND)
        self.p1.SetSizer(self.boxSizer3)
        

      
        

        
        '''log panel'''
        self.logPanel = wx.TextCtrl(self.p2, -1, "", size = wx.DefaultSize, style = wx.TE_READONLY|wx.TE_MULTILINE|wx.TE_RICH2)
        self.logPanel.SetInsertionPoint(0)
#        self.richText.SetStyle(44, 52, wx.TextAttr("white", "black"))
#        points = self.richText.GetFont().GetPointSize() 
#        f = wx.Font(points + 3, wx.ROMAN, wx.ITALIC, wx.BOLD, True)
#        self.richText.SetStyle(68, 82, wx.TextAttr("blue", wx.NullColour, f))
        
        self.boxSizer4 = wx.BoxSizer(wx.HORIZONTAL)
        self.boxSizer4.Add(self.logPanel, 1, wx.EXPAND)
        self.p2.SetSizer(self.boxSizer4)
        #self.logPanel.SetBackgroundColour((35,35,35))
        self.logPanel.SetBackgroundColour((0,0,0))
        font = wx.Font(12, wx.ROMAN, wx.NORMAL, wx.NORMAL, False)
        self.logPanel.SetFont(font)
        self.logPanel.SetStyle(0,1,wx.TextAttr("green", ""))
        
        

        '''event'''
        self.Bind(wx.EVT_SIZE, self.OnResize, self)
        self.Bind(wx.EVT_SPLITTER_SASH_POS_CHANGED, self.OnSashChanged, self.sp)





    def OnResize(self, event):
        
#        if self.sp.GetSplitMode() == wx.SPLIT_HORIZONTAL:
#                tot = max(self.sp.GetMinimumPaneSize(),self.sp.GetParent().GetClientSize().height)
#        else:
#                tot = max(self.sp.GetMinimumPaneSize(),self.sp.GetParent().GetClientSize().width)
#        s= int(round(tot * self.sp.proportion))
            
        newWW = self.GetSize()[0]
        newWH = self.GetSize()[1]
        if newWH < 50:
            newWH = 50
            self.SetSizeWH(newWW, newWH)
        newPos = newWH * self.originalProportion
        self.sp.SetSashPosition(newPos)
        event.Skip()


    def OnSashChanged(self, event):
        newWH = self.GetSize()[1]
        if newWH <= 0:
            newWH = 1
        self.originalProportion = 1.0 * self.sp.GetSashPosition()/newWH
        event.Skip()
        
                    
    def MinLogW(self):      #not be used
        self.originalProportionBack = self.originalProportion
        self.originalProportion = 1.0
        #self.OnResize(wx.EVT_SIZE)
        newWH = self.GetSize()[1]
        newPos = newWH * self.originalProportion
        self.sp.SetSashPosition(newPos)        
        
        
    def RestoreLogW(self):  #not be used  
        self.originalProportion = self.originalProportionBack
        #self.OnResize(wx.EVT_SIZE)        
        newWH = self.GetSize()[1]
        newPos = newWH * self.originalProportion
        self.sp.SetSashPosition(newPos)         
        
        
        
        
        
        