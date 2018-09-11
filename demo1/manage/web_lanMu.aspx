<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_lanMu.aspx.cs" Inherits="direct_demo.demo1.manage.web_lanMu" %>


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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[网站管理]-[栏目管理]</td>
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
                   <table cellpadding="0" cellspacing="0" border="0" style=" background-color:#fff;">
                     <tr>
                       <td style=" line-height:30px;">
                           <asp:DropDownList ID="ddl1" runat="server" 
                               onselectedindexchanged="ddl1_SelectedIndexChanged" AutoPostBack="true">
                           </asp:DropDownList>
                            <asp:DropDownList ID="ddl2" runat="server" OnSelectedIndexChanged="ddl2_SelectedIndexChanged" AutoPostBack="true">
                           </asp:DropDownList>
                           </td>
                       <td>&nbsp;名称：</td>
                       <td><input name="real_name" type="text" class="mumber-input" style="width:100px;" id="txtCName" value="" runat="server" /></td>
                       <td>&nbsp;排序：</td>
                       <td><input name="real_name" type="text" class="mumber-input" style="width:40px;" id="txtCOrder"  runat="server" value="0"  onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46" onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false"  /></td>
                       <td>&nbsp;
                           <asp:DropDownList ID="ddlPageType" runat="server">
                             <asp:ListItem Value="0">类型</asp:ListItem>
                             <asp:ListItem Value="1">单页</asp:ListItem>
                             <asp:ListItem Value="2">文本列表</asp:ListItem>
                             <asp:ListItem Value="3">图文列表</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td>&nbsp;
                           <asp:DropDownList ID="ddlToLink" runat="server" 
                               onselectedindexchanged="ddlToLink_SelectedIndexChanged" AutoPostBack="true">
                             <asp:ListItem Value="">是否跳转</asp:ListItem>
                             <asp:ListItem Value="0">否</asp:ListItem>
                             <asp:ListItem Value="1">是</asp:ListItem>
                           </asp:DropDownList>
                           <asp:TextBox ID="txtToLink" runat="server" Width="200px" MaxLength="150" ToolTip="请输入跳转链接" Visible="false"></asp:TextBox>
                       
                           <asp:DropDownList ID="ddlInvalid" runat="server">
                             <asp:ListItem Value="0">显示</asp:ListItem>
                             <asp:ListItem Value="1">隐藏</asp:ListItem>
                           </asp:DropDownList>
                       </td>
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
            <th>类型</th>
            <th>跳转</th>
            <th>是否显示</th>
			<th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Container.ItemIndex+1 %></td>
            <td title="标识：<%#Eval("NCId").ToString() %>"> <%#Eval("NCName").ToString() %> <%#GetSub(Int32.Parse(Eval("NCId").ToString()))%> </td>
			<td><%#Eval("NCOrder").ToString() %>  </td>
            <td>
               <%#Eval("pageType").ToString()=="1"?"单页":"" %> 
               <%#Eval("pageType").ToString()=="2"?"文本列表":"" %> 
               <%#Eval("pageType").ToString()=="3"?"图文列表":"" %> 
            
             </td>
            <td><%#Eval("toLink").ToString() == "" ? "否" : Eval("toLink").ToString()%>  </td>
            <td><%#Eval("invalid").ToString() == "0" ? "是" : "<span style=\"color:#ff0000\">否</span>"%>  </td>
            <td>
              <div>
                <asp:LinkButton ID="LinkButton1" runat="server" oncommand="LinkButton1_Command" CommandName="modi" CommandArgument='<%#Eval("NCId").ToString() %>'>修改</asp:LinkButton> 
                <asp:LinkButton ID="LinkButton2" runat="server" oncommand="LinkButton1_Command" CommandName="del" CommandArgument='<%#Eval("NCId").ToString() %>'  OnClientClick="javascript:if(!confirm('\n特别提示！？\n\n请慎重进行该操作！\确认后将无法进行取消。'))  return  false;">删除</asp:LinkButton>
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
                                         <asp:DropDownList ID="ddlClass1" runat="server" Visible="false" AutoPostBack="True" 
                                             onselectedindexchanged="ddlClass1_SelectedIndexChanged">
                                         </asp:DropDownList>
                                          <asp:DropDownList ID="ddlClass2" runat="server" Visible="false" AutoPostBack="True" 
                                             onselectedindexchanged="ddlClass2_SelectedIndexChanged">
                                         </asp:DropDownList>
                                     <td align="right">
                                         <asp:Literal ID="txtPage" runat="server" Visible="false"></asp:Literal>
                                     </td>
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
