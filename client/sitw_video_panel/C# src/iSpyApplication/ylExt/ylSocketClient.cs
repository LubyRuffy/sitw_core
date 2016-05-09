//*YL* ------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Net;
using System.Net.Sockets;

using System.Timers;
using System.Threading;
using ThreadState = System.Threading.ThreadState;



namespace iSpyApplication.ylExt
{
    class ylSocketClient
    {
        private TcpClient tcpClient;
        private NetworkStream networkStream;

        private Thread _th;

        //private System.IO.StreamReader streamReader;
        //private System.IO.StreamWriter streamWriter;

        public bool bSocketOk;
        public String MsgIn;

        

        public ylSocketClient()
        {
            tcpClient = null;
            networkStream = null;
            //streamReader = null;
            //streamWriter = null;

            bSocketOk = false;
            MsgIn = "";
        }



        public bool ylSocketRunning
        {
            get
            {
                if (_th == null) return false;
                return _th.IsAlive;
            }
        }



        
        public bool ylSocketConnct(String strIPAddress, int iPort)
        {
            bool bRet = false;

            try
            {
                tcpClient = new TcpClient(strIPAddress, iPort);
                //tcpClient = new TcpClient(AddressFamily.InterNetwork);
                //tcpClient.Connect(strIPAddress, iPort);
                
                networkStream = tcpClient.GetStream();
                //streamReader = new System.IO.StreamReader(networkStream);
                //streamWriter = new System.IO.StreamWriter(networkStream);


                try
                {
                    _th = new Thread(ylSocketStart);
                    _th.Start();
                    bRet = true;
                }
                catch (Exception e)
                {
                    Console.WriteLine("!!!!!!!!!! " + e.Message);
                }



                bSocketOk = true;
                bRet = true;
                               
            }
            catch
            {
                Console.WriteLine("Failed to connect to server at " + strIPAddress + ":" + iPort.ToString());
                this.ylSocketClose();
            }

            return bRet;
        }


        public void ylSocketStart()
        {
            while (ylSocketRunning)
            {
                Thread.Sleep(200);
                MsgIn = ylSocketRead();
            }
        }




        public String ylSocketRead()
        {
            String strInMsg = "";

            if (bSocketOk)
            {
                try
                {
                    Byte[] data = new Byte[1024];
                    String responseData = String.Empty;
                    Int32 bytes = networkStream.Read(data, 0, data.Length);
                    responseData = System.Text.Encoding.ASCII.GetString(data, 0, bytes);
                    strInMsg = responseData;


                    Console.Write("\n\n--------------- reading <<<< ");
                    Console.Write(responseData);
                    Console.WriteLine(" >>>> \n\n");
                }
                catch
                {
                    Console.WriteLine("?????????????????????????   Exception in reading message !");
                    this.ylSocketClose();
                }
            }

            return strInMsg;
        }



        public bool ylSocketSend(string strMsg)
        {
            bool bRet = false;
            
            if (bSocketOk)
            {
                try
                {
                    Byte[] data = System.Text.Encoding.ASCII.GetBytes(strMsg);
                    networkStream.Write(data, 0, data.Length);
                    networkStream.Flush();
                    bRet = true;
                }
                catch
                {
                    Console.WriteLine("Exception in sending message : " + strMsg);
                    this.ylSocketClose();
                }
            }

            return bRet;
        }



        public void ylSocketClose()
        {
            bSocketOk = false;

            //if (streamReader != null) streamReader.Close();
            //if (streamWriter != null) streamWriter.Close();
            if (networkStream != null) networkStream.Close();
            if (tcpClient != null) tcpClient.Close();
        }


    }


}
//*YL* ------------------------------------------------------------

