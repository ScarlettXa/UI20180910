<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ordershow.aspx.cs" Inherits="direct_demo.demo1.manage.ordershow" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="/demo1/images/member/datalist.css" type="text/css" />
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
 <form id="form1" runat="server">

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="30" background="/demo1/images/member/tab_05.gif">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="12" height="30">
                            <img src="/demo1/images/member/tab_03.gif" width="12" height="30" />
                        </td>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="46%" valign="middle">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="5%">
                                                    <div align="center">
                                                        <img src="/demo1/images/member/tb.gif" width="16" height="16" /></div>
                                                </td>
                                                <td width="95%" class="STYLE1">
                                                    <span class="STYLE3">你当前的位置</span>：订单查看 &nbsp; 订单号：<%=_rnd1%>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="54%">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="16">
                            <img src="/demo1/images/member/tab_07.gif" width="16" height="30" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="8" background="/demo1/images/member/tab_12.gif">
                            &nbsp;
                        </td>
                        <td>
                          <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()" onmouseout="changeback()"  class="list1_tb">
                            <tr>
                                <th>
                                    商品编号
                                </th>
                                <th>
                                    产品名称
                                </th>
                                <th>
                                   单价
                                </th>
                                <th>
                                    数量
                                </th>
                                <th>
                                   小计
                                </th>
                            </tr>
                        <asp:Repeater ID="rptlist" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td width="100" height="30">
                                        <%#Eval("POPId").ToString() %>
                                    </td>
                                    <td>
                                        <%#Eval("pro_name").ToString()%>
                                    </td>
                                    <td width="100">
                                        <%#(float.Parse(Eval("pro_price").ToString())).ToString()%>
                                    </td>
                                    <td width="80">
                                        <%#Eval("PONum")%>
                                    </td>
                                    <td width="120">
                                        <%#(float.Parse(Eval("totalMoney").ToString())).ToString()%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        </table>
                        
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="ffffff">
    <tr>
      <td align="right">
         总计：<span class="cDRed">￥ <asp:Literal ID="litTotalMoney" runat="server" Text="0"></asp:Literal></span> 元
      </td>
    </tr>
    <tr>
      <td>
<table>
                    <tr>
                        <td align="right">
                            会员编号：
                        </td>
                        <td align="left" class="style1">
                            <asp:Literal ID="litUserName" runat="server" Text=""></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            收货人姓名：
                        </td>
                        <td align="left" class="style1">
                            <asp:Literal ID="litContactor" runat="server" Text=""></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            联系电话：
                        </td>
                        <td align="left" class="style1">
                            <asp:Literal ID="litTel" runat="server" Text=""></asp:Literal>
                        </td>
                    </tr>
                   
                      <tr>
                        <td align="right">
                            收货地址：
                        </td>
                        <td align="left" class="style1">
                            <asp:Literal ID="litAddress" runat="server" Text=""></asp:Literal>
                        </td>
                    </tr>
                </table>
      </td>
    </tr>
</table>
                        </td>
                        <td width="8" background="/demo1/images/member/tab_15.gif">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="35" background="/demo1/images/member/tab_19.gif">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="12" height="35">
                            <img src="/demo1/images/member/tab_18.gif" width="12" height="35" />
                        </td>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td class="STYLE4">
                                        &nbsp;&nbsp;
                                    </td>
                                    <td style="font-size:12px;" align="center">
                                        <input class="button_text" onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"
                                    onmouseout="this.className='button_onMouseOut'" type="button" id="but" value="返回"
                                    name="but" onclick="history.back();">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="16">
                            <img src="/demo1/images/member/tab_20.gif" width="16" height="35" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <asp:Literal ID="litTest" runat="server" Text=""></asp:Literal>
    <asp:HiddenField ID="hidNum1" Value="20" runat="server" />
    </form>
</body>
</html>
