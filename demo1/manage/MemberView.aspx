<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberView.aspx.cs" Inherits="direct_demo.demo1.manage.MemberView" %>
<html><head><title></title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm2.js"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</head>
<body>
<form id="form1" runat="server">
<br>
<TABLE width="550" border=0 align="center" cellPadding=0 cellSpacing=0 class=Table_xt>
<TBODY>
<TR><TD width="550" colSpan=4 background="images/bg.gif">
<TABLE cellSpacing=0 cellPadding=0 width="100%"><TBODY><TR>
<TD width=213 height=23>&nbsp;<strong>用户查看</strong></TD>
<TD ><strong><a>会员查看</a></strong></TD>
</TR></TBODY></TABLE>
</TD></TR>
<TR>
  <TD height="20" align="left" bgColor="#d4e8fa" >
 <table width="100%" border="0" cellpadding="3" cellspacing="1">
  <asp:Repeater ID="rpt1" runat="server">
  <ItemTemplate>
	<TR>
	  <TD  rowspan="1" align="right" vAlign=middle bgColor="#FBFDFF" width="150">会员编号:</TD>
	  <TD height="20"  rowspan="1" align="left" vAlign=middle bgColor="#FBFDFF" ><%#Eval("huiyuan_bianhao").ToString() %></TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >姓名:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_name").ToString())%></TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >身份证号码:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_shenfen_id").ToString())%></TD>
	  </TR>  
	<TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >身份证正面:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><img id="idcard1" width="200" src="<%#Eval("idcard1").ToString() %>" /></TD>
	  </TR>  
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >身份证反面:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><img id="idcard2" width="200" src="<%#Eval("idcard2").ToString() %>" /></TD>
	  </TR>  
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >手持身份证:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><img id="idcard3" width="200" src="<%#Eval("idcard3").ToString() %>" /></TD>
	  </TR>  
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >级别:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Jibie_huiyuan(Eval("huiyuan_jiebie").ToString())%></TD>
	  </TR>
	  <tbody id="boxService" runat="server" visible="false">
	  <TR>
	    <TD align="right" valign="middle" bgColor="#FBFDFF" >商务中心名称 : </TD>
	    <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_zm_mingcheng").ToString())%></TD>
	    </TR>
	  <TR>
	    <TD align="right" valign="middle" bgColor="#FBFDFF" >负责地区:</TD>
	    <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_zm_diqu").ToString())%></TD>
	    </TR>
	  <TR>
	    <TD align="right" valign="middle" bgColor="#FBFDFF" >商务中心备注:</TD>
	    <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_zm_memo").ToString())%></TD>
	    </TR>
	  </tbody>
	  <TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >注册时间:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Eval("huiyuan_add_time").ToString()%></TD>
	  </TR>
<%--		<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >一级密码:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Eval("huiyuan_pass").ToString()%></TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >二级密码:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Eval("pass_two").ToString()%></TD>
	  </TR>--%>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >服务中心编号:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Eval("huiyuan_zm").ToString()%></TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >推荐人:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Eval("huiyuan_shang_id").ToString()%></TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >接点人:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Eval("huiyuan_jiedian").ToString()%></TD>
	  </TR>
     <TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >联系手机:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_mob").ToString())%></TD>
	  </TR>
	 <TR>
      <TD align="right" valign="middle" bgColor="#FBFDFF" >QQ:</TD>
      <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_qq").ToString())%></TD>
	  </TR>
	 <TR>
      <TD align="right" valign="middle" bgColor="#FBFDFF" >微信:</TD>
      <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("wxid").ToString())%></TD>
	  </TR>
	 <TR>
      <TD align="right" valign="middle" bgColor="#FBFDFF" >联系地址:</TD>
      <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" >
            <%#getAddress("province", Eval("address_province").ToString())%>
            <%#getAddress("city", Eval("address_city").ToString())%>
            <%#getAddress("area", Eval("address_area").ToString())%>
      <%#chkBuyFlag(Eval("huiyuan_address").ToString())%>
      </TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >开户银行:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#Eval("huiyuan_yinhang").ToString()%></TD>
	  </TR>
	 <TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >开户行地址:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" >
	  
            <%#getAddress("province", Eval("bank_province").ToString())%>
            <%#getAddress("city", Eval("bank_city").ToString())%>
            <%#getAddress("area", Eval("bank_area").ToString())%>
	  <%#chkBuyFlag(Eval("huiyuan_yinhang_address").ToString())%>
	  </TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >银行账号:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_yinhang_zh").ToString())%></TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >密保问题:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("pwd_question").ToString())%></TD>
	  </TR>
	<TR>
	  <TD align="right" valign="middle" bgColor="#FBFDFF" >密保答案:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("pwd_answer").ToString())%></TD>
	  </TR>
	<TR style='display:none;'>
      <TD align="right" valign="middle" bgColor="#FBFDFF" >开户名:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#chkBuyFlag(Eval("huiyuan_yinhang_name").ToString())%></TD>
	</TR>
	<%--<TR style=" display:;">
      <TD align="right" valign="middle" bgColor="#FBFDFF" >授权码:</TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" ><%#shouQuanMa(Eval("huiyuan_bianhao").ToString().ToLower(),Eval("huiyuan_add_time").ToString(),"")%></TD>
	</TR>--%>

	  
  </ItemTemplate>
  </asp:Repeater>
	<TR>
	  <TD colspan="2" align="center" valign="middle" background="images/tab_19.gif">
        <asp:Button ID="Button1" runat="server" Text="身份证通过" onclick="Button1_Click" OnClientClick="return ifConfirm()" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"  onmouseout="this.className='button_onMouseOut'" /> 
        <asp:Button ID="Button2" runat="server" Text="取消身份证通过" onclick="Button2_Click" Visible="false" OnClientClick="return ifConfirm()" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"  onmouseout="this.className='button_onMouseOut'" /> 
	    <INPUT class=button_text onMouseDown="this.className='button_onmousedown'" onMouseOver="this.className='button_onmouseover'" onMouseOut="this.className='button_onMouseOut'" type=button  id="but" value="返回" name="but" onClick="history.back();">	  </TD>
	  </TR>
    </table> 
  
    
    </TD>
  </TR>
</TABLE>

</form>
</body></html>