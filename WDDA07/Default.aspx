<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WDDA07.Default" %>

<!DOCTYPE html>
<!-- 
NAME            : 
PROJECT         : Web Development and Design Assignment 7
PROGRAMMERS     : Jacob Seguin & Scott Page
FIRST VERSION   : 
DESCRIPTION     :
    
    
-->



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <select id="FileAccess" name="FileAccess"/>
                    </td>
                    <td>
                        <button name="OpenExisting" id="OpenExisting" type="button">Open Selected</button>
                    </td>
                    <td>
                        <button name="SaveExisting" id="SaveExisting" type="button">Save Existing</button>
                    </td>
                    <td>
                        <button name="SaveNew" id="SaveNew" type="button"> Save New</button>
                    </td>
                    <td>
                        <button name="Delete" id="Delete" type="button">Delete</button>
                    </td>
                </tr>             
            </table>
            <textarea autofocus="autofocus" id="TextEditor" name="TextEditor" cols="90" rows="45" wrap="soft" spellcheck="true" 
                    placeholder="Text will appear here when loading a file. Or you may type here to begin a new file!"></textarea>
        </div>
    </form>
</body>
</html>
