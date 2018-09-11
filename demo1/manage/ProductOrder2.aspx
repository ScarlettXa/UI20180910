<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductOrder2.aspx.cs" Inherits="direct_demo.demo1.manage.ProductOrder2" %>
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
<script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/js/jquery.PrintArea.js" type="text/javascript"></script>
</head>

<body>

<form name="form1" id="form1" runat="server">
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
	  <TD align="right" valign="middle" bgColor="#FBFDFF" width="100">  <asp:DropDownList ID="schType" runat="server">
                <asp:ListItem Value="bianhao">会员编号</asp:ListItem>
                <asp:ListItem Value="ordernumber">订单号</asp:ListItem>
                </asp:DropDownList>
        </TD>
	  <TD height="38" align="left" valign="middle" bgColor="#FBFDFF" width="150"> <asp:TextBox ID="schkey" runat="server" style="width: 150px;"></asp:TextBox> </TD>
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
<div id="mainbox1" style="display:block;">


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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[服务中心]-[已处理订单]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="106">&nbsp;</td>
                <td width="106"> 
                <%--<div id="print_button" style=" cursor:pointer;">打印</div>--%>
                <%--<input type="button" value=" 打 印 " id="print_button" />
                <input type="button" id="out_button" onclick="javascript:getXlsFromTbl('tableExcel',null);" value="导出">--%>
                </td>
                <td width="29"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1">&nbsp;</td>
                    <td class="STYLE1">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
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
            <th>订单号</th>
            <th>会员编号</th>
            <%--<th>产品名称</th>
            <th>产品价格</th>
            <th>购买数量</th>--%>
            <th>消费金额</th>
            <th>
                收货人
            </th>
            <th>
                电话
            </th>
            <th>
                地址
            </th>
            <th>订单时间</th>
            <th>发货时间</th>
            <th>物流公司</th>
            <th>物流单号</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Eval("POId").ToString() %></td>
            <td height="20"><a href="ordershow.aspx?ordernumber=<%#Eval("rnd1").ToString() %>"><%#Eval("rnd1").ToString() %></a></td>
            <td><%#Eval("huiyuan_bianhao").ToString() %></td>
            <%--<td><%#Eval("pro_name").ToString()%></td>
            <td><%#float.Parse(Eval("pro_price").ToString())%></td>
            <td><asp:Label ID="PONum" runat="server" Text='<%#Eval("PONum") %>'></asp:Label></td>--%>
            <td><%#(float.Parse(Eval("rndTotal").ToString())).ToString()%></td>
                                    <td width="60">
                                        <%#Eval("contactor")%>
                                    </td>
                                    <td width="80">
                                        <%#Eval("tel")%>
                                    </td>
                                    <td>
                                        <%#Eval("address")%>
                                    </td>
            <td><%#Eval("POAddTime") %></td>
            <td>
            <%#Eval("POSendState").ToString()=="1"?Eval("POSendDate").ToString():""%>
            </td>
            <td>
               <asp:TextBox ID="txtwuliu_name" runat="server" Width="100px" Text='<%#Eval("wuliu_name").ToString() %>'></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtwuliu_no" runat="server" Width="100px" Text='<%#Eval("wuliu_no").ToString() %>'></asp:TextBox>
            </td>
            <td>
                <%--<asp:Button ID="Button1" runat="server" Text="删除" OnCommand="Operate_Command" CommandName="del" CommandArgument='<%#Container.ItemIndex %>' OnClientClick="return confirm('确认删除么？');" />--%>
                <asp:Button ID="Button1" runat="server" Text="发货" OnCommand="Operate_Command" CommandName="send" CommandArgument='<%#Container.ItemIndex %>' OnClientClick="return confirm('确认此操作吗？');" CssClass='<%#showHide(Eval("POSendState").ToString(),"0")%>' />
                <asp:TextBox ID="hyid" Text='<%#Eval("huiyuan_bianhao") %>' runat="server" Style="display: none;"></asp:TextBox>
                <asp:TextBox ID="proid" Text='<%#Eval("POPId") %>' runat="server" Style="display: none;"></asp:TextBox>
                <asp:TextBox ID="poid" Text='<%#Eval("POId") %>' runat="server" Style="display: none;"></asp:TextBox>
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
<%--<script>
$("input#print_button").click(function(){
 $("div.PrintArea").printArea( {mode: "popup", popClose: false,popHt:500,popWd:800});
});
</script>--%>
</form>
</body>
</html>
