<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Blog.pages.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
 <body style="background-color: floralwhite;margin:0px;">
    <form id="form1" runat="server">
      
    <div id="content" style="width:55%; margin:10px auto;height:auto;
    margin: auto;    background-color: ghostwhite;">
        <div style="text-align:center;">
        <asp:Label ID="Label1" runat="server" Text="Label"  style="font-size:x-large;"></asp:Label>
        </div>
        <hr style="width:100%"/>
        <div style="margin-left:20px;">
        <p runat="server" id="p1"></p>
            </div>
    </div>
    </form>
</body>
</html>
