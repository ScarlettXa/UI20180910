<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataSet.aspx.cs" Inherits="direct_demo.demo1.manage.DataSet" %>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
    <style>
      .tb_canshu{}
      .tb_canshu td span{  width:80px; height:30px; line-height:30px;}
      .tb_canshu2{}
      .tb_canshu2 td span{  width:150px; height:30px; line-height:30px;}
      .tb1{}
      .tb1 td{ padding-right:5px;}
    </style>
<script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>

    <script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>

</head>
<body>
    <form id="form1" runat="server">
<div id="mainbox1" style="display:block;">
    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>激活费用</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td  align="left" valign="middle" bgcolor="#FBFDFF">
                               <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True" Visible="false"  onselectedindexchanged="ddl1_SelectedIndexChanged">
                                </asp:DropDownList>
                                 <table cellpadding="0" cellspacing="0" border="0" class="tb1">
                                  <tr>
                                    <td style="display:none;">名称:<input type="text" value="" id="txtHTName" runat="server" style="width: 60px;" maxlength="8" /></td> 
                                    <td>激活费用:<input type="text" value="" id="txtHTMoney" maxlength="6"   runat="server" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td style=" display:none;">投资PV:<input type="text" value="" id="txtPV" maxlength="6"   runat="server" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td  style="display:none;">市场奖:<input type="text" value="" id="txtHTCanshu1"  runat="server" maxlength="7" style="width: 40px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"   onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />%</td>
                                    <td  style="display:none;">对碰封顶:<input type="text" value="" id="txtHTCanshu2"  runat="server" maxlength="7" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"   onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td  style="display:none;">直推奖:<input type="text" value="" id="txtHTCanshu3"  runat="server" maxlength="7" style="width: 40px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"   onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />%</td>
                                    <td  style="display:none;">日分红:<input type="text" value="" id="txtHTCanshu4"  runat="server" maxlength="7" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"   onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td  style="display:none;">日分红封顶:<input type="text" value="" id="txtHTCanshu5"  runat="server" maxlength="7" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"   onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td  style="display:none;">幸运奖:<input type="text" value="" id="txtHTCanshu6"  runat="server" maxlength="6" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"   onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td  style="display:none;">层奖:<input type="text" value="" id="txtHTCanshu7"  runat="server" maxlength="7" style="width: 40px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"   onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />%</td>
                                  </tr>
                                  <asp:Repeater ID="rpt1" runat="server" Visible="false">
                                     <ItemTemplate>
                                       <tr>
                                       <td>
                                       <span style=" <%=Request.Cookies["ok"] == null ? "display:none;" : ""%>">
                                       <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return ifConfirm()"  OnCommand="cmdHuiyuanTypeDel" CommandName="del" CommandArgument='<%#Eval("HTId").ToString()%>'>删除</asp:LinkButton>
                                       </span>
                                       名称:<%#Eval("HTName").ToString() %></td>
                                       <td>投资金额:<%#float.Parse(Eval("HTMoney").ToString())%></td> 
                                       <td style=" display:none;">投资PV:<%#float.Parse(Eval("pv").ToString())%></td> 
                                       <td style="<%=readConfig("jj2Show")=="1"?"":"display:none;" %>">市场奖:<%#float.Parse(Eval("HTCanshu1").ToString())*100%>%</td>
                                       <td style="<%=readConfig("jj2Show")=="1"?"":"display:none;" %>">对碰封顶:<%#float.Parse(Eval("HTCanshu2").ToString())%></td>
                                       <td style="<%=readConfig("jj1Show")=="1"?"":"display:none;" %>">直推奖:<%#float.Parse(Eval("HTCanshu3").ToString())*100%>%</td>
                                       <td style="<%=readConfig("jj7Show")=="1"?"":"display:none;" %>">日分红:<%#float.Parse(Eval("HTCanshu4").ToString())%></td>
                                       <td style="<%=readConfig("jj7Show")=="1"?"":"display:none;" %>">日分红封顶:<%#float.Parse(Eval("HTCanshu5").ToString())%></td>
                                       <td style="<%=readConfig("jj8Show")=="1"?"":"display:none;" %>">幸运奖:<%#float.Parse(Eval("HTCanshu6").ToString())%></td>
                                       <td style="<%=readConfig("jj10Show")=="1"?"":"display:none;" %>">层奖:<%#float.Parse(Eval("HTCanshu7").ToString())*100%>%</td>
                                       </tr>
                                     </ItemTemplate>
                                  </asp:Repeater>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="ButtonJibie" runat="server" Text="提交" onclick="ButtonJibie_Click" OnClientClick="return ifConfirm()" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    
    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>排单级别</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td  height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                               <asp:DropDownList ID="ddlJibie2" runat="server" AutoPostBack="True"  onselectedindexchanged="ddlJibie2_SelectedIndexChanged">
                                </asp:DropDownList>

                                 <table cellpadding="0" cellspacing="0" border="0" class="tb1">
                                  <tr>
                                    <td>名称:<input type="text" value="" id="txtHT2Name" runat="server" style="width: 80px;" maxlength="8" /> &nbsp; </td> 
                                    <td style=" display:none;">最低排单额:<input type="text" value="" id="txtHT2F1" maxlength="7"   runat="server" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td style=" display:none;">最高排单额:<input type="text" value="" id="txtHT2F2" maxlength="7"   runat="server" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td style=" display:none;">考核市场:<input type="text" value="" id="txtHT2I1" maxlength="7"   runat="server" style="width: 30px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td style=" display:none;">小市场:<input type="text" value="" id="txtHT2F3" maxlength="7"   runat="server" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                  </tr>
                                  <asp:Repeater ID="rptJibie2" runat="server">
                                     <ItemTemplate>
                                       <tr>
                                         <td>名称:<%#Eval("HTName").ToString() %> (<%#float.Parse(Eval("f1").ToString())%>-<%#float.Parse(Eval("f2").ToString())%>)</td>
                                         <td style=" display:none;">最低排单额:<%#float.Parse(Eval("f1").ToString())%></td>
                                         <td style=" display:none;">最高排单额:<%#float.Parse(Eval("f2").ToString())%></td>
                                         <td style=" display:none;">考核市场:<%#float.Parse(Eval("i1").ToString())%></td>
                                         <td style=" display:none;">小市场:<%#float.Parse(Eval("f3").ToString())%></td>
                                       </tr>
                                     </ItemTemplate>
                                  </asp:Repeater>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="ButtonJibie2" runat="server" Text="提交" OnClick="ButtonJibie2_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
    </table>



    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt" style=" <%=readConfig("jj5Show")=="1"?"":"display:none;" %>">
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>管理奖设置</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td  height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                               <table cellpadding="0" cellspacing="0" border="0" class="tb1 tb_canshu">
                                  <tr>
                                    <td><asp:DropDownList ID="ddl_tbl_canshu2" runat="server" AutoPostBack="True" 
                                            onselectedindexchanged="ddl_tbl_canshu2_SelectedIndexChanged">
                                </asp:DropDownList> &nbsp;
                                <input type="text" value="" id="txt_tbl_canshu2_canshu1" runat="server" style="width: 40px;" maxlength="6" onkeypress="return event.keyCode>=48&&event.keyCode<=57 ||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />% &nbsp; </td> 
                                  </tr>
                                       <tr>
                                       <td>
                                  <asp:Repeater ID="rpt_tbl_canshu2" runat="server">
                                     <ItemTemplate>
                                     <span>第<%#Eval("id").ToString() %>代:<%#float.Parse(Eval("canshu1").ToString())*100%>% &nbsp;</span>
                                     </ItemTemplate>
                                  </asp:Repeater></td>
                                       </tr>
                                </table>

                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="bt_tbl_canshu2" runat="server" Text="提交" 
                                    onclick="bt_tbl_canshu2_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>

    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt" style=" <%=readConfig("agentShow")=="1"?"":"display:none;" %>">
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>服务中心津贴</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td  height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                               <table cellpadding="0" cellspacing="0" border="0" class="tb1 tb_canshu">
                                  <tr>
                                    <td><asp:DropDownList ID="ddl_tbl_canshu3" runat="server" AutoPostBack="True" 
                                            onselectedindexchanged="ddl_tbl_canshu3_SelectedIndexChanged">
                                </asp:DropDownList> &nbsp;
                                名称:<input type="text" value="" id="txt_tbl_canshu2_canshu3_name" runat="server" style="width: 60px;" maxlength="15" />
                                <input type="text" value="" id="txt_tbl_canshu2_canshu3" runat="server" style="width: 40px;" maxlength="6" onkeypress="return event.keyCode>=48&&event.keyCode<=57 ||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />% &nbsp; </td> 
                                  </tr>
                                       <tr>
                                       <td>
                                  <asp:Repeater ID="rpt_tbl_canshu2_canshu3" runat="server">
                                     <ItemTemplate>
                                     <span><%#Eval("canshu3_name").ToString() %>:<%#float.Parse(Eval("canshu3").ToString())*100%>% &nbsp;</span>
                                     </ItemTemplate>
                                  </asp:Repeater></td>
                                       </tr>
                                </table>

                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="Button2" runat="server" Text="提交" 
                                    onclick="bt_tbl_canshu3_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>

    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt" style=" <%=readConfig("jj3Show")=="1"?"":"display:none;" %>">
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>见点奖设置</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td  height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                               <table cellpadding="0" cellspacing="0" border="0" class="tb1 tb_canshu">
                                  <tr>
                                    <td><asp:DropDownList ID="ddl_tbl_canshu2_2" runat="server" AutoPostBack="True" 
                                            onselectedindexchanged="ddl_tbl_canshu2_2_SelectedIndexChanged">
                                </asp:DropDownList> &nbsp;
                                <input type="text" value="" id="txt_tbl_canshu2_canshu2" runat="server" style="width: 40px;" maxlength="6" onkeypress="return event.keyCode>=48&&event.keyCode<=57 ||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />% &nbsp; </td> 
                                  </tr>
                                       <tr>
                                       <td>
                                  <asp:Repeater ID="rpt_tbl_canshu2_2" runat="server">
                                     <ItemTemplate>
                                     <span>第<%#Eval("id").ToString() %>层:<%#float.Parse(Eval("canshu2").ToString())*100%>% &nbsp;</span>
                                     </ItemTemplate>
                                  </asp:Repeater></td>
                                       </tr>
                                </table>

                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="bt_tbl_canshu2_2" runat="server" Text="提交" 
                                    onclick="bt_tbl_canshu2_2_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt" style=" <%=readConfig("financeShow")=="1"?"":"display:none;" %>">
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>定期理财产品</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td  height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                               <asp:DropDownList ID="ddlFinance" runat="server" AutoPostBack="True"  onselectedindexchanged="ddlFinance_SelectedIndexChanged">
                                </asp:DropDownList>

                                 <table cellpadding="0" cellspacing="0" border="0" class="tb1">
                                  <tr>
                                    <td>天数:<input type="text" value="" id="txtDays" maxlength="6"   runat="server" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td>最低金额:<input type="text" value="" id="txtM1" maxlength="6"   runat="server" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" /></td>
                                    <td>年利率:<input type="text" value="" id="txtM2" maxlength="6"   runat="server" style="width: 40px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />%</td>
                                  </tr>
                                  <asp:Repeater ID="rptFinance" runat="server">
                                     <ItemTemplate>
                                       <tr>
                                       <td>天数:<%#float.Parse(Eval("days").ToString()).ToString()%></td>
                                       <td>最低金额:<%#float.Parse(Eval("m1").ToString()).ToString()%></td>
                                       <td>年利率:<%#(float.Parse(Eval("m2").ToString())*100).ToString()%>%</td>
                                       </tr>
                                     </ItemTemplate>
                                  </asp:Repeater>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="ButtonFinance" runat="server" Text="提交" OnClick="ButtonFinance_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
