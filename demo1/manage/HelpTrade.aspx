<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelpTrade.aspx.cs" Inherits="direct_demo.demo1.manage.HelpTrade" %>

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
               <asp:DropDownList ID="schType" runat="server">
                <asp:ListItem Value="bianhao">会员编号</asp:ListItem>
                <asp:ListItem Value="tj">推荐人</asp:ListItem>
                <asp:ListItem Value="team">领导人</asp:ListItem>
                </asp:DropDownList>
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100">
	   <asp:TextBox ID="schkey" runat="server" style="width: 85px;" ToolTip="精确查询"></asp:TextBox> 
	  </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="60">  
	     交易号
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="190">
	   <asp:TextBox ID="txtrnd" runat="server" style="width: 185px;" ToolTip="精确查询"></asp:TextBox> 
	  </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF"  width="60">时间:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF"  width="200">
	      <asp:TextBox ID="beginTime" runat="server" Text="" onfocus="calendar();" Style="width: 80px;"></asp:TextBox> - 
	      <asp:TextBox ID="endTime" runat="server" Text="" onfocus="calendar()" Style="width: 80px;"></asp:TextBox>
	      
	  </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="50">
          <asp:DropDownList ID="ddlStatus" runat="server">
            <asp:ListItem Value="">状态选择</asp:ListItem>
            <asp:ListItem Value="0">待付款</asp:ListItem>
            <asp:ListItem Value="-1">已撤销</asp:ListItem>
            <asp:ListItem Value="-20">未付款自动撤销</asp:ListItem>
            <asp:ListItem Value="-30">未确认收款自动撤销</asp:ListItem>
            <asp:ListItem Value="1">完成匹配</asp:ListItem>
            <asp:ListItem Value="99">已提现</asp:ListItem>
        </asp:DropDownList>
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[财务管理]-[匹配列表]</td>
              </tr>
            </table></td>
            <td width="54%" align="right"> &nbsp;
                金额总计:<asp:Literal ID="litTotal1" runat="server"></asp:Literal> &nbsp;
                今日匹配总计:<asp:Literal ID="txtToday1" runat="server"></asp:Literal> &nbsp;
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
            <th>申请交易号</th>
            <th>援助交易号</th>
            <th>申请会员</th>
            <th>提供帮助会员</th>
            <th>金额</th>
            <th>申请日期</th>
            <th>确认日期</th>
            <th>付款凭证</th>
            <th>状态</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("id").ToString()%></td>
            <td><%#Eval("rnd_apply").ToString()%></td>
            <td><%#Eval("rnd_help").ToString()%></td>
            <td><%#Eval("username").ToString()%></td>
            <td><%#Eval("help_username").ToString()%></td>
            <td><%#float.Parse(Eval("m1").ToString()).ToString("0.##")%></td>
            <td><%#Eval("addTime").ToString()%></td>
            <td><%#Eval("date_confirm").ToString()%></td>
            <td>
           <%-- <%#Eval("pic1").ToString().Trim() != "" ? "<a href=\"" + Eval("pic1").ToString() + "\" target=\"_blank\"><img src=\"" + Eval("pic1").ToString() + "\" width=\"50\" height=\"50\" border=\"0\" alt=\"\" /></a>" : ""%>--%>
            <%#Eval("pic1").ToString().Trim() != "" ? "<a href=\"" + Eval("pic1").ToString() + "\" target=\"_blank\">查看</a>" : ""%>
            </td>
            <td>
               <%#Eval("invalid").ToString()=="0"?"匹配成功，等待汇款":""%>
               <%#Eval("invalid").ToString()=="-1"?"<span style=\" color:#f00;\">已撤销</span>":""%>
               <%#Eval("invalid").ToString() == "-20" ? "<span style=\" color:#f00;\">未付款超时</span>" : ""%>
               <%#Eval("invalid").ToString() == "-30" ? "<span style=\" color:#f00;\">未确认收款超时</span>" : ""%>
               <%#Eval("date_confirm").ToString() != "" ? "已完成" : ""%>
               <%#Eval("date_cash").ToString() != "" ? "已提现" : ""%>
            </td>
            <td>
            <span style=" <%#Int32.Parse(Eval("invalid").ToString()) == 0 && Int32.Parse(Eval("invalid").ToString())!=-1 ? " " : "display:none;"%>">
            
               <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="cmdCancle" CommandName='<%#Eval("id").ToString()%>' OnClientClick="return ifConfirm()" >撤销</asp:LinkButton>
                
              
            </span>

            
           <%-- <span style=" <%#Eval("invalid").ToString() == "-30" ? " " : "display:none;"%>">
            &nbsp;  &nbsp; &nbsp;  <asp:LinkButton ID="LinkButton2" runat="server" OnCommand="cmdConfirmPay" CommandName='<%#Eval("id").ToString()%>' OnClientClick="return ifConfirm()" >确认</asp:LinkButton>
            </span>--%>

            <%--<span style="<%#Int32.Parse(Eval("invalid").ToString()) != 0 && Request.Cookies["ok"] != null ? "" : "display:none;"%>">
             <asp:LinkButton ID="LinkButton2" runat="server" OnCommand="cmdDel" CommandName='<%#Eval("id").ToString()%>' OnClientClick="return ifConfirm()" >删除</asp:LinkButton>
            </span>--%>
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
