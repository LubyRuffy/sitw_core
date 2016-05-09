//*YL* ------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Timers;
using System.Threading;
using ThreadState = System.Threading.ThreadState;



namespace iSpyApplication.ylExt
{
    class ylUnionComm
    {

        private readonly MainForm _parent;
        private ylSocketClient _socket;
        private String strName;
        private String strRoomID;

        //private Timer ylUnionTimer;

        public String strIPAddress = "128.243.19.207";
        public int iPort = 8080;


        private Thread _th;




        public ylUnionComm(MainForm parent, String strName)
        {
            _parent = parent;
            this.strName = strName;
            this.strRoomID = "";
        }



        public bool Running
        {
            get
            {
                if (_th == null) return false;
                return _th.IsAlive;
            }
        }



        public bool ylUnionConnect(String strRoomID)
        {
            bool bRet = false;

            _socket = new ylSocketClient();
            _socket.ylSocketConnct(strIPAddress, iPort);

            if (_socket.bSocketOk)
            {
                this.strRoomID = strRoomID;

                /*
                ylUnionTimer = new Timer(10); //0.1s
                ylUnionTimer.Elapsed += ylUnionTimerElapsed;
                ylUnionTimer.AutoReset = true;
                //ylUnionTimer.SynchronizingObject = this;
                GC.KeepAlive(ylUnionTimer);
                ylUnionTimer.Start();
                */

                try
                {
                    _th = new Thread(ylReadUnion);
                    _th.Start();

                    bRet = true;
                    Console.WriteLine("************** Union Connected @ " + strIPAddress + ":" + iPort + " *****************");
                }
                catch (Exception e)
                {
                    Console.WriteLine("!!!!!!!!!! " + e.Message);
                }

            }
            else
            {
                Console.WriteLine("?????? Union Failed @ " + strIPAddress + ":" + iPort + " ??????");
            }





            return bRet;
        }


        /*
        private void ylUnionTimerElapsed(object sender, ElapsedEventArgs e)
        {

            doReadMsg();

            //......

        }
        */


        private void ylReadUnion()
        {
            //sitw.interaction

            /*
            this.doHandshake("Python");
            doReadMsg();
            this.doCreateRoom("7086");
            Thread.Sleep(1000);

            this.doJoinRoom("7086");
            */


            this.doHandshake("Python");
            //Thread.Sleep(1000);
            this.doJoinRoom("sitw.interaction");
            //this.doJoinRoom("7086");

            
            while (Running)
            {
                Thread.Sleep(200);
                doReadMsg();
                doSendMsg("sending......");
            }

        }



        private void doHandshake(String strMsg) {
            //string msgHandshake = "<U><M>u65</M><L><A>" + strMsg + "</A><A>Python</A><A>1.9.3</A></L></U>\0";
            String msgHandshake = "<U><M>u65</M><L><A>Demo1</A><A>c#</A><A>1.9.3</A></L></U>\0";
            _socket.ylSocketSend(msgHandshake);
        }
        

        private void  doCreateRoom(String strRoomID) {
            String msgCreateRoom = ("<U><M>u24</M><L><A>" + strRoomID + "</A><A></A><A></A><A></A></L></U>\0");
            _socket.ylSocketSend(msgCreateRoom);
        }
        

        private void doJoinRoom(String strRoomID) {
            String msgJoinRoom = "<U><M>u4</M><L><A>" + strRoomID + "</A><A></A></L></U>\0";
            _socket.ylSocketSend(msgJoinRoom);
        }
        
        private void doLeaveRoom(String strRoomID) {
            String msgLeaveRoom = ("<U><M>u10</M><L><A>" + strRoomID + "</A><A></A></L></U>\0");
            _socket.ylSocketSend(msgLeaveRoom);
        }

                
        private void doSendMsg(String strMsg) {
            String msgSendMsg = ("<U><M>u1</M><L><A>myMsgName</A><A>" + strRoomID + "</A><A>true</A><A></A><A>" + "time tag" + "</A><A>" + " id " + "</A><A>" + strMsg + "</A></L></U>\0");
            _socket.ylSocketSend(msgSendMsg);        
        }


        private String doReadMsg()
        {
            
            String strInMsg = _socket.ylSocketRead();
            //Console.WriteLine("\nread --->>>>>>>>>>>>>>>> " + strInMsg + " <<<<<<<<\n");
            return strInMsg;
        }



        public void ylUnionClose()
        {
            //if (ylUnionTimer != null) ylUnionTimer.Dispose();
            if (_socket != null) _socket.ylSocketClose();
        }

    }
}
//*YL* ------------------------------------------------------------




