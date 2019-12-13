<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myArticle.aspx.cs" Inherits="Blog.myArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../jquery-3.4.1.js"></script>
    <script>
        $(function () {
            $("ul").append("<li class='listyle'></li>")
        })
    </script>
    <style>
        .listyle{
            border:solid 2px;

        }
        .tdid{
            
           text-align:center;
        }
        .tdtitle{
             
            text-align:center;
        }
        .trcontent{
            background-color:gainsboro;
            width:300px;
            border:solid 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" OnItemDeleting="ListView1_ItemDeleting">
      <LayoutTemplate>
    <table style="width: 700px;
    height:680px;margin: 0px auto;">
      <thead>
        <tr>
          <th>序号</th>
          <th>文章标题</th>
          
        </tr>
      </thead>
      <tbody>
        <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
      </tbody>
    </table>
  </LayoutTemplate>
                <ItemTemplate>
    <tr class="trcontent">
      <td class="tdid"><%# Eval("id") %></td>
      <td class="tdtitle"><%# Eval("textname") %></td>
      <td>
          <asp:Button ID="Button1" runat="server" Text="删除" CommandName="delete" /> </td>        
        
    </tr>
  </ItemTemplate>
            </asp:ListView>
           
        </div>
        <div style="margin:0px auto;text-align: center;">
         <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="15">
                <Fields>
              <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                        ShowLastPageButton="True" />
            </Fields>
            </asp:DataPager>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:blogConnectionString4 %>" ProviderName="<%$ ConnectionStrings:blogConnectionString4.ProviderName %>" SelectCommand="SELECT id, textname FROM content" DeleteCommand="DELETE FROM content WHERE id = ?"> <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
</asp:SqlDataSource>
    </form>
</body>
</html>
