<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageAdd.aspx.cs" Inherits="direct_demo.demo1.manage.MessageAdd" %>

<html><head><title></title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</HEAD><body>

<form id="form1" runat="server">
<TABLE width="600" border=0 align="center" cellPadding=0 cellSpacing=0 class=Table_xt>
<TBODY>
<TR><TD width="600" colSpan=4>
<TABLE cellSpacing=0 cellPadding=0 width="100%" background="images/tab_05.gif"><TBODY><TR>
<TD width=213 height=23>&nbsp;<strong>写邮件</strong></TD>
<TD >&nbsp;</TD>
</TR></TBODY></TABLE>
</TD></TR>
<TR>
  <TD height="20" align="left" bgColor="#d4e8fa" ><table width="100%" border="0" cellpadding="3" cellspacing="1">
	<TR>
	  <TD width="23%" align="right" valign="middle" bgColor="#FBFDFF" >发件人:</TD>
	  <TD width="77%" height="38" align="left" valign="middle" bgColor="#FBFDFF" >
	   <input type="text" value="" id="fasong" runat="server" disabled="disabled" style="width: 180px;" />
	   </TD>
	  </TR>
	 <TR>
	  <TD width="23%" align="right" valign="middle" bgColor="#FBFDFF" >收件人:</TD>
	  <TD width="77%" height="38" align="left" valign="middle" bgColor="#FBFDFF" >
	   <asp:TextBox ID="jieshou" runat="server" style="width:180px;" MaxLength="20"></asp:TextBox>
	     <asp:CheckBox ID="CheckBox_all" runat="server" Text="群发"  oncheckedchanged="CheckBox_all_CheckedChanged" AutoPostBack="true" />
	   </TD>
	  </TR>
<%--	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >标题:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><input  type="text" id="title" runat="server" style="width: 296px;" maxlength="20" /></TD>
	  </TR>--%>
	  <%
          if (_id>0)
          { 
	   %>
	  <TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >原短信:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><asp:Literal ID="litOldInfo" runat="server"></asp:Literal> </TD>
	  </TR>
	  <%
	  }
	       %>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >内容:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><textarea name="content" cols="60" rows="10" id="jieshao" runat="server"></textarea></TD>
	  </TR>
	<TR>
	  <TD background="images/tab_19.gif" colspan="2" align="center" valign="middle">
           <asp:Button ID="Button3" runat="server" Text="发送" onclick="Button3_Click" />
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <input type="button" name="Button2" value="返回" id="Button2" onclick="history.go(-1)" />
 	  </TD>
	  </TR>

    </table></TD>
  </TR>
</TABLE>
</form>
</body></html>