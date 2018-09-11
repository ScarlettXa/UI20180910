<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageView.aspx.cs" Inherits="direct_demo.demo1.manage.MessageView" %>

<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
</head>
<body>
    <form id="form1" runat="server" style="margin: 0px; padding: 0px;">
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
        <tbody>
            <tr>
                <td width="421" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <tbody>
                            <tr>
                                <td width="213" height="23">
                                    &nbsp;<strong>短信内容查看</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
               <asp:Repeater ID="rpt1" runat="server">
                  <ItemTemplate>
                  <table width="100%" border="0" cellpadding="3" cellspacing="1" style="font-size: 14px;">
                        <tr>
                            <td width="11%" align="right" valign="middle" bgcolor="#FBFDFF" style="font-size: 14px;">
                                发件人:
                            </td>
                            <td width="89%" height="38" align="left" valign="middle" bgcolor="#FBFDFF" style="font-size: 14px;">
                                <%#Eval("MFrom").ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF" style="font-size: 14px;">
                                内容
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF" style="font-size: 14px;">
                                <%#Eval("MContent").ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF" style="font-size: 14px;">
                                时间:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF" style="font-size: 14px;">
                                <%#Eval("MAddTime").ToString()%>
                            </td>
                        </tr>
<%--                        <tr>
                            <td background="/demo1/images/manage/tab_19.gif" colspan="2" align="center" valign="middle">
                                <input class="button_text" onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"
                                    onmouseout="this.className='button_onMouseOut'" type="button" id="but" value="返回"
                                    name="but" onclick="history.back();">
                             
                            </td>
                        </tr>--%>
                    </table>
                  </ItemTemplate>
               </asp:Repeater>
                    
                </td>
            </tr>
    </table>
    <br>
    <br>
    </form>
</body>
</html>
