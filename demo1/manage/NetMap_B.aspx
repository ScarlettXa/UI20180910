<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NetMap_B.aspx.cs" Inherits="direct_demo.demo1.manage.NetMap_B" %>

<%@ Register TagPrefix="ascx" TagName="ChkLogin" Src="~/ascx/ChkLogin_Manage.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>treeview</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
   
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <style type="text/css">
        A
        {
            font-size: 12px;
            line-height: 16px;
            text-decoration: none;
        }
        A:hover
        {
            color: #006699;
            text-decoration: underline;
        }
        A:link
        {
            color: #000000;
            text-decoration: none;
        }
        A:visited
        {
            text-decoration: none;
        }
        .box
        {
            border-right: #990066 1px solid;
            border-top: #990066 1px solid;
            border-left: #990066 1px solid;
            border-bottom: #990066 1px solid;
        }
        .style88
        {
            font-size: 12px;
            line-height: 30px;
            text-decoration: none;
        }
        .style8
        {
            font-size: 12px;
        }
        .style9
        {
            font-size: 14px;
        }
        A:active
        {
            text-decoration: none;
        }
        .style10
        {
            color: #000000;
        }
        .style13
        {
            color: #ff33cc;
        }
        .style14
        {
            font-size: 12px;
            color: #ff33cc;
        }
        .style17
        {
            color: #993300;
        }
        BODY
        {
            font-size: 12px;
            background-image: url(../images/042.jpg);
            margin: 0px;
            background-color: #f7fbf4;
        }
        .style1
        {
            font-weight: bold;
            font-size: 18px;
        }
        .style11
        {
            font-weight: bold;
            font-size: 16px;
            color: #ffffff;
        }
        .style15
        {
            font-weight: bold;
            font-size: 12px;
        }
        .style89
        {
            font-weight: bold;
            font-size: 24px;
            color: #009900;
        }
        .style90
        {
            color: #ff0000;
        }
        TD
        {
            font-size: 12px;
            line-height: 12px;
        }
        TABLE.tablefilter
        {
            border-right: #adba84 1px solid;
            background-position: center 50%;
            border-top: #93c0ff 1px solid;
            border-left: #adba84 1px solid;
            width: 75px;
            border-bottom: #adba84 1px solid;
            background-repeat: no-repeat;
            height: 50px;
        }
        TD.tdfilter
        {
            position: relative;
        }
        .borderall
        {
            border-right: #cccccc 1px solid;
            border-top: #cccccc 1px solid;
            border-left: #cccccc 1px solid;
            border-bottom: #cccccc 1px solid;
        }
        .borderlr
        {
            border-right: #cccccc 1px solid;
            border-left: #cccccc 1px solid;
        }
        .borderlrt
        {
            background-position: center center;
            vertical-align: middle;
            background-repeat: no-repeat;
            height: 64px;
            background-color: #ffffff;
        }
        .borderlrb
        {
            border-right: #cccccc 1px solid;
            border-left: #cccccc 1px solid;
            border-bottom: #cccccc 1px solid;
        }
        .borderno
        {
            border-right: medium none;
            border-top: medium none;
            border-left: medium none;
            border-bottom: medium none;
        }
        .STYLE91
        {
            font-size: 12px;
            color: #000000;
        }
        .STYLE92
        {
            font-weight: bold;
            font-size: 16px;
            color: #000000;
        }
        .l
        {
            width: 40%;
            text-align: center;
        }
        .m
        {
            width: 20%;
            text-align: center;
        }
        .r
        {
            width: 40%;
            text-align: center;
        }
    </style>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
</head>
<body ms_positioning="GridLayout">
<ascx:ChkLogin ID="ascx_chkLogin" runat="server" />
    <form id="Form2" runat="server">
    <table class="zuoYouXia" border="0" cellspacing="0" cellpadding="0" width="500" align="center">
        <tr>
            <td bgcolor="#f6f6ec" height="30">
                <strong>&nbsp;<span class="style3">B网结构图</span></strong>
                <input name="tHuiyuanId" id="tHuiyuanId" maxlength="9" type="text" class="inputCN" runat="server" />
                <asp:Button ID="Button1" CssClass="buttonCN" runat="server" Text="跳转" 
                    OnClientClick="{if(confirm('确定要看这个用户吗?')){this.document.selform.submit();return true;}return false;}" 
                    onclick="Button1_Click" />
                <label>
                    <span class="style3">显示层数
                    <asp:DropDownList ID="ddl1" runat="server" 
                    onselectedindexchanged="ddl1_SelectedIndexChanged" AutoPostBack="true">
                       <asp:ListItem Value="1">二层</asp:ListItem>
                       <asp:ListItem Value="2">三层</asp:ListItem>
                       <asp:ListItem Value="3">四层</asp:ListItem>
                       <asp:ListItem Value="4">五层</asp:ListItem>
                       <%--<asp:ListItem Value="5">六层</asp:ListItem>--%>
                    </asp:DropDownList></span>
                        &nbsp; <a href="javascript:history.go(-1);">Back</a>&nbsp;&nbsp;<a
                            href="?">Me</a>&nbsp;&nbsp;<a href="javascript:history.go(1);">Next</a>
                </label>
            </td>
        </tr>
    </table> 
        <table class="tb_border" border="0" cellspacing="0" cellpadding="0" width="100%"
        align="center">
        <tbody>
            <tr>
                <td bgcolor="#f6f6ec" width="100%">
                    <table border="0" cellspacing="1" cellpadding="4" width="100%">
                        <tr class="text" width="100%">
                            <td>
                                <asp:Literal ID="txtShowBox" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#f6f6ec">
                        <tr align="center" class="head">
                            <td>
                                <table width="300" border="0" cellspacing="1" cellpadding="4" style="border-right: #ffcccc 1px solid;
                                    border-top: #ffcccc 1px solid; border-left: #ffcccc 1px solid; border-bottom: #ffcccc 1px solid;
                                    background-color: #ffffff">
                                    <tr class="head" align="center">
                                        <td width="80">
                                            图例:
                                        </td>
                                        <td bgcolor="#00ff00">
                                            正式会员
                                        </td>
                                        <td bgcolor="#ff0000">
                                            临时会员
                                        </td>
                                        <td bgcolor="#ffffff">
                                            空位
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
     </td>
     </tr></tbody></table>      
    </form>
</body>
</html>
