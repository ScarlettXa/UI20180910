<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsAdd2.aspx.cs" Inherits="direct_demo.demo1.manage.NewsAdd2" ValidateRequest="false" %>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
    <script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</head>
<body>

    <script language="javascript" src="/js/calendar.js" type="text/javascript"></script>

    <form id="form1" runat="server">
    <br>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
        <tbody>
            <tr>
                <td width="100%">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <tbody>
                            <tr>
                                <td background="/demo1/images/corp_main_table_abj.gif" height="23" align="center">
                                    &nbsp;<strong><asp:Literal ID="txtInfo1" runat="server" Text="新闻添加"></asp:Literal></strong>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr id="box1" runat="server" visible="false">
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                标题:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="TextBox_title" type="text" id="TextBox_title" runat="server" style="width: 211px;" />
                            </td>
                        </tr>
                        <tr id="newstype" runat="server" visible="false">
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                类型:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:DropDownList ID="newsclass" runat="server">
                                    <asp:ListItem Value="7">新闻公告</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" align="left" valign="middle" colspan="2" bgcolor="#FBFDFF">
<script charset="utf-8" src="/editoryiyou/kindeditor.js" type="text/javascript"></script>
<script charset="utf-8" src="/editoryiyou/lang/zh_CN.js" type="text/javascript"></script>
<script charset="utf-8" src="/editoryiyou/plugins/code/prettify.js" type="text/javascript"></script>
<script type="text/javascript">
 
KindEditor.ready(function(K) {
 
var editor1 = K.create('textarea[name="content1"]', {
cssPath : '/editoryiyou/plugins/code/prettify.css',
uploadJson : '/editoryiyou/asp.net/upload_json.ashx',
fileManagerJson : '/editoryiyou/asp.net/file_manager_json.ashx',
allowFileManager : true,
afterCreate : function() {
var self = this;
K.ctrl(document, 13, function() {
self.sync();
//document.forms['form1'].submit();
});
K.ctrl(self.edit.doc, 13, function() {
self.sync();
//document.forms['form1'].submit();
});
}
});
prettyPrint();
});
 
</script>
				<textarea id="content1" name="content1" style="width:100%;height:400px;visibility:hidden;" rows="100" cols="200" runat="server"></textarea>
                            </td>
                        </tr>
                        <tr id="box2" runat="server" visible="false">
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                发布时间:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtaddtime" type="text" id="txtaddtime"  value="" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" valign="middle">
                              <asp:Button ID="Button1" runat="server" Text=" 添 加 " onclick="Button1_Click" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'" onmouseout="this.className='button_onMouseOut'"/>
                              <asp:Button ID="Button2" runat="server" Text=" 修 改 " Visible="false"  
                                    CssClass="button_text"  onmousedown="this.className='button_onmousedown'" 
                                    onmouseover="this.className='button_onmouseover'" 
                                    onmouseout="this.className='button_onMouseOut'" onclick="Button2_Click"/>     
                                <asp:HiddenField ID="txtId" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    <br>
    <br>
    </form>
</body>
</html>