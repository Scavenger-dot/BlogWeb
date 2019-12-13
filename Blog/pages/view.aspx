<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="Blog.pages.view"  ValidateRequest="false"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../jquery-3.4.1.js"></script>
    <script src="js/editormd.js"></script>
    <script src="js/lib/marked.min.js"></script>
    <script src="js/lib/prettify.min.js"></script>
    <script src="js/lib/raphael.min.js"></script>
    <script src="js/lib/underscore.min.js"></script>
    <script src="js/lib/sequence-diagram.min.js"></script>
    <script src="js/lib/flowchart.min.js"></script>
    <script src="js/lib/jquery.flowchart.min.js"></script>
    <link href="css/editormd.css" rel="stylesheet" />
    
</head>
<body style="background-color: floralwhite;
    margin: auto;
}">
    <div id="content" style="width:50%; margin:10px auto;height: -webkit-fill-available;
    margin: auto;">
        <span style="font-size:x-large;margin-left:375px">
            <%=Request.Form["title"] %>
        </span>
        <textarea style="display:none;  flex:auto" name="content-markdown-doc"><%=Request.Form["my-editormd-html-code"] %></textarea>
    </div>
     <script type="text/javascript">
         var testEditor = editormd.markdownToHTML("content", {//注意：这里是上面DIV的id
             htmlDecode: "style,script,iframe",
             emoji: true,
             taskList: true,
             tex: true, // 默认不解析
             flowChart: true, // 默认不解析
             sequenceDiagram: true, // 默认不解析
             codeFold: true
         });

 </script>
</body>
</html>
