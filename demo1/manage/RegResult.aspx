<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegResult.aspx.cs" Inherits="direct_demo.demo1.manage.RegResult" %>
<%@ Register TagPrefix="ascx" TagName="ChkLogin" Src="~/ascx/ChkLogin_Manage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
</head>
<body>
<ascx:ChkLogin ID="ascx_chkLogin" runat="server" />
    <form id="form1" runat="server">
<table width="100%" border="0" cellpadding="2" cellspacing="2">
        <tr>
            <td width="1%" height="25">
                &nbsp;
            </td>
            <td width="89%" height="25">
                您已经成功在本站注册，您的用户编号为：<asp:Label ID="bianhao" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr style="display:none;">
            <td height="25">
                &nbsp;
            </td>
            <td height="25">
                请将会员费
                <asp:Label ID="money" runat="server" Text="Label"></asp:Label>元，在48小时内汇入公司同意的银行指定帐号，或交到所属，否则该点将作为废点。
            </td>
        </tr>
        <tr style="display:none;">
            <td height="25">
                &nbsp;
            </td>
            <td height="25">
                汇款帐号如下：
                <table width="100%" border="0" cellpadding="2" cellspacing="2">
                    <asp:Repeater ID="bankshow" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td bgcolor="#FFFFFF">
                                    汇款银行：<%#Eval("BCName") %>
                                    &nbsp; 银行帐号：<%#Eval("BCNumber")%>
                                    &nbsp; 汇款名称： <%#Eval("BCUserName")%> 
                                    &nbsp; 汇款地址：<%#Eval("BCAddress")%>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
                <table width="100%" border="0" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC"
                    bgcolor="#999999">
                    <tr>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
