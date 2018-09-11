<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminModi.aspx.cs" Inherits="direct_demo.demo1.manage.adminModi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script language="javascript" src="/js/calendar.js" type="text/javascript"></script>
<script type="text/javascript">
    function chkform() {
        var _pwd1;
        _pwd1 = document.getElementById("txtpwd1").value;
        if (_pwd1 == "") {
            alert("请输入密码");
            document.getElementById("txtpwd1").focus();
            return false;
        }

        else if (_pwd1.length < 6) {
            alert("密码至少为6位");
            document.getElementById("txtpwd1").focus();
            return false;
        }

        SeedMsgBox('正在操作中……');
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
<form name="form1" id="form1" runat="server">
<div id="mainbox1" style="display:block;">


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/manage/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/manage/tab_03.gif" width="12" height="30" /></td>
        <td>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/manage/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[管理员管理]-[管理员修改]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="106">&nbsp;</td>
                <td width="106"><table width="90%" border="0" cellpadding="0" cellspacing="0" style=" display:none;">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/manage/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">&nbsp;</div></td>
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
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" class="list1_left">&nbsp;</td>
        <td>
        <table width="100%" border="0"  cellpadding="5" cellspacing="1" align="left" class="tb1">
                                        <tr>
                                            <td height="40" align="right" width="80">
                                                用户名：
                                            </td>
                                            <td height="40" align="left">
                                                <asp:Literal ID="txtUserNameShow" runat="server"></asp:Literal>
                                                <input id="txtUserName" name="txtUserName" type="hidden" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="40" align="right">
                                                密码：
                                            </td>
                                            <td height="40" align="left">
                                                <input  id="txtpwd1" name="txtpwd1" class="mumber-input" runat="server" type="text" maxlength="16" /> (不填则不修改)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="40" align="right">
                                                权限：
                                            </td>
                                            <td height="40" align="left" style=" line-height:30px;">
                                              <%--<input id="txtLanMu1" name="txtLanMu1" type="checkbox" value="" checked />--%>
                                                 <asp:Literal ID="txtRights" runat="server"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="60" colspan="2" align="center">
                                                <asp:ImageButton ID="ImageButton1" ImageUrl="/images/btn.gif" 
                                                    runat="server" onclick="ImageButton1_Click" />
                                            </td>
                                        </tr>
                                    </table>
        
        </td>
        <td width="8" class="list1_right">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="../images/manage/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="../images/manage/tab_18.gif" width="12" height="35" /></td>
        <td>
           &nbsp;
        </td>
        <td width="16"><img src="../images/manage/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</div>

<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">请 稍 候<br><img src="/images/waiting2.gif" /></div>
</div>

</form>
</body>
</html>