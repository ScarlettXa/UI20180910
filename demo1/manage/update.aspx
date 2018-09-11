<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="direct_demo.demo1.manage.update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="box1" runat="server" visible="false">
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="lbReflash_Click">Reflash</asp:LinkButton>
        <br />
        <br />
        <asp:TextBox ID="txtFile" runat="server" Width="300px"></asp:TextBox>  
        <asp:Button ID="Button2" runat="server" Text="Button1" onclick="Button2_Click" />
     <asp:Literal ID="txtTestShow" runat="server"></asp:Literal>
        <asp:HiddenField ID="hidCon" runat="server" />
    </div>
    
    <div id="box2" runat="server">
        <asp:TextBox ID="txtPwd1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lbReflash_Click">Reflash</asp:LinkButton>
       
    </div>
    </form>
</body>
</html>
