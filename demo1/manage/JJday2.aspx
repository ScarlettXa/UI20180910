<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JJday2.aspx.cs" Inherits="direct_demo.demo1.manage.JJday2" %>


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
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="60">  
	     会员编号
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100">
	   <asp:TextBox ID="txtSchBianhao" runat="server" style="width: 85px;" ToolTip="精确查询"></asp:TextBox> 
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[财务管理]-[每日奖金汇总]</td>
              </tr>
            </table></td>
            <td width="54%" align="right">
               &nbsp;
                奖金总额:<asp:Literal ID="txtJiangjin" runat="server"></asp:Literal> &nbsp;
                业绩总额:<asp:Literal ID="txtYeji" runat="server"></asp:Literal>&nbsp;
                拨出率:<asp:Literal ID="txtBochu" runat="server"></asp:Literal>
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
                                    <th>日期</th>
                                    <th style=" <%=readConfig("jj1Show")=="1"?"":"display:none;" %>">推荐奖</th>
                                    <th style=" <%=readConfig("jj2Show")=="1"?"":"display:none;" %>">市场奖</th>
                                    <th style=" <%=readConfig("jj3Show")=="1"?"":"display:none;" %>">见点奖</th>
                                    <th style=" <%=readConfig("jj4Show")=="1"?"":"display:none;" %>">报单补贴</th>
                                    <th style=" <%=readConfig("jj5Show")=="1"?"":"display:none;" %>">管理奖</th>
                                    <th style=" <%=readConfig("jj6Show")=="1"?"":"display:none;" %>">理财利息</th>
                                    <th style=" <%=readConfig("jj7Show")=="1"?"":"display:none;" %>">日分红</th>
                                    <th style=" <%=readConfig("jj8Show")=="1"?"":"display:none;" %>">幸运奖</th>
                                    <th style=" <%=readConfig("teamFenLiShow")=="1"?"":"display:none;" %>">循环奖</th>
                                    <th style=" <%=readConfig("jj10Show")=="1"?"":"display:none;" %>">层奖</th>
                                    <th>总奖金</th>
                                    <th>总业绩</th>
                                    <th>拨出率</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
                                     <td><%#DateTime.Parse(Eval("addtime").ToString()).ToLongDateString()%></td>
                                    <td title="推荐奖" style=" <%=readConfig("jj1Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj1").ToString()).ToString("f2")%></td>
                                    <td title="市场奖" style=" <%=readConfig("jj2Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj2").ToString()).ToString("f2")%></td>
                                    <td title="见点奖" style=" <%=readConfig("jj3Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj3").ToString()).ToString("f2")%></td>
                                    <td title="报单补贴" style=" <%=readConfig("jj4Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj4").ToString()).ToString("f2")%></td>
                                    <td title="管理奖" style=" <%=readConfig("jj5Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj5").ToString()).ToString("f2")%></td>
                                    <td title="理财利息" style=" <%=readConfig("jj6Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj6").ToString()).ToString("f2")%></td>
                                    <td title="日分红" style=" <%=readConfig("jj7Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj7").ToString()).ToString("f2")%></td>
                                    <td title="幸运奖" style=" <%=readConfig("jj8Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj8").ToString()).ToString("f2")%></td>
                                    <td title="循环奖" style=" <%=readConfig("teamFenLiShow")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj9").ToString()).ToString("f2")%></td>
                                    <td title="层奖" style=" <%=readConfig("jj10Show")=="1"?"":"display:none;" %>"><%#float.Parse(Eval("jj10").ToString()).ToString("f2")%></td>
                                    <td title="总奖金"><%#float.Parse(Eval("jj").ToString()).ToString("f2")%></td>
                                    <td title="总业绩"><%#float.Parse(Eval("xiaofei").ToString()).ToString("f2")%></td>
                                    <td title="拨出率"><%#(float.Parse(Eval("jj").ToString()) / float.Parse(Eval("xiaofei").ToString())*100).ToString("f2")%>%</td>
                                   
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
<asp:HiddenField ID="hidNum1" Value="50" runat="server" />
</form>
</body>
</html>
