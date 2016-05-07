
'''
Created on 18 July 2012

@author: YL
'''



import datetime


class SitwPara():
    
    Title = 'SitW Scheduler v10.0'
    
    
    bLocalSchedule = False   # F:Web Program, T:Local Program
    
    
    FilePath_Ini = '..\\cfg\\SitwScheduler.ini'
    FilePath_Log = '..\\log\\'
    FilePath_Msg = 'c:\\SitwMsg\\'
    FilePath_Logo = '..\\dat\\SitW2.jpg'
    
    #-------------------------------------------------
    Node_Name = 'NAE'
    Node_Name2 = 'NA'
    
    FrameWidth = 640
    FrameHeight = 480
    Loc_Schedule = '..\\cfg\\LocalSchedule.txt'
    
    URL_Schedule = 'http://<your site>/schedule.txt'
        
    App_Firefox = 'C:\Program Files\Mozilla Firefox\firefox.exe'
    App_Chrome = 'C:\Program Files\Google\Chrome\Application\chrome.exe'
    
    App_MM = '..\\dat\\App_MM.bat'
    App_iSpy = 'C:\Program Files\iSpy\iSpy\iSpy.exe'
    App_Yawcam = ['C:\Program Files (x86)\Yawcam\Yawcam.exe', 'C:\Program Files (x86)\Yawcam']
    App_VLC = '..\\dat\\StartVLC.bat'
    App_MA9 = ['C:\\touchfoildriver-MA9\\bin\\rundriver.bat', 'C:\\touchfoildriver-MA9\\bin']
    
    
    NoApp = 'NoApp'
    #-------------------------------------------------
    
    
    Kill_Firefox = 'taskkill /f /t /im firefox.exe'
    Kill_Chrome = 'taskkill /f /t /im chrome.exe'
    Kill_iSpy = 'taskkill /f /t /im iSpy.exe'
    Kill_Yawcam = 'taskkill /f /t /im javaw.exe'
    Kill_VLC = 'taskkill /f /t /im vlc.exe'
    
    
    Max_Para = 10
    
    #-------------------------------------------------
    
    BufferSize256 = 256
    BufferSize512 = 512
    BufferSize1K = 1024
    BufferSize2K = 2048
    BufferSize4K = 4096
    BufferSize8K = 8192
    
	
    UnionHost = '<UNION Server IP address>'
    UnionPort = 8080
    #Port = 80
    #RoomID1 = '7086'
    UnionRoomID1 = 'sitw.interaction'
    UnionRoomID2 = '9999'
    
    Union_Msg = ''
    
    
    logDate = '???'
    logAppName = '???'
    logPosition = '???'
    
    
    iSpy_Status = False
    iSpy_Layout = '2'
    iSpy_Layout_Bak = iSpy_Layout
    Yawcam_Status = False
    VLC_Status = False
    
    
    lHeartbeatInterval = 15000 #15s
    
    bAttractorEnabled = False # False = off, True = on
    lAttractorWait_McrS = 60000000 #1min // #300000000 #5 minutes
    dtAttractorWait = datetime.timedelta(microseconds = lAttractorWait_McrS)
    
    dtInteraction = datetime.datetime.now()
    
    
    SchedulerHost = 'localhost'
    SchedulerPort = 12345
    
    
    List_Interaction = []
    iInteractionBufferSize = 1000
    
    USBCam = 'Yawcam' #VLC
    
    #----------------------------------------------------------------------
    WinName_iSpy = 'iSpy v4.5.9.0'
    WinName_Yawcam = 'Yawcam'
    WinName_VLC = 'VLC media player'
    
    List_AppName = ['app_mm', 'app_ispy', 'attentiongrabber', 'researchshowcase2014', 'nottcont', 'dawnoftheunread', \
                    'videoplayer', 'soundshape', 'mooderator', 'networkblocks', 'briefencounter', 'networkdraw', \
                    'imagetag', 'homeless', 'landart', 'movieapp', 'networkpoetry', 'slideshow', 'noapp']
    #----------------------------------------------------------------------
    
    
    '''
    Video panel layout:
    0 - Hide video panel
    1 - Full screen (2x2 grid layout)
    2 - At the bottom (4 pane/stream standard layout)
    3 - Full screen (1 large local video image + 3 small remote video images at bottom)
    Note:  VIDEO LAYOUT MODE is NOT required for App_MM  and App_iSpy
    '''


    
    '''    
    v10.0
    modify App_MM.bat to support Chrome for running MM
    
    v9.9
    support both Yawcam and VLC as local USB camera source, configured in SitwScheduler.ini
    
    v9.8
    List_AppName: slideshows -> slideshow
    
    v9.7
    start Touch Foil driver at the beginning of this Scheduler, for London nodes
    start Touch Foil driver in StopProc(), as long as Yawcam(Java) has been killed, for London nodes
    
    v9.6
    add 'attentiongrabber', 'researchshowcase2014', 'nottcont', 'dawnoftheunread' into application list
    add union message types 'EXPERIENCE_STARTUP', 'SCHEDULER_STARTUP' & 'SCHEDULER_SHUTDOWN', besides 'INTERACT', for messages: '0,0', 'Start' & 'Quit'
    recover 00:00 restart
    
    v9.5
    add 'NoApp' into application list
    add self.bNoApp flag to indicate a 'NoApp' Status, self.bNoApp(True) is a special case of self.subp(not Null)
    display version number while quit
    
    v9.2
    No_App bug fixed - iSpy goes into hide mode
    
    v9.1 
    supports No_App option
    
    v9.0
    add one more 'try:' in readIniFile()
    minor change on 'ProgID', 'bProgChanged', 'timeProg'
    cancel 00:00 restart
    change Layout only in Attractor mode    
    send UsageLog after getting computer's name
    
    v8.8
    change fake-click position from (0, 0) to (20, 20)
    put '0,0' in usage log message directly
    send usage log to Union Server, one batch each second 
    send <Node_Name2|logDate|logAppName|'Start'> to Union when client Starts
    send <Node_Name2|logDate|logAppName|'Quit'> to Union when client Quits
    clear Usage Message Queue b4 shutting down
    change parameter 'Sample' to 'Loc_Schedule'
    
    v8.6
    add '--kiosk -incognito' when starting Chrome
    
    v8.5
    support of 'app_chrome' & 'videoplayer'
    
    v8.3 
    logDate is shown in milliseconds level 
    
    v8.2
    logPosition is sent in format 'x,y', without space and brackets
    minor changes in Union message parser
    
    v8.0
    logging mechanism added
        List_AppName[] defined
        List_Interaction[] x 1000: Buffer for storing Interactions in case Union Server is not available
        (1)click/touch on screen, send <Node_Name2|logDate|logAppName|logPosition 'x,y'> to Union, or
        (2)start a program, send <Node_Name2|logDate|logAppName|'0,0'> to Union
    
    
    v7.7
    change fake-click position from (-100, -100) to (0, 0) 
    
    v7.6
    add self-restart feature
        test mouse event by sending a click to screen
        if no response then restart SitwScheduler following argument '-restart'
        if it is already a restarted copy then no more restart
        
    v7.5
    try-except solution    
    
    v7.4
    threading solution    
    
    v7.3
    Unhook and hook pyHook mouse event every 3 minute
    A busy flag for mouse event handler -- useless
    
    v7.2
    Restart pyHook every 3 minute -- useless
    
    v7.1
    Bug fixed: wrong status flag of Attractor Mode
    
    v7.0
    download schedule file every 1 minute
    Trigger program changing if schedule changed  
    log available
        
    v6.9
    iSpy mode 4: Attractor Mode
    reload schedule file every 5 minutes
    find self-location automatically - fixed
    
    v6.8
    yawcam is not always on, depends on parameter
         
    v6.6
    ispy is always on
    yawcam is always on unless mm is running    
    
    v6.5
    add demo mode - run local schedule
    using stop code
    
    v6.3
    detect if a program is running
    stop code for StopProc()
    
    v6.2
    add client socket to communicate with Union
    add server socket to communicate with iSpy
    add mouse event detector for screen
    add Attractor mode 
    find self-location automatically
    minor modifications
    
    '''
    
    
    
    
    