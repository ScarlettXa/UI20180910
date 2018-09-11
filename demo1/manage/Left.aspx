<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Left.aspx.cs" Inherits="direct_demo.demo1.manage.Left" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<html>
<head>
<title></title>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</head>
<body>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
a:link{
font-size: 12px;
	color: #033d61; text-decoration:none;
}
a:visited{
font-size: 12px;
	color: #033d61; text-decoration:none;
}
a:hover{
font-size: 12px;
	color: #033d61; text-decoration:underline;
}
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}
</style>

<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="../images/manage/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">&nbsp;</td>
        <td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top">
    <table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>
           <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu1" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(1)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">会员管理</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu1" style="display:block;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="/demo1/member/memberreg.aspx?zhuceflag=admin" target="I2">会员注册</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
                           <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="/reg.html" target="_blank">会员注册</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MemberList1.aspx" target="I2">今日新增会员</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MemberList2.aspx" target="I2">未开通会员</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MemberList3.aspx" target="I2">已开通会员</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MemberList3.aspx?idcard=1" target="I2">审核身份证</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MemberList.aspx" target="I2">所有会员</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <tr id="menu1" runat="server" style=" display:none;">
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="NetMap.aspx" target="I2">安置结构图</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr id="menu2" runat="server" style=" display:none;">
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="NetMap_jd.aspx" target="I2">安置结构图</a></span></td>
								</tr>
							</table></td>
						  </tr>
						
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="NetMap_tuiJian.aspx" target="I2">推荐结构图</a></span></td>
								</tr>
							</table></td>
						  </tr>

                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
           <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu2" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu2" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(2)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">服务中心</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu2" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ServiceList1.aspx" target="I2">未开通服务中心</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ServiceList2.aspx" target="I2">已开通服务中心</a></span></td>
								</tr>
							</table></td>
						  </tr>
						 <%-- <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ServiceList3.aspx" target="I2">服务中心充值</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  --%>

                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu3" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu3" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(3)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">产品管理</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu3" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ProductAdd.aspx" target="I2">产品添加</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ProductList.aspx" target="I2">产品管理</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ProductOrder.aspx" target="I2">未处理产品订单</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ProductOrder2.aspx" target="I2">未发货订单</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ProductOrder2.aspx?sends=1" target="I2">已发货订单</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="ProductClass.aspx" target="I2">分类管理</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  

                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu4" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu4" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(4)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">财务管理</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu4" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="BonusList.aspx" target="I2">奖金明细</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MemberRecharge.aspx" target="I2">用户充值</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="moneyHistory_chongzhi.aspx" target="I2">充值记录</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="jjday.aspx" target="I2">奖金统计</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="moneyHistory.aspx" target="I2">账户明细</a></span></td>
								</tr>
							</table></td>
						  </tr>
						 <%-- <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="quanlist.aspx" target="I2">抵用券列表</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <tr style=" <%=readConfig("financeShow")=="1"?"":"display:none;" %>">
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="FinanceTrade.aspx" target="I2">理财管理</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr style=" <%=readConfig("helpSystemShow")=="1"?"":"display:none;" %>">
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="HelpTrade.aspx" target="I2">匹配列表</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr style=" <%=readConfig("helpSystemShow")=="1"?"":"display:none;" %>">
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="HelpTrade2.aspx" target="I2">提供帮助列表</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr style=" <%=readConfig("helpSystemShow")=="1"?"":"display:none;" %>">
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="HelpTrade3.aspx" target="I2">申请帮助列表</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="HelpTrade_set.aspx" target="I2">指定匹配</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  

                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu5" runat="server" style=" ">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu5" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(5)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">数据管理</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu5" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="Data.aspx" target="I2">数据管理</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="DataSet.aspx" target="I2">参数设置</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="password.aspx" target="I2">密码修改</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="InfoModiHistory.aspx" target="I2">资料修改记录</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  
                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu6" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu6" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(6)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">站内短信</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu6" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MessageAdd.aspx" target="I2">写信</a></span></td>
								</tr>
							</table></td>
						  </tr>
<%--						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MessageList.aspx?lb=1&isread=0" target="I2">未读短信</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MessageList.aspx?lb=1" target="I2">收件箱</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MessageList.aspx?lb=2" target="I2">发件箱</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="MessageList2.aspx" target="I2">短信管理</a></span></td>
								</tr>
							</table></td>
						  </tr>

                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu7" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu7" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(7)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">公司动态</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu7" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="NewsAdd2.aspx?id=31" target="I2">奖金制度</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="NewsAdd2.aspx?id=34" target="I2">注册协议</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="NewsList.aspx?classid=2" target="I2">关于我们</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="NewsList.aspx?classid=3" target="I2">新闻公告</a></span></td>
								</tr>
							</table></td>
						  </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu8" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu8" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(8)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">管理员管理</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu8" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="adminList.aspx" target="I2">管理员列表</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="adminAdd.aspx" target="I2">添加管理员</a></span></td>
								</tr>
							</table></td>
						  </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="lanmu9" runat="server">
          <tr>
            <td height="23" background="../images/manage/main_47.gif" id="imgmenu9" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu1(9)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">网站管理</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/manage/main_51.gif" id="submenu9" style="display:none;">
			  <div class="sec_menu" >
			    <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                   <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="web_system.aspx" target="I2">网站基本设置</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="web_newsList.aspx?classid=2" target="I2">新闻管理</a> <a href="web_newsAdd.aspx?classid=2" target="I2">添加</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <%--<tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="web_newsList.aspx?classid=3" target="I2">产品管理</a> <a href="web_newsAdd.aspx?classid=3" target="I2">添加</a></span></td>
								</tr>
							</table></td>
						  </tr>--%>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="web_lanmu.aspx" target="I2">栏目管理</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="web_newsList.aspx" target="I2">栏目内容</a> <a href="web_newsAdd.aspx" target="I2">添加</a></span></td>
								</tr>
							</table></td>
						  </tr>
						  <tr>
							<td width="16%" height="25"><div align="center"><img src="../images/manage/left.gif" width="10" height="10" /></div></td>
							<td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="web_message.aspx" target="I2">留言管理</a></span></td>
								</tr>
							</table></td>
						  </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td height="5"><img src="../images/manage/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table>
              </div>
            </td>
          </tr>
        </table>
        
        
        
        </td>
      </tr>
   </table>
   </td>
   </tr>
  

  <tr>
    <td height="18" background="../images/manage/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="18" valign="bottom"><div align="center" class="STYLE3">版本：<a>2013v1</a></div></td>
      </tr>
    </table></td>
  </tr>
</table>
<script>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
//imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
//imgmenu.background="../images/manage/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
//imgmenu.background="../images/manage/main_48.gif";
}
}


function showsubmenu1(sid)
{
    var k=9;
	for(var i=1;i<=k;i++){
		eval("submenu" + i + ".style.display=\"none\";");
	}
	eval("submenu" + sid + ".style.display=\"\";");
}

function showsubmenu1_t1(sid) {
    whichEl = eval("submenu" + sid);
    if (whichEl.style.display == "none") {
        eval("submenu" + sid + ".style.display=\"\";");
    }
    else {
        eval("submenu" + sid + ".style.display=\"none\";");
    }
}

</script>
</body>
</html>