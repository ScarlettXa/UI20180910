<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jiangjin.aspx.cs" Inherits="direct_demo.ToExcel.Jiangjin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="box_jiangjin" runat="server">
<table cellspacing="0" cellpadding="4" rules="all" bordercolor="#3366CC" border="1"
        id="Dg" style="background-color: White; border-color: #3366CC; border-width: 1px; width: 100%; border-collapse: collapse;">
        <tr style="color: #CCCCFF; background-color: #003399; font-weight: bold;">
            <td align="Center">
                日期
            </td>
            <td align="Center">
                会员编号
            </td>
            <td align="Center">
                层奖
            </td>
            <td align="Center">
                量奖
            </td>
            <td align="Center">
                点奖
            </td>
            <td align="Center">
                税
            </td>
            <td align="Center">
                合计
            </td>
        </tr>
    <asp:Repeater ID="rptlist" runat="server">
       <ItemTemplate>
        <tr style="color: #003399; background-color: White;">
            <td align="Center">
               <%#Eval("cha_date")%>
            </td>
            <td align="Center">
                <%#Eval("cha_hui_bianhao").ToString()%>
            </td>
            <td align="Center">
                <%#(float.Parse(Eval("cha_001").ToString())).ToString()%>
            </td>
            <td align="Center">
                <%#(float.Parse(Eval("cha_002").ToString())).ToString()%>
            </td align="Center">
            <td align="Center">
               <%#(float.Parse(Eval("cha_003").ToString())).ToString()%>
            </td>
            <td align="Center">
               <%#(float.Parse(Eval("cha_006").ToString())).ToString()%>
            </td>
            <td align="Center">
               <%#float.Parse(Eval("zong").ToString()) %>
            </td>
        </tr>
 </ItemTemplate>
 </asp:Repeater>
    </table>
    </div>
    </form>
</body>
</html>
