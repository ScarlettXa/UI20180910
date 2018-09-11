<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_newsList.aspx.cs" Inherits="direct_demo.demo1.manage.web_newsList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/utils.js"></script>
</head>

<body>
<form name="form1" id="form1" runat="server">

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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[网站管理]-[<asp:Literal ID="litClassName" runat="server" Text="栏目内容"></asp:Literal>]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="106">&nbsp;</td>
                <td width="106"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1">&nbsp;</td>
                    <td class="STYLE1">&nbsp;</td>
                  </tr>
                </table></td>
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
    <td>
       <table width="100%" cellpadding="0" cellspacing="0" border="0" style=" background:url(/images/white.gif) repeat;">
              <tr>
                <td>&nbsp;</td>
                <td style=" line-height:35px;">
					             类别：<select name="class1" id="class1" onchange="webClass1change()" >
                                   <asp:Literal ID="lblclass1" runat="server"></asp:Literal>
                                 </select>
                                 <select name="class2" id="class2" onchange="webClass2change()" style=" display:none;">
                                 <asp:Literal ID="lblclass2" runat="server"></asp:Literal>
				                 </select> 
				                 <select name="class3" id="class3" style="display:none;">
				                 <asp:Literal ID="lblclass3" runat="server"></asp:Literal>
				                 </select>
				                 <span id="reg_notice"></span>
				                 &nbsp;&nbsp;&nbsp;
				                 名称：<asp:TextBox ID="schkey" runat="server" style="width: 85px;"></asp:TextBox>
				                 
				                 <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" CssClass="button_text" />
                </td>
                <td>&nbsp;</td>
              </tr>
           </table>

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/manage/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()"  class="list1_tb">
          <tr>
            <th>序号</th>
            <th>标题</th>
            <th>时间</th>
            <th>类别</th>
            <th>操作</th>
          </tr>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
          <tr>
            <td height="20"><%#Container.ItemIndex+1 %></td>
            <td><%#Eval("NTitle") %></td>
            <td><%#Eval("NAddtime").ToString()%></td>
            <td><%#GetClassName(Eval("classid").ToString())%></td>
            <td>
             <a href="web_newsadd.aspx?id=<%#Eval("NId") %>">修改</a>
             &nbsp; 
             <asp:LinkButton ID="btndel" OnClientClick="return confirm('确定要删除吗')" runat="server" OnCommand="Operate_Command" CommandName="del" CommandArgument='<%#Eval("NId") %>'>删除</asp:LinkButton>
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
