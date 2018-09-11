<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NetMap_tuiJian.aspx.cs" Inherits="direct_demo.demo1.manage.NetMap_tuiJian" %>

<%@ Register TagPrefix="ascx" TagName="ChkLogin" Src="~/ascx/ChkLogin_Manage.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>treeview</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
   
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" type="text/css" href="/demo1/images/member/main.css" />
<%--<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>--%>
<style>
 .color1{ color:#0000ff;}
</style>
</head>
<body>
<ascx:ChkLogin ID="ascx_chkLogin" runat="server" />
    <form id="Form2" runat="server">
    <div>
<%--        <asp:TreeView ID="tv1" runat="server" ImageSet="Simple" ShowLines="True">
            <ParentNodeStyle Font-Bold="False" />
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                HorizontalPadding="0px" VerticalPadding="0px" />
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
        </asp:TreeView>--%>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>
        &nbsp; <a href="javascript:history.go(-1);">Back</a>&nbsp;&nbsp;
&nbsp;&nbsp;<a href="javascript:history.go(1);">Next</a> &nbsp;&nbsp; (提示:点击会员编号往下看)
    </td>
    <td> &nbsp;  &nbsp; 
       <asp:TextBox ID="txtSchKey" runat="server" Width="100px"></asp:TextBox> &nbsp; 
        <asp:Button ID="Button1" runat="server" Text="定位" onclick="Button1_Click" />
    </td>
    <td>
       &nbsp;
    </td>
  </tr>
</table>
        <asp:TreeView ID="tv1" runat="server" ShowLines="True">
        </asp:TreeView>
       

    </div>
    <asp:HiddenField ID="hidLevel" Value="5" runat="server" />
    </form>
   
</body>
</html>
