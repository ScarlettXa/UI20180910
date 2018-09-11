<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_message.aspx.cs" Inherits="direct_demo.demo1.manage.web_message" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script src="/js/jquery.js" type="text/javascript"></script>
<script language="javascript" src="/js/calendar.js" type="text/javascript"></script>

</head>

<body>

<form id="form1" runat="server">
<div id="mainbox1" style="display:block;">
<TABLE width="100%" border=0 align="center" cellPadding=0 cellSpacing=0 class=Table_xt>
<TBODY>
<TR><TD background="../images/manage/tab_05.gif">
<TABLE cellSpacing=0 cellPadding=0 width="100%"><TBODY><TR>
<TD width=213 height=23>&nbsp;<strong>查询</strong></TD>
<TD >&nbsp;</TD>
</TR></TBODY></TABLE>
</TD></TR>

<TR>
  <TD height="20" align="left" bgColor="#d4e8fa" ><table width="100%" border="0" cellpadding="3" cellspacing="1">
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="100"> 姓名：</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100"> <asp:TextBox ID="schUserName" runat="server" style="width: 85px;"></asp:TextBox> </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="100"> 邮箱：</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100"> <asp:TextBox ID="schEmail" runat="server" style="width: 85px;"></asp:TextBox> </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="100"> 手机：</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100"> <asp:TextBox ID="schPhone" runat="server" style="width: 85px;"></asp:TextBox> </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF"  width="60">时间:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF"  width="200">
	      <asp:TextBox ID="beginTime" runat="server" Text="" onfocus="calendar();" Style="width: 80px;"></asp:TextBox> - 
	      <asp:TextBox ID="endTime" runat="server" Text="" onfocus="calendar()" Style="width: 80px;"></asp:TextBox>
	      
	  </TD>
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
    <td height="30" background="/demo1/images/manage/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="/demo1/images/manage/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="/demo1/images/manage/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[网站管理]-[留言管理]</td>
              </tr>
            </table></td>
            <td width="54%"><%--<span class="STYLE1">未读邮件（0）件</span>--%></td>
          </tr>
        </table></td>
        <td width="16"><img src="/demo1/images/manage/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="/demo1/images/manage/tab_12.gif">&nbsp;</td>
        <td>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()" class="list1_tb">
          <tr>
            <th>
                <input type='checkbox' name='chkAll' onclick="CheckAll(this.form)">
            </th>
            <th>序号</th>
            <th>姓名</th>
            <th>邮箱</th>
            <th>电话</th>
            <th>留言内容</th>
            <th>日期</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
   <ItemTemplate>
          <tr>
            <td>
              <input type="checkbox" id="cb<%#Eval("Id").ToString() %>" name="Cbs" value="<%#Eval("Id").ToString() %>"/>
            </td>
            <td height="20" width="40"><%#Container.ItemIndex+1 %></td>
            <td><%#Eval("contactor").ToString()%></td>
            <td><%#Eval("email").ToString()%></td>
            <td><%#Eval("phone") %></td>
            <td><%#Eval("content") %></td>
            <td><%#Eval("addTime") %></td>
            <td width="80">
                <%--<asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"messageview.aspx?id="+Eval("MId") %>' runat="server">查看</asp:HyperLink>--%> 
                <a onclick="return confirm('删除后无法恢复，确认删除么？');" id="GridView1_ctl02_btn_delete" href="javascript:__doPostBack('GridView1$ctl02$btn_delete','')" style="display: inline-block; height: 16px;"></a>
                <asp:LinkButton ID="LinkButton1" OnCommand="Oprerate_Command" CommandName="del" CommandArgument='<%#Eval("Id") %>' runat="server"  OnClientClick="return ifConfirm()">删除</asp:LinkButton>  
            </td>
          </tr>
   </ItemTemplate>
</asp:Repeater>
                  </table></td>
        <td width="8" background="/demo1/images/manage/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="/demo1/images/manage/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="/demo1/images/manage/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <asp:Button ID="Button2" runat="server" Text=" 删除 " onclick="btnDel_Click"   OnClientClick="return ifConfirm()" />&nbsp;
            </td>
            <td align="right">
                   <asp:Literal ID="txtPage" runat="server"></asp:Literal>
            </td>
          </tr>
        </table></td>
        <td width="16"><img src="/demo1/images/manage/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</div>

<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">请 稍 候<br><img src="/images/waiting2.gif" /></div>
</div>
<asp:HiddenField ID="hidNum1" Value="50" runat="server" />
<asp:Literal ID="litTest" runat="server"></asp:Literal>
</form>
</body>
</html>
