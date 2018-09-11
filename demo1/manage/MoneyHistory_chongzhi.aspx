<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoneyHistory_chongzhi.aspx.cs" Inherits="direct_demo.demo1.manage.MoneyHistory_chongzhi" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script language="javascript" src="/js/calendar.js" type="text/javascript"></script>
</head>

<body>

<form name="form1" id="form1" runat="server">
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[财务管理]-[充值记录]</td>
              </tr>
            </table></td>
            <td width="54%"> </td>
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
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()" class="list1_tb">
          <tr>
          <%--  <th>
                <input type='checkbox' name='chkAll' onclick="CheckAll(this.form)">
            </th>--%>
            <th>序号</th>
            <th>日期</th>
            <th>管理员</th>
            <th>会员编号</th>
            <th>金额</th>
            <th>账户类型</th>
            <th>备注</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
          <%--  <td>
              <input type="checkbox" id="cb<%#Eval("Id").ToString() %>" name="Cbs" value="<%#Eval("Id").ToString() %>"/>
            </td>--%>
            <td height="20"><%#Eval("Id").ToString() %></td>
            <td><%#Eval("addTime").ToString()%></td>
            <td><%#Eval("huiyuan_bianhao_from").ToString()%></td>
            <td><a href="MemberView.aspx?username=<%#Eval("huiyuan_bianhao1").ToString()%>"><%#Eval("huiyuan_bianhao1").ToString()%></a></td>
            <td><%#float.Parse(Eval("money1").ToString())%></td>
            <td><%#Eval("accountType").ToString()%></td>
            <td><%#Eval("txt1").ToString()%> <%#Eval("txt3").ToString()%> </td>
          </tr>
  </ItemTemplate>
</asp:Repeater>


        </table></td>
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
            <td>
              <%--<asp:Button ID="Button2" runat="server" Text=" 删除 " onclick="btnDel_Click"   OnClientClick="return ifConfirm()" />--%>
              &nbsp;
            </td>
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
