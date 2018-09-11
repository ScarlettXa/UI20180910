<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberList2.aspx.cs" Inherits="direct_demo.demo1.manage.MemberList2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<div id="mainbox1" style="display:block;">
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
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >  <asp:DropDownList ID="schType" runat="server">
                <asp:ListItem Value="bianhao">会员编号</asp:ListItem>
                <asp:ListItem Value="name">会员姓名</asp:ListItem>
                </asp:DropDownList>
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" > <asp:TextBox ID="schkey" runat="server" style="width: 85px;"></asp:TextBox> </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >
          <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" CssClass="button_text" />
        </TD>
         <TD align="right" valign="middle" bgColor="#FBFDFF" width="70%">&nbsp;&nbsp; </TD>   
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[会员管理]-[未开通会员]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="106">&nbsp;</td>
                <td width="106"><table width="90%" border="0" cellpadding="0" cellspacing="0" style=" display:none;">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/manage/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="MemberReg.aspx">新增会员</a></div></td>
                  </tr>
                </table></td>
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
        <td width="8" class="list1_left">&nbsp;</td>
        <td>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()" class="list1_tb">
          <tr>
            <th>序号</th>
            <th>编号</th>
			<th>姓名</th>
            <th>推荐人</th>
			<th>注册时间</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("id").ToString() %></td>
            <td>
              <%#Eval("huiyuan_bianhao").ToString() %>
            </td>
			<td><%#Eval("huiyuan_name") %></td>
            <td><%#Eval("huiyuan_shang_id")%></td>
			<td><%#Eval("huiyuan_add_time")%></td>
            <td>
              <asp:Label ID="id_hide" Style="display: none;" runat="server" Text='<%#Eval("id") %>'></asp:Label>
            <a href="MemberView.aspx?id=<%#Eval("id").ToString() %>">查看</a>&nbsp;|&nbsp;
              <%-- <a href="MemberModi_unactived.aspx?id=<%#Eval("id").ToString() %>">修改</a>&nbsp;|&nbsp;--%>
                <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="Button_huiyuan_qr" CommandName='<%#Container.ItemIndex %>' OnClientClick="return ifConfirm()" >激活</asp:LinkButton>&nbsp;|&nbsp;
                <%--<asp:LinkButton ID="LinkButton3" runat="server" OnClientClick="return ifConfirm()"  OnCommand="Operate_Command" CommandName="kd" CommandArgument='<%#Eval("id").ToString()%>' CssClass='<%#showhide(Eval("flag_kong").ToString(),"0")%>'>空单</asp:LinkButton> &nbsp;  &nbsp; --%>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return ifConfirm()"  OnCommand="Operate_Command" CommandName="del" CommandArgument='<%#Eval("id").ToString()%>'>删除</asp:LinkButton>
            </td>
          </tr>
  </ItemTemplate>
</asp:Repeater>


        </table></td>
        <td width="8" class="list1_right">&nbsp;</td>
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
</div>

<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">请 稍 候<br><img src="/images/waiting2.gif" /></div>
</div>
<asp:HiddenField ID="hidNum1" Value="50" runat="server" />
</form>
</body>
</html>
