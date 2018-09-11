<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="weiXinMenu.aspx.cs" Inherits="direct_demo.demo1.manage.weiXinMenu" %>

<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</head>
<body>

    <script language="javascript" src="/js/calendar.js" type="text/javascript"></script>

    <form id="form1" runat="server">
    <br>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td width="100%">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <tbody>
                            <tr>
                                <td background="/demo1/images/corp_main_table_abj.gif" height="23" align="center">
                                    &nbsp;<strong>微信菜单</strong>
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
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                内容:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtContent1" runat="server" TextMode="MultiLine" Width="800px" Height="600px"></asp:TextBox>
				
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" valign="middle">
                              <asp:Button ID="Button2" runat="server" Text=" 修 改 "  
                                    CssClass="button_text"  onmousedown="this.className='button_onmousedown'" 
                                    onmouseover="this.className='button_onmouseover'" 
                                    onmouseout="this.className='button_onMouseOut'" onclick="Button2_Click"/>     
                                <asp:HiddenField ID="txtId" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    <br>
    <br>
    </form>
</body>
</html>