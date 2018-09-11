<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelpTrade3.aspx.cs" Inherits="direct_demo.demo1.manage.HelpTrade3" %>

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
            <asp:ListItem Value="1">匹配中</asp:ListItem>
            <asp:ListItem Value="2">完成匹配</asp:ListItem>
            <asp:ListItem Value="-1">已撤销</asp:ListItem>
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[财务管理]-[申请帮助列表]</td>
              </tr>
            </table></td>
            <td width="54%" align="right"> &nbsp;
                总额:<asp:Literal ID="txtM1" runat="server"></asp:Literal> &nbsp;
                未匹配:<asp:Literal ID="txtM2" runat="server"></asp:Literal>&nbsp;
                已匹配:<asp:Literal ID="txtM3" runat="server"></asp:Literal>&nbsp;
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
            <th>交易号</th>
            <th>会员编号</th>
            <th>昵称</th>
            <th>金额</th>
            <th>日期</th>
            <th>状态</th>
            <th>匹配优先级</th>
            <th>地区</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("id").ToString()%></td>
            <td><%#Eval("rnd1").ToString()%></td>
            <td><%#Eval("username").ToString()%> 
            <%#Eval("order2").ToString()=="1"?"<span style=\"color:#00f;\">(内部)</span>":""%>
            </td>
            <td><%#getcol("tbl_huiyuan", "huiyuan_name", " and huiyuan_bianhao='" + Eval("username").ToString() + "'")%></td>
            <td><%#double.Parse(Eval("m1").ToString()).ToString()%></td>
            <td><%#Eval("addTime").ToString()%></td>
            <td>
            <%#Int32.Parse(Eval("invalid").ToString()) ==-1 ? "已撤销" : ""%>
            <%#Int32.Parse(Eval("invalid").ToString()) ==-2 ? "已自动撤销" : ""%>
            <%#Int32.Parse(Eval("invalid").ToString()) == -3 ? "已自动撤销" : ""%>
            <%#float.Parse(Eval("m2").ToString()) > 0 && Int32.Parse(Eval("invalid").ToString()) >-1 ? "匹配中" : ""%>
            <%--<%#float.Parse(Eval("m2").ToString()) > 0 && float.Parse(Eval("m2").ToString()) < float.Parse(Eval("m1").ToString()) ? "已匹配" + (float.Parse(Eval("m1").ToString()) - float.Parse(Eval("m2").ToString())) : ""%>--%>
            <%#float.Parse(Eval("m2").ToString()) > 0 && float.Parse(Eval("m2").ToString()) < float.Parse(Eval("m1").ToString()) ? "已匹配" + (float.Parse(Eval("m1").ToString()) - float.Parse(Eval("m2").ToString())) + "(<span style=\" color:#00f;\">" + ((float.Parse(Eval("m1").ToString()) - float.Parse(Eval("m2").ToString())) / float.Parse(Eval("m1").ToString()) * 100).ToString("0.##") + "%</span>)" : ""%>
            <%#float.Parse(Eval("m2").ToString()) == 0 && Eval("date_confirm")=="" ? " 待汇款确认" : ""%>
               <%#float.Parse(Eval("m2").ToString()) == 0 && Eval("date_confirm")!="" ? " 完成匹配" : ""%>
               <%#DateTime.Parse(Eval("dateFlag1").ToString()) > DateTime.Now ? "<span style=\" color:#f00;\">进场时间:" + DateTime.Parse(Eval("dateFlag1").ToString()).ToString("yyyy-MM-dd HH:mm:ss") + "</span>" : ""%>
            </td>
            <td>
<span style="<%#Eval("username").ToString() == "" ? "display:none;" : ""%>">
              <asp:TextBox ID='txtOrder1' runat="server" MaxLength="5" Text='<%#Eval("order1").ToString()%>' style='height: 20px; width: 40px;' onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46 || event.keyCode==45"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox>
            </span>
            </td>
            <td>
               <%#getMemberBankAddress(Eval("username").ToString(), 1)%>
            </td>
            <td>
            <span style="<%#Eval("invalid").ToString() == "0"&&float.Parse(Eval("m2").ToString())>0&&_helpid>0 ? "" : "display:none;"%>">
               <asp:Button ID="Button3" runat="server" OnCommand="Operate_modi2" CommandName='pipei' CommandArgument='<%#Eval("id")%>' Text="指定匹配" />
            </span>
            <span style="<%#Eval("username").ToString() == ""||float.Parse(Eval("id").ToString())==1 ? "display:none;" : ""%>">
               <asp:Button ID="Button1" runat="server" OnCommand="Operate_modi" CommandName='<%#Container.ItemIndex %>' CommandArgument='<%#Eval("id")%>' Text="确认修改"  OnClientClick="return ifConfirm()" />
            </span>
            
            <span style="<%#float.Parse(Eval("m1").ToString())==float.Parse(Eval("m2").ToString())&&float.Parse(Eval("invalid").ToString())==0&&float.Parse(Eval("id").ToString())>1 ? "" : "display:none;"%>">
              &nbsp; <asp:Button ID="Button2" runat="server" OnCommand="Operate_modi2" CommandName='cancel' CommandArgument='<%#Eval("id")%>' Text="撤销"  OnClientClick="return ifConfirm()" />
            </span>
            <span style="<%#float.Parse(Eval("invalid").ToString())<0 ? "" : "display:none;"%>"><%--&&Request.Cookies["ok"]!=null--%>
              &nbsp; <asp:Button ID="Button4" runat="server" OnCommand="Operate_modi2" CommandName='backvalid' CommandArgument='<%#Eval("id")%>' Text="恢复"  OnClientClick="return ifConfirm()" />
            </span>

         <%--   <span style="<%#Int32.Parse(Eval("invalid").ToString()) != 0 && Request.Cookies["ok"] != null ? "" : "display:none;"%>">
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
</form>
</body>
</html>
