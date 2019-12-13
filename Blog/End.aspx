<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="End.aspx.cs" Inherits="Blog.End" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="StylesheetBlog/End.css" />
   <style>
        

        #content {
            float: left;
        }
    </style>
   
    <script src="jquery-3.4.1.js"></script>
</head>
<body>
    <div style="width:100%;height:auto">
        <ul class="userMenu">
            <li class="current" data-id="index"><a href="pages/index2.aspx">首页</a></li>
            <li data-id="WriteArticle"><a href="pages/WriteArticle.aspx" target="myFrame">写文章</a></li>
            <li data-id="draft"><a href="pages/draft.aspx" target="myFrame">草稿</a></li>
            <li data-id="myArticle"><a href="pages/Article2.aspx" target="myFrame">我的文章</a></li>
             <li data-id="theme"><a href="pages/theme.aspx" target="myFrame">主题</a></li>
             <li data-id="components"><a href="pages/components.aspx" target="myFrame">组件</a></li>
             <li data-id="setting"><a href="pages/setting.aspx" target="myFrame">设置</a></li>
             <li data-id="account"><a href="pages/account.aspx" target="myFrame">账户</a></li>
             <li data-id="about"><a href="pages/about.aspx" target="myFrame">关于</a></li>
             
        </ul>
    <iframe name="myFrame" scrolling="no"style="width:81.86%;height:1000px"></iframe>
        </div>
   
    
        <!--<div id="content"></div>
   
    <script>
        $("#content").load("pages/wlecome.html"); 
        $(function () {
            $(".userMenu").on("click", "li", function () {
                var sId = $(this).data("id"); //获取data-id的值
                window.location.hash = sId; //设置锚点
                loadInner(sId);
            });

            function loadInner(sId) {
                var sId = window.location.hash;
                var pathn, i;
               
                switch (sId) {
                    case "#index":
                        pathn = "pages/index.aspx";
                        i = 0;
                        break;
                    case "#WriteArticle":
                        pathn = "pages/WriteArticle.aspx";
                        i = 1;
                        break;
                    case "#draft":
                        pathn = "pages/draft.aspx";
                        i = 2;
                        break;
                    case "#myArticle":
                        pathn = "pages/myArticle.aspx";
                        i = 3;
                        break;
                    case "#theme":
                        pathn = "pages/theme.aspx";
                        i = 4;
                        break;
                    case "#components":
                        pathn = "pages/components.aspx";
                        i = 5;
                        break;
                    case "#setting":
                        pathn = "pages/setting.aspx";
                        i = 6;
                        break;
                    case "#account":
                        pathn = "pages/account.aspx";
                        i = 7;
                        break;
                    case "#about":
                        pathn = "pages/about.aspx";
                        i = 8;
                        break;
                   
                }
                $("#content").load(pathn); //加载相对应的内容
                $(".userMenu li").eq(i).addClass("current").siblings().removeClass("current"); //当前列表高亮
            }
            var sId = window.location.hash;
            loadInner(sId);
        });
    </script>
       
   -->
</body>
</html>