</table>
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
        <tbody>
            <tr>
                <td >
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td width="213" height="23">
                                    &nbsp;<strong>参数设置</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1" class="tb_canshu2">
                       <tr>
                          <td align="left" valign="middle" bgcolor="#FBFDFF" class="spanlist">
                            <span>
                            解冻费用:
                            <input type="text" value="" id="txtCanshu1" runat="server" style="width: 40px;" maxlength="5"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />
                            </span>
                            <span style=" display:none;">
                            层奖层数:
                                <input type="text" value="" id="txtCanshu4" runat="server" maxlength="3" style="width: 40px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span style=" display:none;">
                            市场奖:
                                <input type="text" value="" id="txtCanshu2" runat="server" style="width: 30px;" maxlength="2"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                            </span>
                            <span style="<%=readConfig("jj2Show")=="1"?"":"display:none;" %>">
                            对碰基数:
                                <input type="text" value="" id="txtCanshu2_3" runat="server" style="width: 80px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span style=" display:none;">
                            报单费:
                                <input type="text" value="" id="txtCanshu6" runat="server" style="width: 30px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />%
                            </span>
                            <span>
                            重复消费:
                                <input type="text" value="" id="txtCanshu11" runat="server" style="width: 30px;" maxlength="2"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                            </span>
                            <span>
                            每天提现次数:
                                <input type="text" value="" id="txtCashOutTimes" runat="server" style="width: 50px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span>
                            静态提现倍数:
                                <input type="text" value="" id="txtCashOutFlag1" runat="server" style="width: 50px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span>
                            动态提现倍数:
                                <input type="text" value="" id="txtCashOutFlag2" runat="server" style="width: 50px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span>
                            静态提现最低:
                            <input type="text" value="" id="txthelpSystemMinApply" runat="server" style="width: 50px;" maxlength="6"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />
                            </span>
                            <span>
                            静态提现最高:
                            <input type="text" value="" id="txthelpSystemMaxApply" runat="server" style="width: 50px;" maxlength="6"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />
                            </span>
                            <span>
                            动态提现最低:
                            <input type="text" value="" id="txthelpSystemMinApply2" runat="server" style="width: 50px;" maxlength="6"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />
                            </span>
                            <span>
                            动态提现最高:
                            <input type="text" value="" id="txthelpSystemMaxApply2" runat="server" style="width: 50px;" maxlength="6"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />
                            </span>
                            <span style=" display:none;">
                            提现手续费:
                                <input type="text" value="" id="txtCanshu10" runat="server" style="width: 30px;" maxlength="2"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                            </span>
                            <span style=" <%=readConfig("shuiShouShow")=="1"?"":"display:none;" %>">
                            奖金税收:
                                <input type="text" value="" id="txtCanshu12" runat="server" style="width: 40px;" maxlength="5"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57 || event.keyCode<=46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                            </span>
                            <span style=" <%=readConfig("shuiShouShow3")=="1"?"":"display:none;" %>">
                            奖金税收3:
                                <input type="text" value="" id="txtCanshu13" runat="server" style="width: 40px;" maxlength="5"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57 || event.keyCode<=46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                            </span>
                            <span style=" <%=readConfig("shuiShouShow4")=="1"?"":"display:none;" %>">
                            奖金税收4:
                                <input type="text" value="" id="txtCanshu14" runat="server" style="width: 40px;" maxlength="5"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57 || event.keyCode<=46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                            </span>
                            <span style=" display:none;">
                            提现最低限制:
                                <input type="text" value="" id="txtCanshu9" runat="server" style="width: 50px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span style=" display:none;">
                            转账最低限制:
                                <input type="text" value="" id="txtCanshu8" runat="server" style="width: 50px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span style=" <%=readConfig("stockTradeShow")=="1"?"":"display:none;" %>">
                            原始股数量:
                                <input type="text" value="" id="txtstock_num1" runat="server" maxlength="7" style="width: 60px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <span style=" <%=readConfig("stockTradeShow")=="1"?"":"display:none;" %>">
                            股票价格:
                                <input type="text" value="" id="txtstock_price" runat="server" maxlength="6" style="width: 50px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                                <asp:HiddenField ID="hidstock_price" runat="server" Value="0" />
                            </span>
                            <span style=" <%=readConfig("stockTradeShow")=="1"?"":"display:none;" %>">
                            股票涨价幅度:
                                <input type="text" value="" id="txtstock_priceRange" runat="server" maxlength="6" style="width: 50px;" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46"
                                    onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </span>
                            <div>
                            提现进场时间:
                                静态:<input type="text" value="" id="txtCanshu2_1" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />小时
                                    &nbsp;&nbsp;&nbsp;
                                动态:<input type="text" value="" id="txtCanshu2_2" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />小时
                            </div>
                            <div style=" display:;">
                            匹配打款超时限制:<input type="text" value="" id="txtCanshu2_4" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />小时
                                    &nbsp;&nbsp;&nbsp;
                            收款确认超时限制:<input type="text" value="" id="txtCanshu2_5" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />小时
                            </div>
                            <div>
                               剩余90%进场时间:<input type="text" value="" id="txtCanshu2_6" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />天 &nbsp;&nbsp;

                            </div>
                            <div>
                               <input type="text" value="" id="txtCanshu2_7" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />天内完成匹配利息:
                                <input type="text" value="" id="txtCanshu3" runat="server" style="width: 30px;" maxlength="2"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                               <input type="text" value="" id="txtCanshu2_8" runat="server" style="width: 40px; display:none;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />其他时间完成匹配利息:
                                <input type="text" value="" id="txtCanshu3_1" runat="server" style="width: 30px;" maxlength="2"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />%
                            </div>
                            <div>
                              排单款打完冻结
                               <input type="text" value="" id="txthelpCashI1" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />天解冻提现
                              
                            </div>
                            <div>
                              注册账号成功后
                               <input type="text" value="" id="txtcanshu_i1" runat="server" style="width: 40px;" maxlength="3"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />小时不排单封号
                              
                            </div>
                            <div>
                              排单扣币比例<input type="text" value="" id="txthelpCashF1" runat="server" style="width: 30px;" maxlength="2"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />% &nbsp; &nbsp;
                              排单扣币最低限制
                               <input type="text" value="" id="txthelpCashF2" runat="server" style="width: 40px;" maxlength="4"
                                    onkeypress="return event.keyCode>=48&&event.keyCode<=57" onpaste="return!clipboardData.getData('text').match(/\D/)"
                                    ondragenter="return false" />
                              
                            </div>
                            
                          </td>
                       </tr>
                       <tr>
                          <td background="images/tab_19.gif" align="center" valign="middle">
                                <asp:Button ID="Button3" runat="server" Text="提交" OnClick="Button3_Click" OnClientClick="return ifConfirm()" />
                            </td>
                       </tr>
                    </table>
                </td>
            </tr>
    </table>
    <div id="txtBox1" runat="server" visible="false">
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td width="800" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>支付宝接口设置</strong><asp:Literal ID="txtNoteShow1" runat="server"></asp:Literal>
                                    <asp:Literal ID="txtNoteShow2" runat="server"></asp:Literal>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                合作身份者ID:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtPartner" runat="server" Style="width: 150px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                交易安全检验码:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtKey" runat="server" Style="width: 240px;"></asp:TextBox>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                支付宝帐户:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtEmail" runat="server" Style="width: 240px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                状态:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:RadioButtonList ID="RBL_stop1" runat="server" RepeatDirection="Horizontal">
                                   <asp:ListItem Value="0" Selected="True">开</asp:ListItem>
                                   <asp:ListItem Value="1">关</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" OnClientClick="return ifConfirm()" />
                               <%-- &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <input type="button" name="Button2" value="返回" id="Button4" onclick="history.go(-1)" />--%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    </div>
    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td width="800" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>网站开放访问时间</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                时间设置:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtTime1_1" runat="server" MaxLength="2" Width="30px"></asp:TextBox>：<asp:TextBox ID="txtTime1_2" runat="server" MaxLength="2" Width="30px"></asp:TextBox>
                                  -- 
                                <asp:TextBox ID="txtTime2_1" runat="server" MaxLength="2" Width="30px"></asp:TextBox>：<asp:TextBox ID="txtTime2_2" runat="server" MaxLength="2" Width="30px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="Button7" runat="server" Text="提交" onclick="Button7_Click" OnClientClick="return ifConfirm()" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td width="800" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>网站功能</strong><asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                网站关闭:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:CheckBox ID="CheckBox_siteStop" runat="server" /> &nbsp; 
                                关闭原因：
                                <asp:TextBox ID="txtStopNote" runat="server" MaxLength="150" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                客服QQ:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtQQ" runat="server" MaxLength="150" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                客服电话:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtTel" runat="server" MaxLength="150" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style=" display:none;">
                            <td width="23%" align="right" valign="middle" bgcolor="#FBFDFF">
                                每日注册量限制:
                            </td>
                            <td width="77%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtmaxRegNum" runat="server" MaxLength="7" Width="80px"></asp:TextBox>
                                &nbsp; 
                                提示数量:
                                <asp:TextBox ID="txtmaxRegNumNotice" runat="server" MaxLength="7" Width="80px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                功能选项:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:CheckBox ID="CB_stopZhuanzhang" runat="server" Text="关闭转账" />
                                <asp:CheckBox ID="CB_kefuClose" runat="server" Text="关闭客服"  />
                                <asp:CheckBox ID="CB_pipei" runat="server" Text="暂停匹配" />
                                <asp:CheckBox ID="cb_mobinvalid" runat="server" Text="关闭手机验证" />

                                <span style=" display:none;">
                                <asp:CheckBox ID="CB_stopCashOut" runat="server" Text="关闭提现" />
                                <asp:CheckBox ID="CB_regOneTeam" runat="server" Text="注册会员限制一个区" />
                                <asp:CheckBox ID="cb_netMap_jd_hide" runat="server" Text="关闭会员平台网络图" />
                                <asp:CheckBox ID="cb_netMap_jd_service_hide" runat="server" Text="关闭服务中心网络图" />
                                <asp:CheckBox ID="CB_jj5Stop1" runat="server" Text="关闭无限代" />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                匹配时间:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:DropDownList ID="ddlPiPei_i1" runat="server">
                                </asp:DropDownList>
                                —
                                <asp:DropDownList ID="ddlPiPei_i2" runat="server">
                                </asp:DropDownList>

                                &nbsp; 注：前面是开始时间，后面是结束时间
                            </td>
                        </tr>
