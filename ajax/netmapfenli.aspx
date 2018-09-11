<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="netmapfenli.aspx.cs" Inherits="direct_demo.ajax.netmapfenli" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="/demo1/images/member/datalist.css" type="text/css" />
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
<link rel="stylesheet" href="/demo1/images/datalist.css" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script>
        $(document).bind("contextmenu", function (e) {
            return false;
        });
    </script>
</head>
<body>
 <a name="linkTopHome"></a>
<table width="100%" border="0" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td width="8" background="/demo1/images/member/tab_12.gif">
                            &nbsp;
                        </td>
                        <td>
<div style=" float:left; width:900px;">
<div class="teamTitle1"><strong>当前组：</strong></div>
<asp:Repeater ID="rptTeam1" runat="server">
   <ItemTemplate>
      <%-- <%#Eval("huiyuan_bianhao").ToString() %>
       <%#Int32.Parse(Eval("team_order").ToString()) == 0 || Int32.Parse(Eval("team_order").ToString()) == 2 || Int32.Parse(Eval("team_order").ToString()) == 6 ? "<br>" : ""%>--%>
       <div class="<%#Int32.Parse(Eval("team_order").ToString()) == 0 ? "FA1_1" : ""%> <%#Int32.Parse(Eval("team_order").ToString()) == 1 ? "FA1_2" : ""%> <%#Int32.Parse(Eval("team_order").ToString()) != 0 && Int32.Parse(Eval("team_order").ToString()) != 1 ? "FA1" : ""%>"><div class="FA0_0"><%#Eval("huiyuan_bianhao").ToString() %></div><div class="FA0_1"><%#Eval("team_addtime").ToString()%></div></div>
       <%#Int32.Parse(Eval("team_order").ToString()) == 0 || Int32.Parse(Eval("team_order").ToString()) == 2 || Int32.Parse(Eval("team_order").ToString()) == 6 ? "<div class=\"teamline1\"></div>" : ""%>
       
   </ItemTemplate>
</asp:Repeater>
<br />
<div class="teamTitle2"><strong>历史组：</strong></div>
<asp:Repeater ID="rptTeam2" runat="server">
   <ItemTemplate>
       <%--<%#Eval("huiyuan_bianhao").ToString() %>
       <%#Int32.Parse(Eval("team_order").ToString()) == 0 || Int32.Parse(Eval("team_order").ToString()) == 2 || Int32.Parse(Eval("team_order").ToString()) == 6 ? "<br>" : ""%>
       <%#Int32.Parse(Eval("team_order").ToString()) == 6 ? "<br>" : ""%>--%>
       <div class="<%#Int32.Parse(Eval("team_order").ToString()) == 0 ? "FA1_1" : ""%> <%#Int32.Parse(Eval("team_order").ToString()) == 1 ? "FA1_2" : ""%> <%#Int32.Parse(Eval("team_order").ToString()) != 0 && Int32.Parse(Eval("team_order").ToString()) != 1 ? "FA1" : ""%>"><div class="FA0_0"><%#Eval("huiyuan_bianhao").ToString() %></div><div class="FA0_1"><%#Eval("team_addtime").ToString()%></div></div>
       <%#Int32.Parse(Eval("team_order").ToString()) == 0 || Int32.Parse(Eval("team_order").ToString()) == 2 || Int32.Parse(Eval("team_order").ToString()) == 6 ? "<div class=\"teamline1\"></div>" : ""%>
       <%#Int32.Parse(Eval("team_order").ToString()) == 6 ? "<div class=\"teamline2\"></div>" : ""%>
   </ItemTemplate>
</asp:Repeater>
</div>
                        </td>
                        <td width="8" background="/demo1/images/member/tab_15.gif">
                            &nbsp;
                        </td>
                    </tr>
                </table>
   

</body>
</html>