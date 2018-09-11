<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberModi.aspx.cs" Inherits="direct_demo.demo1.manage.MemberModi" %>
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
    <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
        <tbody>
            <tr>
                <td width="700" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td width="213" height="23">
                                    &nbsp;<strong>确认会员修改</strong>
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
                            <td width="30%" rowspan="1" align="right" valign="middle" bgcolor="#FBFDFF">
                                用户名：
                            </td>
                            <td width="70%" height="20" rowspan="1" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtBianhao" runat="server" MaxLength="9"></asp:TextBox>
                                <asp:Literal ID="litBianhao" runat="server"></asp:Literal>
                                  &nbsp; 
                                <asp:CheckBox ID="CheckBox_dongjie" runat="server" Text="冻结" />  &nbsp; 
                                <asp:CheckBox ID="CheckBox_dongjie2" runat="server" Text="禁止转币" /> &nbsp; 
                                <asp:CheckBox ID="CheckBox_modi" runat="server" Text="禁止修改" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                推荐人：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:HiddenField ID="hidTJ" runat="server" />
                                <input name="txtTJ" type="text" value="" id="txtTJ" maxlength="15" runat="server" style="width: 100px;" />
                            </td>
                        </tr>
                        <tr id="txtJibieBox" runat="server" style="display:none;">
                            <td  rowspan="1" align="right" valign="middle" bgcolor="#FBFDFF">
                                <span>
                会员级别：</span>
                            </td>
                            <td  height="20" rowspan="1" align="left" valign="middle" bgcolor="#FBFDFF">
                            <span>
                                 <asp:DropDownList ID="ddlJiBie" runat="server">
                                 </asp:DropDownList>
                                 </span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                性别：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                    <asp:DropDownList ID="sex" runat="server">
                        <asp:ListItem Value="1">男</asp:ListItem>
                        <asp:ListItem Value="0">女</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                会员姓名：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="name" type="text" value="" id="name" runat="server" style="width: 100px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                一级密码：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                 <input name="pwd1" type="text" value="" id="pwd1" runat="server" style="width: 100px;" />
                                 <%--当前密码：--%><asp:Literal ID="litPwd1" runat="server" Visible="false"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                二级密码：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="pwd2" type="text" value="" id="pwd2" runat="server" style="width: 100px;" />
                                <%--当前密码：--%><asp:Literal ID="litPwd2" runat="server" Visible="false"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                开户银行：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                 <asp:DropDownList ID="bank" runat="server">
                                 </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                开户行地址：<br /><label id="reg_notice2"  style=" color:Red;"></label>
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
					             <select name="province2" id="province2" onChange="provincechange('province2','city2','area2','reg_notice2')" style="width:140px;">
                                   <asp:Literal ID="lblProvince2" runat="server"></asp:Literal>
                                 </select><br />
                                 <select name="city2" id="city2" onChange="citychange('province2','city2','area2','reg_notice2')" style="width:160px;">
                                 <asp:Literal ID="lblCity2" runat="server"></asp:Literal>
				                 </select> <br />
				                 <select name="area2" id="area2" style="width:160px;">
				                 <asp:Literal ID="lblArea2" runat="server"></asp:Literal>
				                 </select><br />
                                <input name="txtBankAddress" type="text" value="" id="txtBankAddress" runat="server"
                        style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                银行账号：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="yinhang_zh" type="text" value="" id="yinhang_zh" runat="server" style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                开户姓名：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                 <input name="yinhan_name" type="text" value="" id="yinhan_name" runat="server" style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                QQ：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="qq" type="text" value="" id="qq" runat="server" style="width: 100px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                微信：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtwxid" type="text" value="" id="txtwxid" runat="server" style="width: 100px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                支付宝：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtalipayNumber" type="text" value="" id="txtalipayNumber" runat="server" style="width: 100px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                手机：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="mob" type="text" value="" id="mob" runat="server" style="width: 150px;" maxlength="11" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                邮政编码：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="textboxyouzheng" type="text" id="textboxyouzheng" runat="server" style="width: 80px;" maxlength="6" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                E-mail：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="Email" type="text" value="" id="Email" runat="server"   style="width: 150px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                地址：<br /><label id="reg_notice1"  style=" color:Red;"></label>
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <select name="province" id="province" onChange="provincechange('province','city','area','reg_notice1')" style="width:140px;">
                                   <asp:Literal ID="lblProvince" runat="server"></asp:Literal>
                                 </select><br />
                                 <select name="city" id="city" onChange="citychange('province','city','area','reg_notice1')" style="width:160px;">
                                 <asp:Literal ID="lblCity" runat="server"></asp:Literal>
				                 </select> <br />
				                 <select name="area" id="area" style="width:160px;">
				                 <asp:Literal ID="lblArea" runat="server"></asp:Literal>
				                 </select><br />
                                <input name="address" type="text" id="address" runat="server" style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                身份证号码：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="shenfen_id" type="text" value="" id="shenfen_id" runat="server"  style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                功能选项：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:CheckBox ID="CB_zm" runat="server" Text="内部账号" />
                                 &nbsp; 
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                登录错误次数：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtLoginTimes" type="text" value="" id="txtLoginTimes" runat="server" maxlength="3"  style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                资料已修改次数：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtinfoModiTime" type="text" value="" id="txtinfoModiTime" runat="server" maxlength="3"  style="width: 200px;" />
                            </td>
                        </tr>
<%
    if (Request.Cookies["ok"] != null)
    { 
 %>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                wx_pic：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:CheckBox ID="CB_wxPic" runat="server" Text="选中修改" />
                                <input name="txtWXPic" type="text" value="" id="txtWXPic" runat="server" style="width: 500px;" />
                            </td>
                        </tr>
<%}
     %>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                              <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" OnClientClick="return ifConfirm()" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"  onmouseout="this.className='button_onMouseOut'" />  
                              <input type="button" name="Button2" value="返回" id="Button2" onclick="history.go(-1)"  class="button_text" onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"  onmouseout="this.className='button_onMouseOut'" />
                                <asp:HiddenField ID="hidId" runat="server" />
                            </td>
                        </tr>
                        <tr style=" display:none;">
                            <td colspan="2" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:Button ID="Button3" runat="server" Text="授权修改" onclick="Button3_Click" />
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
