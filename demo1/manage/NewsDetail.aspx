<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsDetail.aspx.cs" Inherits="direct_demo.demo1.manage.NewsDetail" %>

<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/member/datalist.css" type="text/css">
</head>
<body>
    <br>
    <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
        <tbody>
            <tr>
                <td width="700" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <tbody>
                            <tr>
                                <td height="23" background="/demo1/images/member/tab_05.gif">
                                    &nbsp;<strong>查看详细</strong>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td height="20" align="center" valign="middle" bgcolor="#FBFDFF">
                                 <asp:Label ID="lbl_newstitle" runat="server" Text=""></asp:Label><hr style="margin: 3px 0px; height: 1px; width: 95%">
                                   更新时间：<asp:Label ID="lbl_time" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <style>
                                td, font
                                {
                                    line-height: 130%;
                                }
                            </style>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF" style="line-height: 180%">
                               <asp:Label ID="lbl_newscontent" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle" background="/demo1/images/member/tab_19.gif">
                                <input class="button_text" onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"
                                    onmouseout="this.className='button_onMouseOut'" type="button" id="but" value="返回"
                                    name="but" onclick="history.back();">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    <br>
    <br>
</body>
</html>
