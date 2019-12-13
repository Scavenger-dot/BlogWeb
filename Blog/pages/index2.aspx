<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="Blog.pages.index2" %>

<%@ Register Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="shortcut icon" href="https://m.mom1.cn/favicon.ico"/>
    <script src="../jquery-3.4.1.js"></script>
    <script src="../layer/layer.js"></script>
    <script src="../layui/layui.js"></script>
    <link href="../layui/css/layui.css" rel="stylesheet" />
    <script>

        layui.use('element', function () {
            var element = layui.element;

            //一些事件监听
            element.on('tab(demo)', function (data) {
                console.log(data);
            });
        });


        $("#content").each(function () {
            var len = $(this).text().length;   //当前HTML对象text的长度
            if (len > 30) {
                var str = "";
                str = $(this).text().substring(0, 30) + "......";  //使用字符串截取，获取前30个字符，多余的字符使用“......”代替
                $(this).html(str);                   //将替换的值赋值给当前对象
            }
        });

       

      
        function a() {
            layer.open({
                type: 2,
                title: false,
                closeBtn: 1, //不显示关闭按钮
                shade: [0.3],
                area: ['480px', '600px'],
               // offset: 'rb', //右下角弹出
               // time: 2000, //2秒后自动关闭
                anim: 2,
                content: ['login.aspx', 'no'], //iframe的url，no代表不显示滚动条
               
            });
            
        }
        function b() {
            layer.open({
                type: 2,
                title: false,
                closeBtn: 1, //不显示关闭按钮
                shade: [0.3],
                area: ['480px', '600px'],
                // offset: 'rb', //右下角弹出
                // time: 2000, //2秒后自动关闭
                anim: 2,
                content: ['reg.aspx', 'no'], //iframe的url，no代表不显示滚动条

            });

        }
    </script>

    <style>
        #show li{
           
    display: inline-block;
   margin-left:100px;
    
        }
       
    </style>

</head>
<body style="margin:0px;">
    <form id="form1" runat="server">
       <canvas id="sakura" style="width:100% ;height:100%;z-index:-100;position: fixed; top: 0; left: 0;"></canvas>
      <div class="layui-row layui-bg-black">
  <ul class="layui-nav layui-col-md8 layui-col-md-offset2" lay-filter="">
   <img class="" src="images1/blog1.png" alt="BLOG;" style="width:100px;margin:0 30px;vertical-align: middle;" />
  <li class="layui-nav-item layui-this"><a href="">主页</a></li>
  <li class="layui-nav-item "><a href="WriteArticle.aspx">写博客</a></li>
  <li class="layui-nav-item"><a href="../End.aspx">管理</a></li>
  <li class="layui-nav-item" onclick="a()" style="margin-left:20px;">登录</li>&nbsp;&nbsp;&nbsp;
      <li class="layui-nav-item" onclick="b()" style="margin-left:40px;">注册</li>
  <li class="layui-nav-item" style="margin-left:30px"><a href="">社区</a></li>
</ul>
      </div>




 
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
      <div class="layui-row">
<div class="layui-carousel" id="test1">
  <div carousel-item>
    <div>
        <img src="images1/bg1.png" alt="Alternate Text" /></div>
    <div><img src="images1/bg2.png" alt="Alternate Text" /></div>
    <div><img src="images1/bg5.png" alt="Alternate Text" /></div>
    <div><img src="images1/bg4.png" alt="Alternate Text" /></div>
    <div><img src="images1/bg6.png" alt="Alternate Text" /></div>
  </div>
</div>
          </div>
<!-- 条目中可以是任意内容，如：<img src=""> -->
 
<script src="/static/build/layui.js"></script>
<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '100%' //设置容器宽度
            , height: '500px'
            , arrow: 'none' //始终显示箭头
            , indicator: 'none'
            ,anim: 'fade' //切换动画方式
        });
    });
</script>




        <div style="opacity:1;width:800px;margin: auto;">
            <asp:ListView ID="ListView1" runat="server">
                <LayoutTemplate>
                    <ul style="margin:0px;">
                         <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                    </ul>

                </LayoutTemplate>
                 <ItemTemplate>
                     
                     <li style="background-color:ghostwhite;border:solid 1px; list-style: none;height:100px;">
                         <a href="details.aspx?id=<%# Eval("id") %>">
                         <div id="title" style="width:100%;height:30px;font-size:large;"><%# Eval("textname") %></div>
                             <div style="width:100%;height:70px; text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden; display:block;color:black;"><%# Eval("content").ToString() %></div>
                             </a>
                     </li>
   
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>





<!-- sakura shader -->
        



    </form>
    <p style="text-align: center;">© 2019 L-Blog版权所有</p>
</body>
</html>
