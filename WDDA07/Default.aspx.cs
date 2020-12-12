/*
*   NAME            : WebEditor.aspx.cs
*   PROJECT         : Web Development and Design Assignment 7
*   PROGRAMMER      : Jacob Seguin & Scott Page
*   FIRST VERSION   : December 10th, 2020
*   DESCRIPTION     : This file contains all of our functionality for the WebEditors text file methods.
* 
* 
*/ 

using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace WDDA07
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string GetData()
        {
            return "This string is from Code behind";
        }
        [WebMethod]
        public static string openFile(string path)
        {
            string contents = "";
            try
            {
                contents = File.ReadAllText(path);
            }
            catch(Exception e)
            {
                return e.ToString();
            }

            return contents;
        }
        [WebMethod]
        public static string GetFiles()
        {
            string[] filePaths = Directory.GetFiles(@"c:\localwebsite\MyFiles\", "*.txt",
                                         SearchOption.TopDirectoryOnly);

            string allFilePaths = "";
            foreach (var item in filePaths)
            {
                allFilePaths += item + "|";
            }

            return allFilePaths;
        }

        [WebMethod]
        public static string SaveFiles()
        {
            string[] filePaths = Directory.GetFiles(@"c:\localwebsite\MyFiles\", "*.txt",
                                         SearchOption.TopDirectoryOnly);

            string allFilePaths = "";
            foreach (var item in filePaths)
            {
                allFilePaths += item + "|";
            }

            return allFilePaths;
        }
    }
}