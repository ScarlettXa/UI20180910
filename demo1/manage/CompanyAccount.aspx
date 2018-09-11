<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyAccount.aspx.cs" Inherits="direct_demo.demo1.manage.CompanyAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<div id="mainbox1" style="display:block;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="/demo1/images/manage/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="/demo1/images/manage/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="/demo1/images/manage/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">银行账号</span></td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="14">&nbsp;</td>
                <td width="106"> </td>
                <td width="83"></td>
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
        <td width="16"><img src="/demo1/images/manage/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="/demo1/images/manage/tab_12.gif">&nbsp;</td>
        <td>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()" class="list1_tb">
          <tr>
            <th>序号</th>
            <th>开户银行</th>
            <th>户主</th>
            <th>卡号</th>
            <th>地址</th>
            <th>操作</th> 
          </tr>
<asp:Repeater ID="rptlist" runat="server" OnItemDataBound="Repeater1_ItemDataBound" OnItemCommand="Repeater1_ItemCommand">
    <ItemTemplate>
      <asp:Panel ID="plItem" runat="server">
          <tr>
            <td height="20"><%#Container.ItemIndex+1 %></td>
            <td><%# DataBinder.Eval(Container.DataItem, "BCName")%></td>
			<td><%# DataBinder.Eval(Container.DataItem, "BCUserName")%></td>
            <td><%# DataBinder.Eval(Container.DataItem, "BCNumber")%></td>
            <td><%# DataBinder.Eval(Container.DataItem, "BCAddress")%></td>
            <td>
             <asp:LinkButton runat="server" ID="lbtEdit" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "BCId")%>' CommandName="Edit" Text="编辑" OnClientClick="return ifConfirm()"></asp:LinkButton>&nbsp;&nbsp;&nbsp;
             <asp:LinkButton runat="server" ID="lbtDelete" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "BCId")%>' CommandName="Delete" Text="删除" OnClientClick="return ifConfirm()"></asp:LinkButton>
            </td>
          </tr>
    </asp:Panel>
    <asp:Panel ID="plEdit" runat="server">
          <tr>
            <td height="20"><%#Container.ItemIndex+1 %></td>
            <td>
            <asp:TextBox ID="txtA" Text='<%# DataBinder.Eval(Container.DataItem,"BCName") %>'  runat="server" Style="width: 200px;" MaxLength="50"></asp:TextBox>
            </td>
			<td>
			   <asp:TextBox ID="txtB" Text='<%# DataBinder.Eval(Container.DataItem,"BCUserName") %>'  runat="server" maxlength="15"></asp:TextBox>
			</td>
            <td>
               <asp:TextBox ID="txtC" Text='<%# DataBinder.Eval(Container.DataItem,"BCNumber") %>' runat="server" Style="width: 200px;" MaxLength="50"></asp:TextBox>
            </td>
            <td><asp:TextBox ID="txtD" Text='<%# DataBinder.Eval(Container.DataItem,"BCAddress") %>'  runat="server" Style="width: 250px;" MaxLength="50"></asp:TextBox></td>
            <td>
            <asp:LinkButton runat="server" ID="lbtUpdate" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "BCId")%>'  CommandName="Update" Text="更新" OnClientClick="return ifConfirm()"></asp:LinkButton>&nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="lbtCancel" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "BCId")%>'  CommandName="Cancel" Text="取消"></asp:LinkButton>
            </td>
          </tr>
    </asp:Panel>
    </ItemTemplate>
</asp:Repeater>
              </table></td>
        <td width="8" background="/demo1/images/manage/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="/demo1/images/manage/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="/demo1/images/manage/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              &nbsp;
            </td>
          </tr>
        </table></td>
        <td width="16"><img src="/demo1/images/manage/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>

<table cellpadding="3" cellspacing="0" style="width: 100%; margin-top: 50px;" border="1">
                    <tr>
                        <td colspan="5">
                            <asp:Label ID="wrongshow" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr class="GridViewHeaderStyle">
                        <td align="center">
                            汇款银行
                        </td>
                        <td align="center" width="100">
                            汇款帐户名
                        </td>
                        <td align="center" width="250">
                            汇款帐号
                        </td>
                        <td align="center" width="280">
                            汇款地址
                        </td>
                        <td align="center" width="80">
                            操作
                        </td>
                    </tr>
                    <tr align="center">
                        <td>
                            <asp:TextBox ID="txtBCName" runat="server" Style="width: 200px;" MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtBCUserName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtBCNumber" runat="server" Style="width: 200px;" MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtBCAddress" runat="server" Style="width: 250px;" MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" OnClientClick="return ifConfirm()" />
                        </td>
                    </tr>
                </table>
</div>

<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">请 稍 候<br><img src="/images/waiting2.gif" /></div>
</div>
 <asp:Literal ID="litErr" runat="server"></asp:Literal>
 </form>
</body>
</html>
