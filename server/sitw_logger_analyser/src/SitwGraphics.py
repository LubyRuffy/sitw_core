'''
Created on 8 Dec 2013

@author: YL
'''


import wx
import datetime, time
#import math
#import random

from SitwData import SitwPara as sitwPara


#from numpy import arange, sin, pi
import matplotlib.dates
#matplotlib.use('WXAgg')

from matplotlib.dates import DateFormatter #HourLocator, MinuteLocator

from matplotlib.backends.backend_wxagg import FigureCanvasWxAgg as FigureCanvas
from matplotlib.backends.backend_wxagg import NavigationToolbar2Wx as NavigationToolbar
#from matplotlib.backends.backend_wx import NavigationToolbar2Wx as NavigationToolbar
from matplotlib.figure import Figure

#-----------------------------------------

import matplotlib.pyplot as plt
from matplotlib.path import Path
import matplotlib.patches as patches

from matplotlib.ticker import MultipleLocator, FormatStrFormatter
#-----------------------------------------



class SitwPanelCanvas(wx.Panel):
    def __init__(self, parent, sitwViewFrame):
        wx.Panel.__init__(self, parent)
        
        self.sitwViewFrame = sitwViewFrame
        
        
        self.Height_Loc = 60
        self.iColWidth = 100
        self.iGraphicHeight = 60 * 24 + self.Height_Loc
        self.iGraphicWidth = self.iColWidth / 2 + 4 * self.iColWidth
        
        
        
        self.figure = Figure()
        #self.figure.patch.set_fc((.9, .9, .9))
        self.figure.patch.set_fc('white')
        self.strTitleTex = self.figure.suptitle('', fontsize = 16, color = 'darkgreen')
        
        self.axes = self.figure.add_subplot(111, axisbg = (.8, .8, .8))
        

        self.axes.set_xlim(0, self.iGraphicWidth)
        self.axes.set_ylim(0, self.iGraphicHeight)
        self.axes.xaxis.set_visible(False)
        #self.axes.yaxis.set_visible(False)

        
        self.majorLocator   = MultipleLocator(60)
        self.majorFormatter = FormatStrFormatter('%d')
        self.minorLocator   = MultipleLocator(15)

        
        self.canvas = FigureCanvas(self, -1, self.figure)
        self.toolbar = NavigationToolbar(self.canvas)
        #self.toolbar.DeleteToolByPos(0) #home
        #self.toolbar.DeleteToolByPos(0) #backward
        #self.toolbar.DeleteToolByPos(0) #forward
        self.toolbar.DeleteToolByPos(7) #subplots
        

        #toolitems = [t for t in NavigationToolbar.toolitems]        
        ##if t[0] in ('Home', 'Pan', 'Zoom', 'Save')]    
        #print 'toolitems', toolitems   
        #print self.toolbar.GetToolsCount(), '###'
        
        
        self.sizer = wx.BoxSizer(wx.VERTICAL)
        
        self.sizer.Add(self.toolbar, 0, wx.EXPAND)
        self.sizer.Add(self.canvas, 1, wx.LEFT | wx.TOP | wx.GROW)
        
        self.SetSizer(self.sizer)
        self.Fit()
        
        
        
        
        
        
    def drawGraphLog(self):
        
        strTitle = 'Sitw Usage Log   ' + sitwPara.Default_Year + '-' + sitwPara.Default_Month + '-' + sitwPara.Default_Day 

        self.strTitleTex.set_text(strTitle)
        
        self.axes.clear()
        
        self.axes.set_xlabel('Node') 
        self.axes.set_ylabel('Time')  
        self.axes.xaxis.label.set_color('lightblue')
        self.axes.yaxis.label.set_color('lightblue')
        self.axes.tick_params(axis='x', colors='white')
        self.axes.tick_params(axis='y', colors='white')         
        

        #self.axes.autoscale_view()
        self.axes.grid(True, 'both')
        #self.figure.autofmt_xdate()
        
        self.axes.yaxis.set_major_locator(self.majorLocator)
        self.axes.yaxis.set_major_formatter(self.majorFormatter)
        
        #for the minor ticks, use no labels; default NullFormatter
        self.axes.yaxis.set_minor_locator(self.minorLocator)      
        
        
                        


        '''
        x = []
        y = []
        for item in sitwPara.List_Time_Mark:
            #print item
            #paras = str(item).split('|')
            #print paras            
            
            Xval = 10 
            Ytime = datetime.datetime.fromtimestamp(time.mktime(time.strptime(item, "%Y-%m-%d|%H:%M:%S")))   
                       
            
            x.append(Xval)
            y.append(Ytime)
            
                    
        print x, y
                    
        dates = matplotlib.dates.date2num(y)
        
        print '@', dates, '@'
        '''




        
        for i in range(24):
            self.drawPatch(0, (23 - i) * 60, self.iColWidth / 2, 60, 'lightblue', str(i) + ':00', va = 'top')
        
        idx = 0
        for item in sitwPara.List_Ana_Report:
            strNode = ''
            iActions = 0
            for rec in item:
                paras = str(rec).split('|')
                #print paras, '@@@' 
                sel = self.time2coord(paras[1], paras[2])
                #print sel, '///'
                
                try:
                    colour = sitwPara.Dic_App_Colour[paras[3]]
                except:
                    colour = 'ivory'

                self.drawPatch(self.iColWidth / 2 + idx * self.iColWidth, sel[1] - self.Height_Loc, self.iColWidth, sel[2], colour, paras[3] + ' : ' + paras[4], va = 'center') 
                iActions += int(paras[4]) 
                strNode = paras[0]

            self.drawPatch(self.iColWidth / 2 + idx * self.iColWidth, self.iGraphicHeight - self.Height_Loc, self.iColWidth, self.Height_Loc, 'lightblue', strNode + ' : ' + str(iActions), va = 'center')
            idx += 1
            
            
            
        self.canvas.draw()
        
        
        
        
        
                              
    def time2coord(self, strT1, strT2):
        
        dtTime1 = self.Str2Date(strT1)
        dtTime2 = self.Str2Date(strT2)
        
        iStartPoint = self.iGraphicHeight - (int(dtTime1.hour) * 60 + int(dtTime1.minute))
        iEndPoint = self.iGraphicHeight - (int(dtTime2.hour) * 60 + int(dtTime2.minute))
        iLength = iStartPoint - iEndPoint
        
        return [iStartPoint, iEndPoint, iLength]
        
        
        
    def Str2Date(self, strDateTime):
        ret = datetime.datetime.fromtimestamp(time.mktime(time.strptime(strDateTime,"%Y-%m-%d %H:%M:%S.%f")))
        return ret
        
        
        
        
    def drawPatch(self, x = 0, y = 0, w = 100, h = 15, c = 'lightgrey', t = '', va = 'center'):
        verts = [
            (x, y), # left, bottom
            (x, y + h), # left, top
            (x + w, y + h), # right, top
            (x + w, y), # right, bottom
            (x, y), # ignored
            ]
        
        codes = [Path.MOVETO,
                 Path.LINETO,
                 Path.LINETO,
                 Path.LINETO,
                 Path.CLOSEPOLY,
                 ]
        
        path = Path(verts, codes)
        patch = patches.PathPatch(path, facecolor = c, lw = 1)
        self.axes.add_patch(patch)

        if va == 'top':
            self.axes.text(x + w/2, y + h - 3, t, ha='center', va='top', fontsize=12, color='black').set_clip_on(True)
        elif va == 'center':
            self.axes.text(x + w/2, y + h/2, t, ha='center', va='center', fontsize=12, color='black').set_clip_on(True)
        elif va == 'bottom':
            self.axes.text(x + w/2, y, t, ha='center', va='bottom', fontsize=12, color='black').set_clip_on(True)
                
                
                
        #self.axes.annotate(r, (x, y), color='w', weight='bold', fontsize=6, ha='center', va='center')       
                
                
                

                



    