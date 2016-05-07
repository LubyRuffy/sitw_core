
'''
Created on 10 Feb 2014

@author: YL
'''



class SitwPara():
    
    Title = 'SitW UsageLog v2.5'
    
 
    FilePath_Ini = '../cfg/SitwUsageLog.ini'
    FilePath_Log = '../log/'
 
    
    #-------------------------------------------------
    Node_Name = 'UsageLog'
    Node_Name2 = 'UL'
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
    
    
    logDate = ''
    logAppName = '???'
    logPosition = ''
    

    lHeartbeatInterval = 15000 #15s
    lSessionInterval_S = 30 #30s 
    lSessionInterval_McrS = 30000000 #30 x 1000ms 
    
    iTouch4Session = 2
    
    strDefPath = ''
    Prefix = 'logActions_'
    Postfix = '.txt'
    List_DirLogFiles = []
    
    List_TextFile = []
    List_Log_NA = []
    List_Log_BW = []
    List_Log_LE = []
    List_Log_WA = []
    
    List_Ana_NA = []
    List_Ana_BW = []
    List_Ana_LE = []
    List_Ana_WA = []
    List_Ana_Report = [List_Ana_NA, List_Ana_BW, List_Ana_LE, List_Ana_WA]
    
    List_Time_Mark = ['2014-04-01|23:00:00', '2014-04-01|22:00:00', '2014-04-01|21:00:00', '2014-04-01|20:00:00', 
                      '2014-04-01|19:00:00', '2014-04-01|18:00:00', '2014-04-01|17:00:00', '2014-04-01|16:00:00', 
                      '2014-04-01|15:00:00', '2014-04-01|14:00:00', '2014-04-01|13:00:00', '2014-04-01|12:00:00',
                      '2014-04-01|11:00:00', '2014-04-01|10:00:00', '2014-04-01|09:00:00', '2014-04-01|08:00:00', 
                      '2014-04-01|07:00:00', '2014-04-01|06:00:00', '2014-04-01|05:00:00', '2014-04-01|04:00:00',
                      '2014-04-01|03:00:00', '2014-04-01|02:00:00', '2014-04-01|01:00:00', '2014-04-01|00:00:00'] 
    
    List_UnionMsg_Type = ['INTERACT', 'EXPERIENCE_STARTUP', 'SCHEDULER_STARTUP', 'SCHEDULER_SHUTDOWN']
    
    Dic_App_Colour = {'app_ispy':'yellow', 'app_mm':'aqua', 'soundshape':'lightgreen', 'networkdraw':'brown', 'mooderator':'lawngreen', \
                      'imagetag':'brown', 'slideshows':'brown', 'movieapp':'brown', 'networkpoetry':'brown', 'landart':'brown', 'homeless':'brown', \
                      'videoplayer':'aquamarine', 'attentiongrabber':'blue', 'researchshowcase2014':'green', 'nottcont':'coral', 'dawnoftheunread':'olive', \
                      'networkblocks':'brown', 'briefencounter':'brown', '???':'red', 'noapp':'white'}
    '''
    'aliceblue':            '#F0F8FF',
    'antiquewhite':         '#FAEBD7',
    'aqua':                 '#00FFFF',
    'aquamarine':           '#7FFFD4',
    'azure':                '#F0FFFF',
    'beige':                '#F5F5DC',
    'bisque':               '#FFE4C4',
    'black':                '#000000',
    'blanchedalmond':       '#FFEBCD',
    'blue':                 '#0000FF',
    'blueviolet':           '#8A2BE2',
    'brown':                '#A52A2A',
    'burlywood':            '#DEB887',
    'cadetblue':            '#5F9EA0',
    'chartreuse':           '#7FFF00',
    'chocolate':            '#D2691E',
    'coral':                '#FF7F50',
    'cornflowerblue':       '#6495ED',
    'cornsilk':             '#FFF8DC',
    'crimson':              '#DC143C',
    'cyan':                 '#00FFFF',
    'darkblue':             '#00008B',
    'darkcyan':             '#008B8B',
    'darkgoldenrod':        '#B8860B',
    'darkgray':             '#A9A9A9',
    'darkgreen':            '#006400',
    'darkkhaki':            '#BDB76B',
    'darkmagenta':          '#8B008B',
    'darkolivegreen':       '#556B2F',
    'darkorange':           '#FF8C00',
    'darkorchid':           '#9932CC',
    'darkred':              '#8B0000',
    'darksalmon':           '#E9967A',
    'darkseagreen':         '#8FBC8F',
    'darkslateblue':        '#483D8B',
    'darkslategray':        '#2F4F4F',
    'darkturquoise':        '#00CED1',
    'darkviolet':           '#9400D3',
    'deeppink':             '#FF1493',
    'deepskyblue':          '#00BFFF',
    'dimgray':              '#696969',
    'dodgerblue':           '#1E90FF',
    'firebrick':            '#B22222',
    'floralwhite':          '#FFFAF0',
    'forestgreen':          '#228B22',
    'fuchsia':              '#FF00FF',
    'gainsboro':            '#DCDCDC',
    'ghostwhite':           '#F8F8FF',
    'gold':                 '#FFD700',
    'goldenrod':            '#DAA520',
    'gray':                 '#808080',
    'green':                '#008000',
    'greenyellow':          '#ADFF2F',
    'honeydew':             '#F0FFF0',
    'hotpink':              '#FF69B4',
    'indianred':            '#CD5C5C',
    'indigo':               '#4B0082',
    'ivory':                '#FFFFF0',
    'khaki':                '#F0E68C',
    'lavender':             '#E6E6FA',
    'lavenderblush':        '#FFF0F5',
    'lawngreen':            '#7CFC00',
    'lemonchiffon':         '#FFFACD',
    'lightblue':            '#ADD8E6',
    'lightcoral':           '#F08080',
    'lightcyan':            '#E0FFFF',
    'lightgoldenrodyellow': '#FAFAD2',
    'lightgreen':           '#90EE90',
    'lightgray':            '#D3D3D3',
    'lightpink':            '#FFB6C1',
    'lightsalmon':          '#FFA07A',
    'lightseagreen':        '#20B2AA',
    'lightskyblue':         '#87CEFA',
    'lightslategray':       '#778899',
    'lightsteelblue':       '#B0C4DE',
    'lightyellow':          '#FFFFE0',
    'lime':                 '#00FF00',
    'limegreen':            '#32CD32',
    'linen':                '#FAF0E6',
    'magenta':              '#FF00FF',
    'maroon':               '#800000',
    'mediumaquamarine':     '#66CDAA',
    'mediumblue':           '#0000CD',
    'mediumorchid':         '#BA55D3',
    'mediumpurple':         '#9370DB',
    'mediumseagreen':       '#3CB371',
    'mediumslateblue':      '#7B68EE',
    'mediumspringgreen':    '#00FA9A',
    'mediumturquoise':      '#48D1CC',
    'mediumvioletred':      '#C71585',
    'midnightblue':         '#191970',
    'mintcream':            '#F5FFFA',
    'mistyrose':            '#FFE4E1',
    'moccasin':             '#FFE4B5',
    'navajowhite':          '#FFDEAD',
    'navy':                 '#000080',
    'oldlace':              '#FDF5E6',
    'olive':                '#808000',
    'olivedrab':            '#6B8E23',
    'orange':               '#FFA500',
    'orangered':            '#FF4500',
    'orchid':               '#DA70D6',
    'palegoldenrod':        '#EEE8AA',
    'palegreen':            '#98FB98',
    'paleturquoise':        '#AFEEEE',
    'palevioletred':        '#DB7093',
    'papayawhip':           '#FFEFD5',
    'peachpuff':            '#FFDAB9',
    'peru':                 '#CD853F',
    'pink':                 '#FFC0CB',
    'plum':                 '#DDA0DD',
    'powderblue':           '#B0E0E6',
    'purple':               '#800080',
    'red':                  '#FF0000',
    'rosybrown':            '#BC8F8F',
    'royalblue':            '#4169E1',
    'saddlebrown':          '#8B4513',
    'salmon':               '#FA8072',
    'sandybrown':           '#FAA460',
    'seagreen':             '#2E8B57',
    'seashell':             '#FFF5EE',
    'sienna':               '#A0522D',
    'silver':               '#C0C0C0',
    'skyblue':              '#87CEEB',
    'slateblue':            '#6A5ACD',
    'slategray':            '#708090',
    'snow':                 '#FFFAFA',
    'springgreen':          '#00FF7F',
    'steelblue':            '#4682B4',
    'tan':                  '#D2B48C',
    'teal':                 '#008080',
    'thistle':              '#D8BFD8',
    'tomato':               '#FF6347',
    'turquoise':            '#40E0D0',
    'violet':               '#EE82EE',
    'wheat':                '#F5DEB3',
    'white':                '#FFFFFF',
    'whitesmoke':           '#F5F5F5',
    'yellow':               '#FFFF00',
    'yellowgreen':          '#9ACD32'
    '''    



    #===========================================================
    #List_Table = []
    #List_DataAll = [[] for row in range(10)]
    List_DataSub = []
    
    List_DateAll = []
    List_Year = []
    List_Month = []
    List_Day = []
    #List_SensorID = []
    
    List_GW = []
    
    #Default_Table_Idx = 0
    
    #Default_Table = ''
    Default_Year = ''
    Default_Month = ''
    Default_Day = ''
    #Default_SensorID = ''
  
    
    
    
    
    '''
    
    v2.5
    add 'attentiongrabber', 'researchshowcase2014', 'nottcont', 'dawnoftheunread' into app/colour list
    add union message types 'EXPERIENCE_STARTUP', 'SCHEDULER_STARTUP' & 'SCHEDULER_SHUTDOWN', besides 'INTERACT', for messages: '0,0', 'Start' & 'Quit'
        
    v2.3
    add noapp into app/colour list
    
    v2.2
    ignore session detection from 2100 to 0900 at NAE
    ignore sessions which have only single touch
    each log file content is forced to from 0000 to 2359
    
    v2.1
    minor changes
    
    v2.0
    analysis report GUI
    
    v1.7
    re-format analysis report
    
    v1.6
    implement 'Start', 'Quit' 
    
    v1.5
    implement '.%f' in SitwUsageAnalyzer.py
    change print format in SitwUsageAnalyzer.py
    
    v1.2
    add Usage Analyzer : SitwUsageAnalyzer.py
        find out on a particular day (24 hours), at each node, how many usage sessions (30 seconds interval) on each experience  
    
    start SitwUsageLog.py for logging
    start SitwUsageAnalyzer.py for analysis    
    
    v1.1
    check message (u7) length before parsing
     
    v1.0
    original
    
    '''
    
    
    
    
    