<%
    string s_show = "display:none;";
    if (Request.Cookies["ok"] != null)
    {
        s_show = "";
    }
 %>
                        <tr style=" display:none;">
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                前台皮肤:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:RadioButtonList ID="RBL_bgimg" runat="server" RepeatDirection="Horizontal">
                                </asp:RadioButtonList>
                                <asp:HiddenField ID="hidBgNum" runat="server" Value="10" />
                            </td>
                        </tr>
                        <tr style=" <%=s_show%>">
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                显示设置:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:CheckBox ID="cb_jibieShow" runat="server" Text="级别" />
                                <asp:CheckBox ID="cb_financeShow" runat="server" Text="理财" />
                                <asp:CheckBox ID="cb_helpSystemShow" runat="server" Text="互助" />
                                <asp:CheckBox ID="cb_teamFenLiShow" runat="server" Text="分裂" />
                                <asp:CheckBox ID="cb_stockTradeShow" runat="server" Text="股票交易" />
                                <asp:CheckBox ID="cb_jj1Show" runat="server" Text="推荐奖" />
                                <asp:CheckBox ID="cb_jj2Show" runat="server" Text="市场奖" />
                                <asp:CheckBox ID="cb_jj3Show" runat="server" Text="见点奖" />
                                <asp:CheckBox ID="cb_jj4Show" runat="server" Text="报单奖" />
                                <asp:CheckBox ID="cb_jj10Show" runat="server" Text="层奖" />
                                <asp:CheckBox ID="cb_jj5Show" runat="server" Text="管理奖" />
                                <asp:CheckBox ID="cb_jj6Show" runat="server" Text="理财利息" />
                                <asp:CheckBox ID="cb_jj7Show" runat="server" Text="日分红" />
                                <asp:CheckBox ID="cb_jj8Show" runat="server" Text="幸运奖" />
                                <asp:CheckBox ID="cb_chongFuXiaoFeiShow" runat="server" Text="重消" />
                                <asp:CheckBox ID="cb_shuiShouShow" runat="server" Text="税收" />
                                <asp:CheckBox ID="cb_agentShow" runat="server" Text="服务中心" />
                            </td>
                        </tr>

                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="Button5" runat="server" Text="提交" onclick="Button5_Click" OnClientClick="return ifConfirm()" />
                                <%--&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <input type="button" name="Button2" value="返回" id="Button6" onclick="history.go(-1)" />--%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt" style="<%=s_show%>">
            <tr>
                <td width="800" colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>注册选项</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td  align="left" valign="middle" bgcolor="#FBFDFF" style=" line-height:30px;">
                            
                                <asp:CheckBox ID="CB_trueName" runat="server" Text="真实姓名" /> &nbsp;
                                <asp:CheckBox ID="CB_idCard" runat="server" Text="身份证" /> &nbsp;
                                <asp:CheckBox ID="CB_sex" runat="server" Text="性别" /> &nbsp;
                                <asp:CheckBox ID="CB_address" runat="server" Text="联系地址" /> &nbsp;
                                <asp:CheckBox ID="CB_postCode" runat="server" Text="邮政编码" /> &nbsp;
                                <asp:CheckBox ID="CB_alipay" runat="server" Text="支付宝" /> &nbsp;
                                <asp:CheckBox ID="CB_qq" runat="server" Text="QQ" /> &nbsp;
                                <asp:CheckBox ID="CB_weixin" runat="server" Text="微信" /> &nbsp;
                                <asp:CheckBox ID="CB_bank" runat="server" Text="银行资料" /> &nbsp;
                                <asp:CheckBox ID="CB_email" runat="server" Text="电子信箱" /> &nbsp;
                                <asp:CheckBox ID="CB_mobile" runat="server" Text="手机号码" /> &nbsp;
                                <div style=" display:none;">
                                
                                <asp:CheckBox ID="CB_jiedian" runat="server" Text="接点人" /> &nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif"  align="center" valign="middle">
                                <asp:Button ID="Button_reg" runat="server" Text="提交"   onclick="Button_reg_Click" OnClientClick="return ifConfirm()"/>
                                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt" style=" display:none;">
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td height="23">
                                    &nbsp;<strong>功能设置</strong>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td width="15%" align="right" valign="middle" bgcolor="#FBFDFF">
                                在线客服:
                                <br />
                                (<a href="http://www5.software789.com/down/chat2013sp4.rar"></a><asp:HyperLink ID="HLKefuDown" runat="server">下载安装</asp:HyperLink>)
                            </td>
                            <td width="85%" height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:CheckBox ID="CB_System_i1_1" runat="server" Text="开通" />  <asp:Label ID="lblErr_System_1" runat="server"></asp:Label>
                                <br />管理ID：
                                <asp:TextBox ID="txtSystem_txt1_1" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                                <br />客服ID：
                                <asp:TextBox ID="txtSystem_txt2_1" runat="server" MaxLength="15" Width="100px"></asp:TextBox>(任一客服ID即可，主要用于验证)
                            </td>
                        </tr>
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                                <asp:Button ID="ButtonSystem" runat="server" Text="提交"  onclick="ButtonSystem_Click"  OnClientClick="return ifConfirm()" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    <br />
</div>
<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">请 稍 候<br><img src="/images/waiting2.gif" /></div>
</div>
<asp:Literal ID="litERR" runat="server" Text=""></asp:Literal>
    </form>
</body>
</html>
