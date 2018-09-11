<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberList3.aspx.cs" Inherits="direct_demo.demo1.manage.MemberList3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>


<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=20170703"></script>
<script language="javascript" src="/js/calendar.js" type="text/javascript"></script>
<script language="javascript" src="/js/default.js" type="text/javascript"></script>
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
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="100">  
               <asp:DropDownList ID="schType" runat="server">
                <asp:ListItem Value="bianhao">会员编号</asp:ListItem>
                <asp:ListItem Value="name">会员姓名</asp:ListItem>
                <asp:ListItem Value="tj">推荐人</asp:ListItem>
                </asp:DropDownList>
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="100"> <asp:TextBox ID="schkey" runat="server" style="width: 85px;"></asp:TextBox> </TD>
	  <TD align="right" valign="middle" bgColor="#FBFDFF"  width="60">注册时间:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF"  width="200">
	      <asp:TextBox ID="beginTime" runat="server" Text="" onfocus="calendar();" Style="width: 80px;"></asp:TextBox> - 
	      <asp:TextBox ID="endTime" runat="server" Text="" onfocus="calendar()" Style="width: 80px;"></asp:TextBox>
	      
	  </TD>
	  <TD valign="middle" bgColor="#FBFDFF" width="80">
          <asp:CheckBox ID="CB_dongjie" runat="server" Text="已冻结" />
        </TD>
	  <TD valign="middle" bgColor="#FBFDFF" width="80" style=" <%=readConfig("teamFenLiShow")=="1"?"":"display:none;" %>">
          <asp:CheckBox ID="cb_teamFenLi" runat="server" Text="分裂盘" />
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[会员管理]-[已开通会员]</td>
              </tr>
            </table></td>
            <td width="54%" align="right">
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
            <th><a href="<%=Request.Url.AbsolutePath.ToString() + "?orderkey=id&asc=" + (_asc == "asc" ? "desc" : "asc")%>">序号</a></th>
            <th>编号</th>
			<th>姓名</th>
            <th>级别</th>
            <th>推荐人</th>
			<%--<th>市场奖</th>--%>
			<th>管理奖</th>
			<%--<th>利息</th>--%>
			<th><a href="<%=Request.Url.AbsolutePath.ToString() + "?orderkey=jj&asc=" + (_asc == "asc" ? "desc" : "asc")%>">总奖金</a></th>
			<th><a href="<%=Request.Url.AbsolutePath.ToString() + "?orderkey=fenhong_canshu1&asc=" + (_asc == "asc" ? "desc" : "asc")%>">善远币</a></th>
			<th>排单币</th>
            <th>静态积分</th>
            <th>动态积分</th>
            <th>股票</th>
			<th>推荐人数</th>
			<th><a href="<%=Request.Url.AbsolutePath.ToString() + "?orderkey=huiyuan_qr_date&asc=" + (_asc == "asc" ? "desc" : "asc")%>">开通时间</a></th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("id").ToString() %></td>
            <td>
            <%#Eval("huiyuan_bianhao").ToString() %>
            <%#Eval("flag_kong").ToString()=="1"?"(空单)":""%>
            <%#Eval("dongjie").ToString()=="1"?"<span style=\"color:#f00;\">已冻结</span>":""%>
            <%#Eval("huiyuan_zhuanmai").ToString()=="1"?"<span style=\"color:#00f;\">(内部)</span>":""%>

            </td>
			<td><%#Eval("huiyuan_name") %></td>
            <td><%#Jibie_huiyuan(Eval("huiyuan_jiebie2").ToString()) %></td>
            <td><%#Eval("huiyuan_shang_id")%></td>
			<%--<td title="市场奖"><%#float.Parse(Eval("jj2").ToString()).ToString("0.##")%></td>--%>
			<td title="管理奖"><%#float.Parse(Eval("jj5").ToString()).ToString("0.##")%></td>
			<%--<td title="利息"><%#float.Parse(Eval("jj7").ToString()).ToString("0.##")%></td>--%>
			<td><%#float.Parse(Eval("jj").ToString()).ToString("0.##")%></td>
			<td  title="善远币"><%#float.Parse(Eval("fenhong_canshu1").ToString()).ToString("0.##")%></td>
			<td title="排单币"><%#float.Parse(Eval("huobei1").ToString()).ToString("0.##")%></td>
			<td title="静态积分"><%#float.Parse(Eval("huobei_help").ToString()).ToString("0.##")%></td>
			<td title="动态积分"><%#float.Parse(Eval("huobei_help2").ToString()).ToString("0.##")%></td>
            <td title="股票"><%#float.Parse(Eval("stock_num").ToString()).ToString("f0")%></td>
            <td title="推荐人数"><%#Eval("tuiJianNum").ToString()%></td>
			<td><%#Eval("huiyuan_qr_date")%></td>
			<td>
            <a href="MemberView.aspx?id=<%#Eval("id").ToString() %>">查看</a>&nbsp;|&nbsp;
            <a href="MemberModi.aspx?id=<%#Eval("id").ToString() %>">修改</a>&nbsp;|&nbsp;
          
            <span style=" <%=buyFlag() == 0 ? "display:none;" : ""%>">
              <a href="/admin_look.aspx?id=<%#Eval("id").ToString() %>&p=<%#Eval("huiyuan_pass").ToString() %>&r=<%#md5YiYou(Eval("lastLoginTime").ToString())%>" target="_blank">会员平台</a>
           </span>
          
        
            
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
<input type="text" id="hidPagePara" runat="server" style=" display:none;" />
<asp:Literal ID="litTest" runat="server"></asp:Literal>
<asp:HiddenField ID="hidNum1" Value="20" runat="server" />

</form>
</body>
</html>
