<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="helpTrade_set.aspx.cs" Inherits="direct_demo.demo1.manage.helpTrade_set" %>

<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
    <style>
      .tb_canshu{}
      .tb_canshu td span{  width:80px; line-height:25px;}
    </style>
<script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>

    <script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>

</head>
<body>
    <form id="form1" runat="server">
<div id="mainbox1" style="display:block;">

    
    <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td width="600" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>指定匹配</strong>
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
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                提供帮助序号:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtId1" runat="server" MaxLength="7" Style="width: 50px;"></asp:TextBox>
                                &nbsp;
                                用户名:
                                <asp:TextBox ID="txtUserName1" runat="server" MaxLength="11" Style="width: 150px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                接受帮助序号:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtId2" runat="server" MaxLength="7" Style="width: 50px;"></asp:TextBox>
                                &nbsp;
                                用户名:
                                <asp:TextBox ID="txtUserName2" runat="server" MaxLength="11" Style="width: 150px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                金额:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtf1" runat="server" MaxLength="7" Text="0" Style="width: 50px;"></asp:TextBox>
                               
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" OnClientClick="return ifConfirm()" />
                            
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
<asp:Literal ID="litERR" runat="server" Text=""></asp:Literal>
    </form>
</body>
</html>
