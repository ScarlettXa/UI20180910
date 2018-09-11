﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductClass.aspx.cs" Inherits="direct_demo.demo1.manage.ProductClass" %>


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

<form name="form1" id="form1" runat="server">
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[产品管理]-[分类管理]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="106">&nbsp;</td>
                <td width="106"> </td>
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
        <td>
                   <table width="100%" cellpadding="0" cellspacing="0" border="0" style=" background-color:#fff;">
                     <tr>
                       <td width="200" style=" line-height:30px;">
                           <asp:DropDownList ID="ddl1" runat="server" 
                               onselectedindexchanged="ddl1_SelectedIndexChanged" AutoPostBack="true">
                           </asp:DropDownList>
                            <asp:DropDownList ID="ddl2" runat="server">
                           </asp:DropDownList>
                           </td>
                       <td width="50">名称：</td>
                       <td width="150"><input name="real_name" type="text" class="mumber-input" style="width:100px;" id="txtCName" value="" runat="server" /></td>
                       <td width="50">排序：</td>
                       <td width="150"><input name="real_name" type="text" class="mumber-input" style="width:40px;" id="txtCOrder"  runat="server" value="0"  onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"  /></td>
                       <td width="250">
                       <asp:Button ID="ButtonAdd" runat="server" Text=" 添 加 " onclick="ButtonAdd_Click" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'" onmouseout="this.className='button_onMouseOut'"/>
                       <asp:Button ID="ButtonModi" runat="server" Visible="false" Text=" 修 改 " onclick="ButtonModi_Click" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'" onmouseout="this.className='button_onMouseOut'"/>
<%--                       <asp:ImageButton ID="ImageButton1" runat="server" 
                               ImageUrl="~/images/ui0001/btn.gif" onclick="ImageButton1_Click" />
                           <asp:ImageButton ID="ImageButton2" runat="server" 
                               ImageUrl="~/images/ui0001/btn.gif" onclick="ImageButton2_Click" Visible="false" />--%>
                               <input id="txtid" runat="server" type="hidden" />
                       </td>
                       <td>&nbsp;&nbsp;</td>
                       <td>&nbsp; </td>
                     </tr>
                   </table>
        
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()" class="list1_tb">
          <tr>
            <th>序号</th>
            <th>名称</th>
            <th>排序</th>
			<th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Container.ItemIndex+1 %></td>
            <td title="标识：<%#Eval("CId").ToString() %>"> <%#Eval("CName").ToString() %> <%#GetSub(Int32.Parse(Eval("CId").ToString()))%> </td>
			<td><%#Eval("COrder").ToString() %>  </td>
            <td>
              <div style="display:<%#ifshow1() %>">
                <asp:LinkButton ID="LinkButton1" runat="server" oncommand="LinkButton1_Command" CommandName="modi" CommandArgument='<%#Eval("CId").ToString() %>'>修改</asp:LinkButton> 
                <asp:LinkButton ID="LinkButton2" runat="server" oncommand="LinkButton1_Command" CommandName="del" CommandArgument='<%#Eval("CId").ToString() %>'  OnClientClick="javascript:if(!confirm('\n特别提示！？\n\n请慎重进行该操作！\确认后将无法进行取消。'))  return  false;">删除</asp:LinkButton>
              </div>
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
        <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                   <tr>
                                     <td>
                                         <asp:DropDownList ID="ddlClass1" runat="server" AutoPostBack="True" 
                                             onselectedindexchanged="ddlClass1_SelectedIndexChanged">
                                         </asp:DropDownList>
                                          <asp:DropDownList ID="ddlClass2" runat="server" AutoPostBack="True" 
                                             onselectedindexchanged="ddlClass2_SelectedIndexChanged">
                                         </asp:DropDownList>
                                     </td>
                                     <td align="right">
                                         <asp:Literal ID="txtPage" runat="server"></asp:Literal>
                                     </td>
                                   </tr>
                                </table>
        </td>
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
</form>
</body>
</html>
