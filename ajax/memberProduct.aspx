<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memberProduct.aspx.cs" Inherits="direct_demo.ajax.memberProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="/demo1/images/member/datalist.css" type="text/css" />
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/demo1/js/comm.js?r=1"></script>
<script type="text/javascript" src="/js/comm.js?r=1"></script>
<script>
    $(document).bind("contextmenu", function (e) {
        //alert("sorry! No right-clicking!");
        return false;
    });
</script>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <asp:Label ID="lbl_newscontent" runat="server" Text=""></asp:Label>
                </td>
            </tr>
    </table>
</body>
</html>
