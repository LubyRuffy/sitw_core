cd /

"C:\Program Files\VideoLAN\VLC\vlc.exe" --qt-start-minimized dshow:// :dshow-vdev="Logitech HD Pro Webcam C910" :dshow-adev= :dshow-size= :live-caching=300 :sout=#transcode{vcodec=h264,vb=400,fps=4,scale=0.125,width=640,height=480,acodec=none}:http{mux=ts,dst=:82/} :sout-keep

 

