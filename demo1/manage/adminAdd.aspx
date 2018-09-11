<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminAdd.aspx.cs" Inherits="direct_demo.demo1.manage.adminAdd" %>

<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
    
<script type="text/javascript" src="/js/jquery.js"></script>
    <script language="javascript" type="text/javascript" src="/js/js.js"></script>

    <script language="javascript" type="text/javascript" src="/js/area.js"></script>
<script src="/js/jquery.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript" src="/js/ajax.js"></script>

    <script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>

    <script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>

    <script type="text/javascript">
        function chkform() {
            var _username, _email, _qq, _mobile, _pwd1, _pwd2;
            _username = document.getElementById("txtUserName").value;
            _pwd1 = document.getElementById("txtpwd1").value;
            _pwd2 = document.getElementById("txtpwd2").value;
            if (_username == "") {
                alert("请输入用户名");
                document.getElementById("txtUserName").focus();
                return false;
            }
            else if (_pwd1 == "") {
                alert("请输入密码");
                document.getElementById("txtpwd1").focus();
                return false;
            }

            else if (_pwd1.length < 6) {
                alert("密码至少为6位");
                document.getElementById("txtpwd1").focus();
                return false;
            }
            else if (_pwd2 == "") {
                alert("请输入确认密码");
                document.getElementById("txtpwd2").focus();
                return false;
            }
            else if (_pwd2 != _pwd1) {
                alert("两次密码输入不一样");
                document.getElementById("txtpwd1").focus();
                return false;
            }
            return true;
        }

        function checkEmail(email) {
            var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
            chkFlag = pattern.test(email);
            if (chkFlag) {
                return true;
            }

        }



        function ShowValidImage() {
            var numkey = Math.random();
            document.getElementById("imgRandom").src = "/func/Validcode.aspx?ns=" + numkey;
        }
    </script>

</head>
<body>
    <form name="form1" id="form1" runat="server" onsubmit="return chkform(this);">
        <br />
    <div id="mainbox1" style="display: block;">

        <table width="350" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td height="40" align="right">
                    用户名：
                </td>
                <td height="40" align="left">
                    <input id="txtUserName" class="mumber-input" runat="server" maxlength="18" onblur="chkUserNameExits('txtUserName')"
                        onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
                    <span id="messageUserName" class="errshow"></span>
                </td>
            </tr>
            <tr>
                <td height="40" align="right">
                    密码：
                </td>
                <td height="40" align="left">
                    <input id="txtpwd1" class="mumber-input" runat="server" type="password" maxlength="16" />
                </td>
            </tr>
            <tr>
                <td height="30" colspan="2" align="center" valign="bottom">
                    <asp:ImageButton ID="ImageButton1" ImageUrl="/images/btn.gif" runat="server"
                        OnClick="ImageButton1_Click"  OnClientClick="return ifConfirm()" />
                </td>
            </tr>
        </table>
    </div>
    <div id="mainbox2" style="display: none;">
        <div style="text-align: center; padding-top: 50px;">
            请 稍 候<br>
            <img src="/images/waiting2.gif" /></div>
    </div>
    </form>
</body>
</html>
