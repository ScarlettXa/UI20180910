<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TiKuan.aspx.cs" Inherits="direct_demo.demo1.manage.TiKuan" %>
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[会员管理]-[提现管理]</td>
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
            <th>序号</th>
            <th>用户编号</th>
            <th>开户姓名</th>
            <th>开户银行</th>
            <th>开户地址</th>
            <th>银行账号</th>
            <th>提款金额</th>
            <th>手续费</th>
            <th>实际金额</th>
            <th>提款时间</th>
            <th>状态</th>
            <th>备注</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("TKId").ToString() %></td>
            <td><asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"MemberView.aspx?huiyuan_bianhao="+Eval("huiyuan_bianhao").ToString() %>'  runat="server"><%#Eval("huiyuan_bianhao").ToString()%></asp:HyperLink></td>
            <td><%#Eval("huiyuan_name").ToString()%></td>
            <td><%#Eval("BName").ToString()%></td>
            <td><%#Eval("huiyuan_yinhang_address").ToString()%></td>
            <td><%#Eval("huiyuan_yinhang_zh").ToString()%></td>
            <td>￥<asp:Label ID="lblTKNum" runat="server" Text='<%#float.Parse(Eval("TKNum").ToString())%>'></asp:Label></td>
            <td><%#float.Parse(Eval("TKShouXu").ToString())%></td>
            <td><%#float.Parse(Eval("TKNumActual").ToString())%></td>
            <td><%#Eval("TKAddtime").ToString()%></td>
            <td>
            
              <%#Eval("TKState").ToString()=="1"?"已支付":""%>
              <%#Eval("TKState").ToString() == "0" ? "<span style='color:red;'>未处理</span>" : ""%>
              <%#Eval("TKState").ToString() == "2" ? "<span style='color:red;'>拒绝支付</span>" : ""%>
            </td>
            <td>
                <span class="<%#showhide2(Eval("TKState").ToString(),",0,")%>"><asp:TextBox ID="txtNote" runat="server" CssClass="80px" MaxLength="20"></asp:TextBox></span>
                <span class="<%#showhide2(Eval("TKState").ToString(),",1,2,")%>"><%#Eval("note").ToString()%></span>  
            </td>
            <td>
            
             <asp:LinkButton ID="LinkButton4" runat="server" OnCommand="Operate_Command" CommandName="ok"  CommandArgument='<%#Container.ItemIndex %>' CssClass='<%#showhide(Eval("TKState").ToString()) %>'  OnClientClick="return ifConfirm()">已支付</asp:LinkButton>
             <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="Operate_Command" CommandName="no"  CommandArgument='<%#Container.ItemIndex %>' CssClass='<%#showhide(Eval("TKState").ToString()) %>'  OnClientClick="return ifConfirm()">拒绝支付</asp:LinkButton>
             <%--<asp:LinkButton ID="LinkButton3" runat="server" OnClientClick="return confirm('删除后无法恢复，确认删除么？');"  OnCommand="Operate_Command" CommandName="del" CommandArgument='<%#Container.ItemIndex %>'>删除</asp:LinkButton>--%>
             <asp:TextBox ID="hide_tkid" runat="server" Style="display: none" Text='<%#Eval("TKId")%>'></asp:TextBox>
             <asp:TextBox ID="hide_huiyuanid" runat="server" Style="display: none" Text='<%#Eval("huiyuan_bianhao").ToString()%>'></asp:TextBox>
             
            </td>
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
