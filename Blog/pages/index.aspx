<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Blog.index" %>

<html >
<head>
<title>Blog</title>

<link type="text/css" rel="Stylesheet" href="css/imageflow.css" />

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/imageflow.js"></script>

</head>
<body>



	<input id="S_Num" type="hidden" value="8" />
    <table style="width:100%">
        <tr>
    <td style="width:15%;background-color:blue;height: 522px;"></td>
        
	<td id="starsIF" class="imageflow" > 
		<img src="images1/1.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/2.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/1.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/3.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/4.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/5.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/6.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/1.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/2.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/3.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/4.png" longdesc="#" width="280" height="300" alt="Picture" /> 
		<img src="images1/5.png" longdesc="#" width="280" height="300" alt="Picture" /> 
	</td>
            
    <td style="width:15%;height:552px;background-color:blanchedalmond;vertical-align:top">
       <ul>
           <li><a href="login.aspx">登录</a></li>
            <li><a href="reg.aspx">注册</a></li>
            <li><a href="../End.aspx">后台</a></li>
       </ul>
    </td>
    </tr>
   
        </table>
    <div style="width:100%;height:300px;background-color:aquamarine;"></div>
<!--<div class="clear"></div>-->


</body>
</html>