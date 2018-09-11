<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsView.aspx.cs" Inherits="direct_demo.ajax.NewsView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      .newsview{ font-size:12px;}
      .newsview dt{ font-size:18px; font-weight:bold; text-align:center; margin:0; padding:0; }
      .newsview dd{ margin:0; padding:0; }
      .newsview .m{ text-align:center;}
      .newsview .date{ border-bottom:1px solid #666; line-height:30px; margin-bottom:10px;}
    </style>
</head>
<body>
    <div class="newsview">
    <dl>
    <asp:Repeater ID="rpt1" runat="server">
      <ItemTemplate>
         
      <%--<dt><%#Eval("NTitle").ToString() %></dt>
      <dd class="m date"><%#Eval("NAddtime").ToString() %></dd>--%>
      <dd><img src="<%#Eval("NPic").ToString() %>" /></dd>
      <dd><%#Eval("NContent").ToString() %></dd>
      </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="rpt2" runat="server">
      <ItemTemplate>
         
      <dd><%#Eval("memo").ToString()%></dd>
      </ItemTemplate>
    </asp:Repeater>
    </dl>
    </div>
</body>
</html>
