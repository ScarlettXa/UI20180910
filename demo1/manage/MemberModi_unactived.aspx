<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberModi_unactived.aspx.cs" Inherits="direct_demo.demo1.manage.MemberModi_unactived" %>

<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
    <style type="text/css">
         .style1
        {
            color: #FF0000;
        }
        </style>

 <script src="/js/jquery.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="/js/js.js"></script>

    <script language="javascript" type="text/javascript" src="/js/area.js"></script>

    <script language="javascript" type="text/javascript" src="/js/ajax.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/utils.js"></script>
</head>
<body>
    <form name="form1" id="form1" runat="server">
<div id="mainbox1" style="display:block;">
    <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
        <tbody>
            <tr>
                <td width="600" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td width="213" height="23">
                                    &nbsp;<strong>会员修改</strong>
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
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td width="28%" rowspan="1" align="right" valign="middle" bgcolor="#FBFDFF">
                                用户名：
                            </td>
                            <td width="72%" height="20" rowspan="1" align="left" valign="middle" bgcolor="#FBFDFF">
                            <asp:TextBox ID="txtBianhao" runat="server" MaxLength="9" Visible="false"></asp:TextBox>
                                <asp:Literal ID="litBianhao" runat="server"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td width="28%" rowspan="1" align="right" valign="middle" bgcolor="#FBFDFF">
                                <span>
                会员级别：</span>
                            </td>
                            <td width="72%" height="20" rowspan="1" align="left" valign="middle" bgcolor="#FBFDFF">
                            <span>
                                 <asp:DropDownList ID="ddlJiBie" runat="server">
                                 </asp:DropDownList>
                                 </span>
                            </td>
                        </tr>
                        <tr>
                            <td width="28%" rowspan="1" align="right" valign="middle" bgcolor="#FBFDFF">
                                <span>
                接点人：</span>
                            </td>
                            <td width="72%" height="20" rowspan="1" align="left" valign="middle" bgcolor="#FBFDFF">
                            <span>
                                 <input name="txtJiedian" type="text" value="" id="txtJiedian" runat="server" style="width: 200px;" />
                                 </span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                位置：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                    <asp:DropDownList ID="ddlWZ" runat="server">
                        <asp:ListItem Value="777">左</asp:ListItem>
                        <asp:ListItem Value="888">右</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                              <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" OnClientClick="return ifConfirm()" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"  onmouseout="this.className='button_onMouseOut'" />  
                              <input type="button" name="Button2" value="返回" id="Button2" onclick="history.go(-1)"  class="button_text" onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"  onmouseout="this.className='button_onMouseOut'" />
                                <asp:HiddenField ID="hidId" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
</div>

<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">请 稍 候<br><img src="/images/waiting2.gif" /></div>
</div>
    </form>
</body>
</html>

