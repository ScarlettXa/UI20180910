<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="direct_demo.demo1.Manage" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%--<base target="_top" />--%>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>企业信息管理系统-公司登录</title>
    <style type="text/css">
         body
        {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #016aa9;
            overflow: hidden;
        }
        .STYLE1
        {
            color: #000000;
            font-size: 12px;
        }
        .STYLE3
        {
            color: #FFFFFF;
            font-size: 12px;
        }
       </style>


<script language="javascript">
//function ShowValidImage() {
//        var numkey = Math.random();
//        document.getElementById("imgRandom").src = "/demo1/Validcode.aspx?ns="+Math.random();
//    }
//window.onload = function(){ document.getElementById("imgRandom").src="/demo1/Validcode.aspx?";} 
</script>
<script src="/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/globalcopy.js"></script>
<script type="text/javascript" src="/js/comm.js"></script>
</head>
<body>
    <form id="loginform" runat="server" onsubmit="return manageLogin()" target="_top">
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="235" background="/demo1/images/manage/login_03.gif" align="center">
                            &nbsp;<asp:Label ID="wrongshow" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td height="53">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="384" height="53" background="/demo1/images/manage/login_05.gif">
                                        &nbsp;
                                    </td>
                                    <td width="216" background="/demo1/images/manage/login_06.gif">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="20%">
                                                    <div align="left">
                                                        <span class="STYLE3">管理员</span></div>
                                                </td>
                                                <td width="53%">
                                                    <div align="center">
                                                        <input type="text" name="TextBoxLoginID" id="TextBoxLoginID" runat="server" style="width: 105px; height: 17px; background-color: #292929;  border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff" maxlength="9" />
                                                       <script language="javascript">document.getElementById("TextBoxLoginID").focus();</script>
                                                    </div>
                                                </td>
                                                <td width="27%">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="20%">
                                                    <div align="left">
                                                        <span class="STYLE3">密码</span></div>
                                                </td>
                                                <td width="53%">
                                                    <div align="center">
                                                        <input type="password" name="TextBoxPassword" id="TextBoxPassword" runat="server" style="width: 105px; height: 17px; background-color: #292929;
                                                            border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff" />
                                                    </div>
                                                </td>
                                                <td width="27%">
                                                  
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="362" background="/demo1/images/manage/login_07.gif">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="213" background="/demo1/images/manage/login_09.gif" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="384">
                                     &nbsp; 
                                    </td>
                                    <td width="205" style=" display:none;">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style=" display:none;">
                                            <tr>
                                                <td width="20%">
                                                    <div align="left">
                                                        <span class="STYLE3">验证码</span></div>
                                                </td>
                                                <td width="58%">
                                                    <div align="center">
                                                       <span><input name="verifycode" id="verifycode"  type="text" style="width: 105px; height: 17px; background-color: #292929;
                                                            border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff" maxlength="4" value="12345" /></span> 
                                                          
                                                    </div>
                                                </td>
                                                <td width="22%">
                                                    <div align="left">
                                                    <span class="STYLE3"><img id="imgRandom" onclick="ShowValidImage()" src="/images/loading.gif" width="38" height="20" /></span>  
                                                        </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style=" text-indent:75px;">
                                        <%--<input type="image" name="btSubmit" id="btSubmit" src="/demo1/images/manage/dl.gif" Style="border-width: 0px; width:49px; height:18px;" onclick="return manageLogin()" />--%>
                                        <span id="boxLoading"></span>
                                        <asp:ImageButton ID="btSubmit" runat="server" ImageUrl="/demo1/images/manage/dl.gif" Style="border-width: 0px; width:49px; height:18px;"   OnClick="ImageButton2_Click" />
                                    </td>
                                    </tr>
                            </table>
                          
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    </form>
</body>
</html>
