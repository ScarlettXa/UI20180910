<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="netMapJD.aspx.cs" Inherits="direct_demo.ajax.netMapJD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>treeview</title>
    <link rel="stylesheet" type="text/css" href="/demo1/images/member/main.css" />
    
<%--    <script>
        $(window.parent.document).find("#frmNetMapTJ").load(function() {
        var main = $(window.parent.document).find("#frmNetMapTJ");
            var thisheight = $(document).height() + 30;
            main.height(thisheight);
        });
    </script>--%>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script>
        $(document).bind("contextmenu", function (e) {
            return false;
        });
    </script>
</head>
<body>

    <form id="Form2" runat="server">
    <div>
 &nbsp; <a href="javascript:history.go(-1);">Back</a>&nbsp;&nbsp;
&nbsp;&nbsp;<a href="javascript:history.go(1);">Next</a> &nbsp;&nbsp; (提示:点击会员编号查看下面相应层数)<br />
        <asp:TreeView ID="tv1" runat="server" ShowLines="True">
        </asp:TreeView>
       
    
    </div>

    </form>
   
</body>
</html>
