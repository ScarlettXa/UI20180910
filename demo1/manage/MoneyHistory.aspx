<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoneyHistory.aspx.cs" Inherits="direct_demo.demo1.manage.MoneyHistory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />

<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=20170703"></script>
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
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="60">  
	     会员编号
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100">
	   <asp:TextBox ID="txtSchBianhao" runat="server" style="width: 100px;" ToolTip="精确查询"></asp:TextBox> 
	  </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="50">  
	     说明
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100">
	   <asp:TextBox ID="txtSchNotice" runat="server" style="width: 85px;" ToolTip="模糊查询"></asp:TextBox> 
	  </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="50">  
	     摘要
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100">
	   <asp:TextBox ID="txtSchTxt1" runat="server" style="width: 185px;" ToolTip="模糊查询"></asp:TextBox> 
	  </TD>
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
    <td height="30" background="../images/manage/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/manage/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/manage/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[财务管理]-[账户变动明细]</td>
              </tr>
            </table></td>
            <td width="54%" align="right">
                <%--<a href="bobi.aspx">拨出率</a></div>--%>
               <%-- 奖金总额:<asp:Literal ID="txtJiangjin" runat="server"></asp:Literal> &nbsp;
                业绩总额:<asp:Literal ID="txtYeji" runat="server"></asp:Literal>&nbsp;
                拨出率:<asp:Literal ID="txtBochu" runat="server"></asp:Literal>--%>
                &nbsp;
            </td>
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
            <th>日期</th>
            <th>会员编号</th>
            <th>变动金额</th>
            <th>本次余额</th>
            <th>账户类型</th>
            <th>说明</th>
            <th>摘要</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("Id").ToString() %></td>
            <td style="<%#Int32.Parse(Eval("flag1").ToString()) != 0 ? " color:#f00;" : ""%>"><%#Eval("addTime").ToString()%></td>
            <td><a href="MemberView.aspx?username=<%#Eval("huiyuan_bianhao1").ToString()%>"><%#Eval("huiyuan_bianhao1").ToString()%></a></td>
            <td><%#float.Parse(Eval("money1").ToString()).ToString("0.##")%></td>
            <td><%#float.Parse(Eval("balance").ToString()).ToString("0.##")%></td>
            <td><%#Eval("accountType").ToString()%></td>
            <td style=" text-align:left; padding-left:5px;">
               <%#Eval("notice").ToString()%>
            </td>
            <td><%#Eval("txt1").ToString()%>&nbsp;
               <%#float.Parse(Eval("money2").ToString()) != 0 ? " &nbsp; 重复消费:" + float.Parse(Eval("money2").ToString()) : ""%>
               <%#float.Parse(Eval("money3").ToString()) != 0 ? " &nbsp;  税收:" + float.Parse(Eval("money3").ToString()) : ""%>
            
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
<asp:HiddenField ID="hidNum1" Value="20" runat="server" />
<input type="text" id="hidPagePara" runat="server" style=" display:none;" />
</form>
</body>
</html>
