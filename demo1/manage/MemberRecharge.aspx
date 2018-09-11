<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberRecharge.aspx.cs" Inherits="direct_demo.demo1.manage.MemberRecharge" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>



<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script language="javascript" src="/js/calendar.js" type="text/javascript"></script>
</head>

<body>

<form name="form1" id="form1" runat="server">
<input type="hidden" name="action" value="query">
<TABLE width="100%" border=0 align="center" cellPadding=0 cellSpacing=0 class=Table_xt>
<TBODY>
<TR><TD background="../images/manage/tab_05.gif">
<TABLE cellSpacing=0 cellPadding=0 width="100%"><TBODY><TR>
<TD width=213 height=23>&nbsp;<strong>会员查询</strong></TD>
<TD >&nbsp;</TD>
</TR></TBODY></TABLE>
</TD></TR>

<TR>
  <TD height="20" align="left" bgColor="#d4e8fa" ><table width="100%" border="0" cellpadding="3" cellspacing="1">
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="100">  <asp:DropDownList ID="schType" runat="server">
                <asp:ListItem Value="bianhao">会员编号</asp:ListItem>
                <asp:ListItem Value="name">会员姓名</asp:ListItem>
                </asp:DropDownList>
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100"> <asp:TextBox ID="schkey" runat="server" style="width: 85px;"></asp:TextBox> </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="50">
          <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" CssClass="button_text" />
        </TD>
         <TD align="right" valign="middle" bgColor="#FBFDFF">&nbsp;&nbsp; </TD>   
	  </TR>

    </table></TD>
  </TR>
</TABLE>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/manage/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/manage/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/manage/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[会员管理]-[会员充值]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="106">&nbsp;</td>
                <td width="106"> </td>
               <%-- <td width="83"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/manage/33.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="../excel/5.php">导出Excel</a></div></td>
                  </tr>
                </table></td>--%>
                <td width="29"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1">&nbsp;</td>
                    <td class="STYLE1">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/manage/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/manage/tab_12.gif">&nbsp;</td>
        <td>
<div id="mainbox1" style="display:block;">
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()" class="list1_tb">
          <tr>
            <th>序号</th>
            <th>编号</th>
			<th>姓名</th>
            <th>善远币</th>
            <th>充值金额</th>
            <th>排单币</th>
            <th>充值金额</th>
            <th>静态积分</th>
            <th>充值金额</th>
            <th>动态积分</th>
            <th>充值金额</th>
            <th>股票</th>
            <th>充值金额</th>
            <th style=" display:none;">货币3</th>
            <th style=" display:none;">充值金额</th>
            <th>备注</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("id").ToString() %></td>
            <td><%#Eval("huiyuan_bianhao").ToString() %></td>
			<td><%#Eval("huiyuan_name") %></td>
            <td title="善远币"><%#float.Parse(Eval("fenhong_canshu1").ToString()).ToString("0.##")%></td>
            <td title="善远币"><asp:TextBox ID='chongzhimoney' runat="server" style="height: 20px; width: 59px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46 || event.keyCode==45"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox></td>
            <td title="排单币"><%#float.Parse(Eval("huobei1").ToString()).ToString("0.##")%></td>
            <td title="排单币"><asp:TextBox ID='txtHuobei1' runat="server" style="height: 20px; width: 59px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46 || event.keyCode==45"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox></td>
            <td title="静态积分"><%#float.Parse(Eval("huobei_help").ToString()).ToString("0.##")%></td>
            <td title="静态积分"><asp:TextBox ID='txthuobei_help' runat="server" style="height: 20px; width: 59px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46 || event.keyCode==45"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox></td>
            <td title="动态积分"><%#float.Parse(Eval("huobei_help2").ToString()).ToString("0.##")%></td>
            <td title="动态积分"><asp:TextBox ID='txthuobei_help2' runat="server" style="height: 20px; width: 59px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46 || event.keyCode==45"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox></td>
            <td title="股票"><%#float.Parse(Eval("stock_num").ToString()).ToString("0.##")%></td>
            <td title="股票"><asp:TextBox ID='txtstock_num' runat="server" style="height: 20px; width: 59px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46 || event.keyCode==45"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox></td>
            <td style=" display:none;"><%#float.Parse(Eval("huobei3").ToString()).ToString("0.##")%></td>
            <td style=" display:none;"><asp:TextBox ID='txtHuobei3' runat="server" style="height: 20px; width: 59px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46 || event.keyCode==45"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox></td>
            <td><asp:TextBox ID='txt1' runat="server" style="width: 100px;" MaxLength="20"></asp:TextBox></td>
            <td><asp:Button ID="Button1" runat="server" OnCommand="Operate_chongzhi" CommandName='<%#Container.ItemIndex %>' CommandArgument='<%#Eval("id")%>' Text="充值"  OnClientClick="return ifConfirm()" /></td>
          </tr>
  </ItemTemplate>
</asp:Repeater>


        </table>
</div>
<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">请 稍 候<br><img src="/images/waiting2.gif" /></div>
</div>
        </td>
        <td width="8" background="../images/manage/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="../images/manage/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="../images/manage/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;			</td>
            <td>
                   <asp:Literal ID="txtPage" runat="server"></asp:Literal>
            </td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/manage/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<asp:HiddenField ID="hidNum1" Value="50" runat="server" />
</form>
</body>
</html>