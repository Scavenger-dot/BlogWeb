<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Blog.pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../semantic.css" />
    <script src="../jquery-3.4.1.js"></script>
    <script src="../semantic.js" ></script>
    
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    <div style="width:500px;height:600px;border:1px solid gray ;margin: 0 auto; background-image:url(12.png)">
       
       <h2 style="color:deepskyblue;margin: 20px auto;text-align: center;"> Welcome</h2>
    <form id="form1" runat="server">
        <div style="padding-left:110px; ">
        <div class="ui big left icon input" >
            <asp:TextBox ID="TextBox1" placeholder="用户名/手机号/邮箱" runat="server" Height="55px"  ></asp:TextBox>
            <i class="user icon"></i>
           
        </div><br/> <asp:Label ID="Label2" runat="server" Text="" Font-Size="XX-Small" ForeColor="#ff3300"></asp:Label><br/>
        &nbsp<div class="ui big left icon input">
            <asp:TextBox type="password" ID="TextBox2" placeholder="密码" runat="server" Height="55px"></asp:TextBox>
           <i class="lock icon"></i>
           
        </div>
        <br/> <asp:Label ID="Label3" runat="server" Text="" Font-Size="XX-Small" ForeColor="#ff3300"></asp:Label><br/>
      
         <br/> 
       <asp:Label ID="Label4" runat="server" Text="" Font-Size="XX-Small" ForeColor="#ff3300"></asp:Label>
        <br/>
            
        
        </div>
       
        <div style="text-align:center;margin:20px auto;">
        <asp:Button class="ui primary button" ID="Button1" runat="server" Text="登录" Onclick="Button1_Click" />
        <asp:Button class="ui primary button" ID="Button2" runat="server" Text="注册" Width="84px" OnClick="Button2_Click" />
        </div>


    </form>
       
        <asp:Label ID="Label1" runat="server" Text=""  TabIndex="0"></asp:Label>
        </div>
    <!--  <script src="canvas.js"></script>-->
    
</body>
</html>