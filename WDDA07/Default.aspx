<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WDDA07.Default" %>

<!DOCTYPE html>
<!-- 

NAME            : WebEditor.aspx
PROJECT         : Web Development and Design Assignment 7
PROGRAMMERS     : Jacob Seguin & Scott Page
FIRST VERSION   : December 10th, 2020
DESCRIPTION     : This is our aspx page that will be housing the html page/client side of our text editor.
 
-->



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Text Editor</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        function getResponse() {
            $.ajax({
                type: "POST",
                url: '/GetData',
                data: {},
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                beforeSend: function () {
                    document.getElementById("TextEditor").value = "Loading...";
                },
                success: function (response) {

                    // Looping over employee list and display it  
                    $.each(response, function (index, emp) {
                        $('TextEditor').append('<p>Id: ' + emp.ID + '</p>');
                    });
                },
                complete: function () {
                    // Hide loader icon  
                },
                failure: function (jqXHR, textStatus, errorThrown) {
                    alert("HTTP Status: " + jqXHR.status + "; Error Text: " + jqXHR.responseText); // Display error message  
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                    <button name="New" id="New" type="button" onsubmit="getResponse()">New</button>
                    </td>
                    <td>
                        <select id="FileAccess" name="FileAccess"/>
                    </td>
                    <td>
                        <button name="Open" id="Open" type="button">Open</button>
                    </td>
                    <td>
                        <button name="Save" id="Save" type="button">Save</button>
                    </td>
                    <td>
                        <button name="SaveAs" id="SaveAs" type="button"> Save As</button>
                    </td>

                </tr>             
            </table>
            <textarea autofocus="autofocus" id="TextEditor" name="TextEditor" cols="90" rows="45" wrap="soft" spellcheck="true" 
                    placeholder="Text will appear here when loading a file. Or you may type here to begin a new file!"></textarea>
        </div>
    </form>
</body>
</html>
