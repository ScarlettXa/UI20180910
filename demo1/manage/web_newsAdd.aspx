<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_newsAdd.aspx.cs" Inherits="direct_demo.demo1.manage.web_newsAdd" ValidateRequest="false" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
<script language="javascript" src="/js/calendar.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/interface.js"></script>
  <script type="text/javascript">
 	
 	//载入中的GIF动画
    var loadingUrl = "/images/loading.gif";
    
    //选择文件后的事件,iframe里面调用的

    var uploading = function(imgsrc,itemid){
        var el = $("#luetuShow"+itemid);
//        $("#ifUpload"+itemid).fadeOut("fast");
//        el.fadeIn("fast");
	    el.html("<img src='"+loadingUrl+"' align='absmiddle' /> 上传中...");
	    
	    return el;
    };
    
    
    //上传时程序发生错误时，给提示，并返回上传状态

    var uploaderror = function(itemid){
       // alert("程序异常，"+itemid+"项上传未成功。");
        //uploadinit();
        document.getElementById("picsrc").innerHTML="<iframe src=\"upload.aspx?id=1\"  id=\"ifUpload1\"  frameborder=\"no\" scrolling=\"no\" style=\"width:60px; height:22px;\"></iframe>";
    };
    
    //上传成功后的处理
	var uploadsuccess = function(newpath,itemid){
	//alert(newpath);
	document.getElementById("luetu"+itemid).value=newpath;
	document.getElementById("luetuShow"+itemid).innerHTML="<img src='" + newpath + "' width=\"58\" height=\"73\" border=0 />";
     document.getElementById("picsrc"+itemid).innerHTML="<iframe src=\"upload.aspx?id=1\" id=\"ifUpload1\"  frameborder=\"no\" scrolling=\"no\" style=\"width:60px; height:22px;\"></iframe>";
     
    };
    </script>
</head>
<body>
    <form id="form1" runat="server">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td width="100%">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <tbody>
                            <tr>
                                <td background="/demo1/images/corp_main_table_abj.gif" height="23" align="center">
                                    &nbsp;<strong><asp:Literal ID="txtInfo1" runat="server" Text="新闻添加"></asp:Literal> </strong>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                标题:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:TextBox ID="txtTitle" runat="server" style=" width:300px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                类别:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:DropDownList ID="ddl1" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                缩略图:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <div>
                                    <ul class="luetu1" id="luetuShow1" runat="server">
                                        <img src="/images/pleaseUpload.gif" /></ul>
                                  
                                  </div>
                                <div id="picsrc1">
                                    <iframe src="upload.aspx?id=1" frameborder="0" scrolling="no" style="width: 60px;
                                        height: 22px;"></iframe>
                                </div>
                              或人输入图片地址:<input id="luetu1" name="luetu1" type="text" style=" width:350px;" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                内容:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
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
				<textarea id="content1" name="content1" style="width:100%;height:200px;visibility:hidden;" rows="100" cols="200" runat="server"></textarea>
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
    </form>
</body>
</html>
