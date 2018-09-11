<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="threeView.aspx.cs" Inherits="direct_demo.demo1.manage.threeView" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <style type="text/css">
        A:link
        {
            color: white;
        }
        A:visited
        {
            color: white;
        }
        A:hover
        {
            color: white;
        }
    </style>
    <style type="text/css">
        A:link
        {
            color: white;
        }
        A:visited
        {
            color: white;
        }
        A:hover
        {
            color: white;
        }
    </style>
    <style type="text/css">
        A:link
        {
            color: white;
        }
        A:visited
        {
            color: white;
        }
        A:hover
        {
            color: white;
        }
    </style>
    <link rel="Stylesheet" href="/demo1/images/zt0.css" type="text/css" />
    <style type="text/css">
        *
        {
            font-size: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Literal ID="testshow" runat="server"></asp:Literal>
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
            <tbody>
                <tr valign="top">
                    <td height="31" align="right" valign="middle" bgcolor="#B1D1EA">
                        <div align="center">
                            <strong>团队结构</strong></div>
                    </td>
                </tr>
                <tr valign="top">
                    <td height="262" align="right">
                        <div align="center">
                            <div align="center">
                                <div align="center">
                                    <br />
                                    请输入用户编号：
                                    <asp:TextBox ID="schkey" runat="server" Style="width: 100px;"></asp:TextBox>
                                    &nbsp;
                                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
                                    &nbsp; ＊友情提示：点击会员进入下四层</div>
                                <style>
                                    .OChartCellPadding
                                    {
                                        padding-right: 5px;
                                        padding-left: 5px;
                                    }
                                    .OChartCellStyle
                                    {
                                        border-right: blue 1px solid;
                                        border-top: blue 1px solid;
                                        font-size: 9px;
                                        border-left: blue 1px solid;
                                        border-bottom: blue 1px solid;
                                        background-color: #ffd586;
                                        text-align: left;
                                    }
                                </style>
                                <body>
                                    <br>
                                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f7fbfd"
                                        id="Table1">
                                        <tr>
                                            <td>
                                                <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f7fbfd"
                                                    id="Table2">
                                                    <tr>
                                                        <td>
                                                            <table align="center" cellpadding="0" cellspacing="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                            <table cellspacing="1" cellpadding="0" border="0">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                             <table cellspacing="0" cellpadding="0" border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <table bordercolor="#cae2f7" cellspacing="1" cellpadding="1" align="center" bgcolor="#ffffff"
                                                                                                                        border="0" style="width: 100%">
                                                                                                                        <tbody>
                                                                                                                            <tr align="middle" bgcolor="#0099FF">
                                                                                                                                <td valign="middle" colspan="2">
                                                                                                                                    <span id="huiyuan_bianhao">
                                                                                                                                        <asp:Literal ID="huiyuanBianhao_show" runat="server"></asp:Literal> </span>
                                                                                                                                    <br />
                                                                                                                                    <a id="HyperLink_shang" href="baobiao3.aspx?huiyuan_bianhao=A18441915"></a>
                                                                                                                                    <asp:Literal ID="link_shhow" runat="server"></asp:Literal>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr align="middle" bgcolor="#0099FF" style="display:none;">
                                                                                                                                <td height="10" valign="middle" colspan="2">
                                                                                                                                    <asp:Literal ID="huiyuanName_show" runat="server"></asp:Literal>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr align="right" bgcolor="#e7f2fb" style="display:none;">
                                                                                                                                <td valign="center" align="middle" bgcolor="#cae2f7" colspan="2" width="96">
                                 <span id="huiyuan_jiebie"><asp:Literal ID="jiebie_show" runat="server"></asp:Literal> </span>
                                                                                                                                    <asp:Literal ID="date_show" runat="server" Visible="false"></asp:Literal>&nbsp;
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="middle" colspan="3"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                border="0"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                border="0"></td>
                                                                        <td align="left" height="1"><img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                border="0"></td>
                                                                        <td align="left" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                border="0"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="middle">
                                                                            <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                border="0"></td>
                                                                        <td align="middle">
                                                                            <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                border="0"></td>
                                                                       <td align="middle">
                                                                            <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                border="0"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td valign="top">
                                                                            <table cellspacing="0" cellpadding="0" align="center">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                           
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="huiyuanshow_21"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow2_1" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <div id="box2_1" runat="server" visible="false">
                                                                                        <tr>
                                                                                            <td align="middle" colspan="3">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="left" height="1"><img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="left" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                             <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>       
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                               
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="huiyuanshow_31"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_1" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_1" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="huiyuanshow_41"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_1" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table6"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_2" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="huiyuanshow_42"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_3" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                               
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table3"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_2" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_2" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table4"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_4" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table5"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_5" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table7"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_6" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                                
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="huiyuanshow_32"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_3" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_3" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img src="/demo1/images/dsis-usernew-xt-3.gif" alt="" border="0" style="width: 1px;
                                                                                                                        height: 20px"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="huiyuanshow_43"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_7" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                  
          <table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="huiyuanshow_44"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_8" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>


                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                  
          <table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table8"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_9" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>


                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </div>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td valign="top">
                                                                            <table cellspacing="0" cellpadding="0" align="center">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                           
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table9"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow2_2" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <div id="box2_2" runat="server" visible="false">
                                                                                        <tr>
                                                                                            <td align="middle" colspan="3">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="left" height="1"><img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="left" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                             <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>       
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                               
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table10"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_4" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_4" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table11"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_10" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table12"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_11" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table13"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_12" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                               
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table14"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_5" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_5" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table15"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_13" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table16"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_14" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table17"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_15" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                                
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table18"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_6" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_6" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img src="/demo1/images/dsis-usernew-xt-3.gif" alt="" border="0" style="width: 1px;
                                                                                                                        height: 20px"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table19"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_16" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                  
          <table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table20"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_17" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>


                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                  
          <table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table21"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_18" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>


                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </div>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td valign="top">
                                                                             <table cellspacing="0" cellpadding="0" align="center">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                           
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table22"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow2_3" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <div id="box2_3" runat="server" visible="false">
                                                                                        <tr>
                                                                                            <td align="middle" colspan="3">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="left" height="1"><img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="left" height="1"><img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                            <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>
                                                                                             <td align="middle">
                                                                                                <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                    border="0"></td>       
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                               
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table23"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_7" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_7" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table24"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_19" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table25"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_20" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table26"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_21" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                               
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table27"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_8" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_8" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle">
                                                                                                                    <img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table28"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_22" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table29"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_23" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                    
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table30"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_24" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <table cellspacing="0" cellpadding="0" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="3">
                                                                                                                
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table31"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow3_9" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <div id="box3_9" runat="server" visible="false">
                                                                                                            <tr>
                                                                                                                <td align="middle" colspan="3">
                                                                                                                    <img src="/demo1/images/dsis-usernew-xt-3.gif" alt="" border="0" style="width: 1px;
                                                                                                                        height: 20px"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="right" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 100%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="left" height="1">
                                                                                                                    <img style="width: 50%; height: 1px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                                <td align="middle"><img style="width: 1px; height: 20px" alt="" src="/demo1/images/dsis-usernew-xt-3.gif"
                                                                                                                        border="0"></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                   
<table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table32"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_25" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>

                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                  
          <table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table33"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_26" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>


                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td valign="top">
                                                                                                                    <table cellspacing="0" cellpadding="0" align="center">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td class="OChartCellPadding" valign="top" align="middle" width="100%" colspan="0">
                                                                                                                                  
          <table cellspacing="1" cellpadding="0" border="0" style="width: 100%" id="Table34"
    runat="server">
    <tbody>
        <tr>
            <td>
                <table cellspacing="0" cellpadding="0" border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Literal ID="txtshow4_27" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>


                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </div>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </div>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                       <td style="padding-top:10px;"> 
                                                          *友情提示：<br />
                                                          1.点击会员进入下四层<br />
                                                          2.红色会员表示未开通
                                                       </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>