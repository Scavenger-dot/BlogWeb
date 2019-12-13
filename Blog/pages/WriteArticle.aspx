<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WriteArticle.aspx.cs" Inherits="Blog.WriteArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../jquery-3.4.1.js"></script>
    <script src="../jquery-form.js"></script>
    <script src="../layer/layer.js"></script>
    
</head>
<body style="height:100vh">
    
    <link rel="stylesheet" href="css/editormd.css" />

   
   

    <form id="form1"   runat="server" >

        <input id="Text1" type="text" name="title" placeholder="标题" style="text-align:center;width:500px;margin-left:400px;margin-bottom:10px;" />
         <input type="submit" value="保存"/>
        <input type="submit" value="发布"/>
	<div id="my-editormd"></div>
	
</form>


        
<script src="js/jquery.min.js"></script>
<script src="js/editormd.js"></script>
<script type="text/javascript">
    
        var testEditor = editormd("my-editormd", {//注意1：这里的就是上面的DIV的id属性值
            width: "90%",
            height: 640,
            syncScrolling: "single",
            path: "js/lib/",//下边特别讲解
            saveHTMLToTextarea: true,//注意3：这个配置，方便post提交表单
            /**上传图片相关配置如下*/
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp", "PNG", "JPEG", "GIF", "BMP", "JPG", "WEBP"],
            imageUploadURL: "${ctx}/blog/uploadImg.wj",//注意你后端的上传图片服务地址
        });
    
   

   

    $("input[type='submit']").click(function () {
        var text = $(this).val();
        if (text == "发布") {
            $("#form1").attr("action", "view.aspx");
            $("#form1").attr("method", "post");
            if (!confirm('确定发布？')) {
                return false;
            }
            
        } else if (text == "保存") {
            $("#form1").attr("action", "Article2.aspx");
            $("#form1").attr("method", "post");
            if (!confirm('确定保存？')) {//取消就阻止跳转
              return false;
            }
            
        }
        
    })
</script>
   
</body> 
</html>
