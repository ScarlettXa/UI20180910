<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="direct_demo.demo1.manage.Welcome" %>
<%@ Register TagPrefix="ascx" TagName="ChkLogin" Src="~/ascx/ChkLogin_Manage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
a{ font-size:12px;}
a:link{ color:#0000ff; text-decoration:none;}
a:visited{ color:#0000ff; text-decoration:none;}
a:hover{ color:#ff0000; text-decoration:none;}
.style1{ line-height:22px; padding:10px 0 0 10px;}
.title{ font-size:16px; font-weight:bold; text-align:center;}
</style>

<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script language="javascript" src="/js/default.js" type="text/javascript"></script>
</head>

<body>
<ascx:ChkLogin ID="ascx_chkLogin" runat="server" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/manage/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/manage/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/manage/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1">欢迎界面</td>
              </tr>
            </table></td>
            <td width="54%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/manage/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/manage/tab_12.gif">&nbsp;</td>
        <td height="400" align="center" style="font-size:16px; font-weight:bold;">
             <div class="style1">
               <div class="title">欢迎进入公司业务系统</div>
               <asp:Literal ID="txtInfo" runat="server"></asp:Literal>
               <br />
               <%
                   if (Request.Cookies["ok"] != null)
                       Response.Write("手机短信余额：" + _msgNum_1xinxi);
                    %>
              </div>
        </td>
        <td width="8" background="../images/manage/tab_15.gif">&nbsp;</td>
      </tr>	
    </table></td>
  </tr>
  <tr>
    <td height="35" background="../images/manage/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="../images/manage/tab_18.gif" width="12" height="35" /></td>
        <td>&nbsp;</td>
        <td width="16"><img src="../images/manage/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
