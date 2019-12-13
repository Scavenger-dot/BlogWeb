<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Article2.aspx.cs" Inherits="Blog.Article2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script src="../jquery-3.4.1.js"></script>
    <script src="../layer/layer.js"></script>
    <style>
        tr{
            background-color:gainsboro;
            width:300px;
            height:40px;
            border:solid 3px;
        }
        table{
            width: 700px;
           
            margin: 0px auto;
        }
        td{
             text-align:center;
        }
        th{
             text-align:center;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting1" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="编号" />
                    <asp:BoundField DataField="textname" HeaderText="文章标题" />
                    <asp:BoundField DataField="time" HeaderText="发布日期" SortExpression="time" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="confirm('真的要删除吗？')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        
    </form>
</body>
</html>
