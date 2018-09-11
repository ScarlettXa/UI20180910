<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyManage.aspx.cs" Inherits="direct_demo.demo1.MyManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>mymanage</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="box1" runat="server" visible="false">
        <div>
            <asp:TextBox ID="txtSql1" runat="server" Width="100%"></asp:TextBox><br />
            <asp:TextBox ID="txtSql2" runat="server" Width="100%"></asp:TextBox><br />
            <asp:TextBox ID="txtSql3" runat="server" Width="100%" ></asp:TextBox><br />
            <asp:TextBox ID="txtSql4" runat="server" Width="100%" ></asp:TextBox><br />
            <asp:TextBox ID="txtSql5" runat="server" Width="100%" ></asp:TextBox><br />
            <asp:TextBox ID="txtSql6" runat="server" Width="100%" ></asp:TextBox><br />
        </div>
        <asp:Button ID="bt1" runat="server" Text="bt1" OnClick="bt1_Click" Visible="false" />
        &nbsp;&nbsp;
        <asp:Button ID="bt2" runat="server" Text="bt2" OnClick="bt2_Click"
            Visible="false" />
        &nbsp;
        <asp:LinkButton ID="lbReflash" runat="server" OnClick="lbReflash_Click">Reflash</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">ResetLoginTimes</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">ResetJJdays</asp:LinkButton>
        <div>
            <asp:DataGrid ID="dg1" runat="server">
            </asp:DataGrid>
        </div>
    </div>
    <div id="box2" runat="server">
        <asp:TextBox ID="txtPwd1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lbReflash_Click">Reflash</asp:LinkButton>
        <script language="javascript">document.getElementById("txtPwd1").focus();</script>
    </div>
    </form>
</body>
</html>
