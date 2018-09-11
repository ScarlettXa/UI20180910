<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="direct_demo.demo1.manage.password" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
    <style type="text/css">
        *
        {
            font-size: 12px;
        }
        .style1
        {
            height: 25px;
        }
    </style>
<script type="text/javascript" language="javascript">
    function chkform(oform) {
        //     if(oform.txtpwd1.value.length<1)
        //     {
        //        alert('请输入一级密码！');
        //        oform.txtpwd1.focus();
        //        return false;
        //     }
        //     else if(oform.txtpwd2.value.length<1)
        //     {
        //        alert('请输入二级密码！');
        //        oform.txtpwd2.focus();
        //        return false;
        //     }
        //     else if(oform.txtpwd1_1.value.length<1)
        //     {
        //        alert('请输入新一级密码！');
        //        oform.txtpwd1_1.focus();
        //        return false;
        //     }
        //     else if(oform.txtpwd1_2.value.length<1)
        //     {
        //        alert('请输入新一级密码确认！');
        //        oform.txtpwd1_2.focus();
        //        return false;
        //     }
        //     else if(oform.txtpwd1_1.value!=oform.txtpwd1_2.value)
        //     {
        //        alert('一级密码再次输入不一样！');
        //        oform.txtpwd1_1.focus();
        //        return false;
        //     }
        //     else if(oform.txtpwd2_1.value.length<1)
        //     {
        //        alert('请输入新二级密码！');
        //        oform.txtpwd2_1.focus();
        //        return false;
        //     }
        //     else if(oform.txtpwd2_2.value.length<1)
        //     {
        //        alert('请输入新二级密码确认！');
        //        oform.txtpwd2_2.focus();
        //        return false;
        //     }
        //     else if(oform.txtpwd2_1.value!=oform.txtpwd2_2.value)
        //     {
        //        alert('二级密码再次输入不一样！');
        //        oform.txtpwd2_1.focus();
        //        return false;
        //     }

        if (oform.txtpwd1.value.length < 1) {
            alert('请输入密码！');
            oform.txtpwd1.focus();
            return false;
        }

        else if (oform.txtpwd1_1.value.length < 1) {
            alert('请输入级密码！');
            oform.txtpwd1_1.focus();
            return false;
        }
        else if (oform.txtpwd1_2.value.length < 1) {
            alert('请输入新密码确认！');
            oform.txtpwd1_2.focus();
            return false;
        }
        else if (oform.txtpwd1_1.value != oform.txtpwd1_2.value) {
            alert('新密码两次输入不一样！');
            oform.txtpwd1_1.focus();
            return false;
        }

        return true;
    }
</script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return chkform(this)">
    <div>
        <table style="width: 300px; margin-top: 50px;" align="center" cellpadding="3">
            <tr>
                <td class="style1" align="right">
                    原密码：
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtpwd1" name="txtpwd1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
<%--            <tr>
                <td class="style1" align="right">
                    原二级密码：
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtpwd2" name="txtpwd2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>--%>
            <tr>
                <td align="right">
                    新密码：
                </td>
                <td>
                    <asp:TextBox ID="txtpwd1_1" name="txtpwd1_1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    新密码确认：
                </td>
                <td>
                    <asp:TextBox ID="txtpwd1_2" name="txtpwd1_2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
<%--            <tr>
                <td align="right">
                    新二级密码：
                </td>
                <td>
                    <asp:TextBox ID="txtpwd2_1" name="txtpwd2_1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    新二级密码确认：
                </td>
                <td>
                    <asp:TextBox ID="txtpwd2_2" name="txtpwd2_2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>--%>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text=" 提 交 " OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>