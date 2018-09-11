<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="direct_demo.getpasswd._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	取回密碼
</title>
<link href="/Style/getpasswd.css" rel="stylesheet" type="text/css" />
<link href="/App_Themes/user/Style.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">


function changeCode(oid1)
{
    document.getElementById(oid1).src = "/demo1/validcode2.aspx?id="+Math.random();
    return false;
}
</script>
</head>
<body>
    <form  id="form1" runat="server">

<div id="wrapMB">

<div id="Panel1" runat="server">
	
<fieldset class="fieldset">
    <legend><span class="fieldset_title">選擇取回密碼方式</span></legend>
        <table border="0" align="center" cellpadding="0" cellspacing="1" class="tb">
          <tr>
            <td>
            <span id="SelectType">
              <input id="SelectType_0" type="radio" name="SelectType" value="1" checked /><label for="SelectType_0">通過密保問題取回密碼</label><br />
             <%-- <input id="SelectType_1" type="radio" name="SelectType" value="2" /><label for="SelectType_1">通過安全郵箱取回密碼</label>--%>
            </span></td>
          </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="Button_selectType" runat="server" Text=" 確認選擇 " 
                        CssClass="buttom" onclick="Button_selectType_Click" />
                <%--<input type="submit" name="btSelect" value=" 確認選擇 " id="btSelect" class="buttom" />--%>
                </td>
          </tr>
        </table>
</fieldset>

</div>


<div id="Panel2" runat="server" visible="false">
	
<fieldset class="fieldset">
    <legend><span class="fieldset_title">通過安全郵箱取回密碼</span>！</legend>
    <table border="0" align="center" cellpadding="0" cellspacing="1" class="tb">
      <tr>
        <td width="44%">輸入您的會員編號：</td>
        <td width="56%">&nbsp;<input name="txtUserName" type="text" maxlength="8" id="txtUserName" runat="server" class="text" ClientIDMode="Static" /></td>
      </tr>
      <tr>
        <td>輸入您的安全郵箱：</td>
        <td>&nbsp;<input name="txtEmail" type="text" maxlength="20" id="txtEmail" runat="server" class="text" ClientIDMode="Static" /></td>
      </tr>
<%--      <tr>
        <td>輸入驗證碼：</td>
        <td>&nbsp;<input name="yzm" type="text" maxlength="5" id="yzm" runat="server" class="text" ClientIDMode="Static" style="width:60px;" />
            <img id="Image1" src="/demo1/validcode2.aspx?r=" onclick="return changeCode('Image1');" style="border-width:0px;" /></td>
      </tr>--%>
      <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button_mail" runat="server" Text=" 確認提交 " CssClass="buttom" 
                onclick="Button_mail_Click" />
            <%--<input type="submit" name="Button1" value=" 確認提交 " id="Button1" class="buttom" />--%>
            <input type="button" name="Back" class="buttom" value=" 返回 " onclick="window.location='default.aspx'" />
            <span id="ShowMsg"></span>
            </td>
      </tr>
    </table>
    <div style="color:Red; text-align:center; margin-top:10px;">請輸入您的會員編號以及綁定的的安全郵箱，系統將爲您初始化登陸密碼與二級密碼，并將新密碼發送至您的郵箱！</div>
</fieldset>

</div>

 
<div id="Panel3" runat="server" visible="false">
	
<fieldset class="fieldset">
    <legend><span class="fieldset_title">通過密保問題取回密碼</span>！</legend>
    <table border="0" align="center" cellpadding="0" cellspacing="1" class="tb">
      <tr>
        <td width="44%">輸入您的會員編號</td>
        <td>&nbsp;<input name="txtUserName2" type="text" maxlength="8" id="txtUserName2" runat="server" class="text" ClientIDMode="Static" /></td>
      </tr>
<%--        <tr>
            <td width="44%">輸入驗證碼</td>
            <td>&nbsp;<input name="yzm2" type="text" maxlength="5" id="yzm2" runat="server" class="text" ClientIDMode="Static" style="width:60px;" /> 
            <img id="Image2"  src="/demo1/validcode2.aspx" onclick="return changeCode('Image2');" style="border-width:0px;" />
            </td>
        </tr>--%>
      <tr>
        <td colspan="2" align="center">
            <%--<input type="submit" name="Button2" value=" 確認提交 " id="Button2" class="buttom" />--%>
            <asp:Button ID="Button_questionchk" runat="server" Text=" 確認提交 " 
                CssClass="buttom" onclick="Button_questionchk_Click" />
            <input type="button" name="Back" class="buttom" value=" 返回 " onclick="window.location='default.aspx'" /></td>
      </tr>
    </table>
</fieldset>

</div>



<div id="Panel4" runat="server" visible="false">
	
<fieldset class="fieldset">
    <legend><span class="fieldset_title">通過密保問題取回密碼</span>！</legend>
    <table border="0" align="center" cellpadding="0" cellspacing="1" class="tb">
      <tr>
        <td width="44%">您的密碼提示問題是：</td>
        <td>&nbsp;<span id="Question"><asp:Literal ID="litQuestion" runat="server"></asp:Literal></span></td>
      </tr>
      <tr>
        <td>請輸入您的密碼提示答案：</td>
        <td>&nbsp;<input name="txtAnswer" type="text" id="txtAnswer" runat="server" class="text" ClientIDMode="Static" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center">
            <%--<input type="hidden" name="HiddenField1" id="HiddenField1" value="" />--%>
            <asp:HiddenField ID="hideUserName" runat="server" />
            <%--<input type="submit" name="Button3" value=" 確認提交 " id="Button3" class="buttom" />--%>
            <asp:Button ID="Button_question" runat="server" Text=" 確認提交 " CssClass="buttom" 
                onclick="Button_question_Click" />
            <input type="button" name="Back" class="buttom" value=" 返回 " onclick="window.location='default.aspx'" />
            </td>
      </tr>
    </table>
</fieldset>

</div>


<div id="Panel5" runat="server" visible="false">
	
<fieldset class="fieldset">
    <legend><span class="fieldset_title">通過密保問題取回密碼</span>！</legend>
    <table border="0" align="center" cellpadding="0" cellspacing="1" class="tb">
      <tr>
        <td>請設置您的新密碼：</td>
        <td>&nbsp;<input name="txtNewPwd" type="password" id="txtNewPwd" class="text" ClientIDMode="Static" /></td>
      </tr>
      <tr>
        <td>新密碼確認：</td>
        <td>&nbsp;<input name="txtNewPwd_2" type="password" id="txtNewPwd_2" class="text" ClientIDMode="Static" /></td>
      </tr>
      <tr>
        <td>新二級密碼：</td>
        <td>&nbsp;<input name="txtNewPwd2" type="password" id="txtNewPwd2" class="text" ClientIDMode="Static" /></td>
      </tr>
      <tr>
        <td>新二級密碼確認：</td>
        <td>&nbsp;<input name="txtNewPwd2_2" type="password" id="txtNewPwd2_2" class="text" ClientIDMode="Static" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center">
            <%--<input type="hidden" name="HiddenField1" id="HiddenField1" value="" />--%>
            <%--<input type="submit" name="Button3" value=" 確認提交 " id="Button3" class="buttom" />--%>
            <asp:Button ID="Button_resetPwd" runat="server" Text=" 確認提交 " CssClass="buttom" 
                onclick="Button_resetPwd_Click" />
            <input type="button" name="Back" class="buttom" value=" 返回 " onclick="window.location='default.aspx'" />
            </td>
      </tr>
    </table>
</fieldset>

</div>

    

</div>

    </form>
</body>
</html>
