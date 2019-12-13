<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="Blog.reg" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <link rel="stylesheet" href="../semantic.css" />
    <script src="../jquery-3.4.1.js"></script>
    <script src="../semantic.js" ></script>
     
    <script src="../login.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   
    
    <div style="width:500px;height:600px;border:1px solid gray ;margin: 0 auto;text-align: center">
       
       <h2 style="color:deepskyblue"> 注册</h2><br/>
    <form id="form1" runat="server" >
       
        
        <div class="ui big left icon input" >
            <asp:TextBox ID="TextBox1" placeholder="手机号/邮箱" runat="server" Height="55px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
            <i class="user icon"></i>
           
        </div><br/> <asp:Label ID="Label1" runat="server" Text="" Font-Size="XX-Small" ForeColor="#ff3300"></asp:Label><br/>
        &nbsp<div class="ui big left icon input">
            <asp:TextBox type="password" ID="TextBox2" placeholder="密码" runat="server" Height="55px"></asp:TextBox>
           <i class="lock icon"></i>
           
        </div>
         
        <br/><asp:Label ID="Label2"  runat="server" Text="" Font-Size="XX-Small" ForeColor="#ff3300"></asp:Label>
        <br/>
        <div class="ui big left icon input">
            <asp:TextBox type="password" ID="TextBox3" placeholder="确认密码" runat="server" Height="55px"></asp:TextBox>
           <i class="lock icon"></i>
           
        </div>
        <br/><br/>
      
        <br/><br/>
         <asp:Button class="ui positive button" ID="Button1" runat="server" Text="注册" Width="84px" OnClick="Button1_Click" />
        <asp:Button class="ui primary button" ID="Button2" runat="server" Text="登录" Width="84px" OnClick="Button2_Click" />

    </form>
           
        </div>
    
</body>
</html>
