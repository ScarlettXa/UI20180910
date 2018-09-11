<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="netMapTJ.aspx.cs" Inherits="direct_demo.ajax.netMapTJ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>treeview</title>
    <link rel="stylesheet" type="text/css" href="/demo1/images/member/main.css" />
        <script type="text/javascript" src="/js/jquery.js"></script>
    <script>
        $(document).bind("contextmenu", function (e) {
            return false;
        });
    </script>
<%--    <script>
        $(window.parent.document).find("#frmNetMapTJ").load(function() {
        var main = $(window.parent.document).find("#frmNetMapTJ");
            var thisheight = $(document).height() + 30;
            main.height(thisheight);
        });
    </script>--%>
    <style>
 .color1{ color:#0000ff;}
</style>
</head>
<body>

    <form id="Form2" runat="server">
    <div>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>
        &nbsp; <a href="javascript:history.go(-1);">Back</a>&nbsp;&nbsp;
&nbsp;&nbsp;<a href="javascript:history.go(1);">Next</a> &nbsp;&nbsp; (提示:点击会员编号往下看)
    </td>
    <td> &nbsp;  &nbsp; 
       <asp:TextBox ID="txtSchKey" runat="server" Width="100px"></asp:TextBox> &nbsp; 
        <asp:Button ID="Button1" runat="server" Text="定位" onclick="Button1_Click" />
    </td>
    <td>
       &nbsp;
    </td>
  </tr>
</table>


        <asp:TreeView ID="tv1" runat="server" ShowLines="True">
        </asp:TreeView>
       
    
    </div>
    <asp:HiddenField ID="hidLevel" Value="3" runat="server" />
    </form>
   
</body>
</html>
