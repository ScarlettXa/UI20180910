<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductAdd.aspx.cs" Inherits="direct_demo.demo1.manage.ProductAdd" ValidateRequest="false" %>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css">
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>&t=1"></script>
    <script type="text/javascript" src="/js/interface.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
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
    function chkForm()
    {
      if(document.getElementById("txtTitle").value=="")
      {
        alert('请输入产品名称');
        document.getElementById("txtTitle").focus();
        return false;
      }
      else if(document.getElementById("class1").value=="")
      {
        alert('请选择类别');
        document.getElementById("class1").focus();
        return false;
      }
      else if(document.getElementById("txtPrice1").value==""||document.getElementById("txtPrice1").value=="0")
      {
        alert('请输入市场价');
        document.getElementById("txtPrice1").focus();
        return false;
      }
      else if(document.getElementById("txtPrice2").value==""||document.getElementById("txtPrice2").value=="0")
      {
        alert('请输入会员价');
        document.getElementById("txtPrice2").focus();
        return false;
      }
      else if(document.getElementById("txtNum").value==""||document.getElementById("txtNum").value=="0")
      {
        alert('请输入库存数量');
        document.getElementById("txtNum").focus();
        return false;
      }
    }
    </script>
</head>
<body>
    <form name="form1" id="form1" runat="server" onsubmit="return chkForm()">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
            <tr>
                <td colspan="4">
                    <table cellspacing="0" cellpadding="0" width="100%" background="images/tab_05.gif">
                        <tbody>
                            <tr>
                                <td width="213" height="23">
                                    &nbsp;<strong>添加产品</strong>
                                </td>
                                <td>
                                    &nbsp;
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
                                产品名称：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtTitle" runat="server" type="text" id="txtTitle" style="width:296px;" maxlength="50" />
                                <asp:HiddenField ID="txtId" runat="server" />
<%--                                <asp:CheckBox ID="CB_remai" runat="server" Text="热卖" /> &nbsp; 
                                <asp:CheckBox ID="CB_cuxiao" runat="server" Text="促销" /> &nbsp; 
                                <asp:CheckBox ID="CB_remen" runat="server" Text="热门" /> --%>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                类别：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
					             <select name="class1" id="class1" onChange="class1change()" >
                                   <asp:Literal ID="lblclass1" runat="server"></asp:Literal>
                                 </select>
                                 <select name="class2" id="class2"  onChange="class2change()" style=" display:;">
                                 <asp:Literal ID="lblclass2" runat="server"></asp:Literal>
				                 </select> 
				                 <select name="class3" id="class3"  style="display:;">
				                 <asp:Literal ID="lblclass3" runat="server"></asp:Literal>
				                 </select>
				                 <span id="reg_notice"></span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                市场价：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtPrice1" type="text" id="txtPrice1"  runat="server" maxlength="6"  onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </td>
                        </tr>
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                会员价：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtPrice2" type="text" id="txtPrice2"  runat="server" maxlength="6" onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </td>
                        </tr>
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                单位：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtDanwei" runat="server" type="text" id="txtDanwei" style="width:50px;" maxlength="5" />
                               
                            </td>
                        </tr>
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                库存数量：
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="txtNum" type="text" id="txtNum"  runat="server" maxlength="6" onkeypress="return event.keyCode>=48&&event.keyCode<=57"  onpaste="return!clipboardData.getData('text').match(/\D/)" ondragenter="return false" />
                            </td>
                        </tr>
                        <tr>
                            <td width="80" align="right" valign="middle" bgcolor="#FBFDFF">
                                缩略图:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                               <table>
                                 <tr>
                                   <td>
                                        <div><ul class="luetu1" id="luetuShow1" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
                                        <div id="picsrc1" style=" text-align:center;"><iframe src="upload.aspx?id=1" frameborder="0" scrolling="no" style="width: 60px; height: 22px;"></iframe></div>
                                         图片地址:<input id="luetu1" name="luetu1" type="text" style=" width:100px;" runat="server" />
                                   
                                   </td><%--
                                   <td>
                                        <div><ul class="luetu2" id="luetuShow2" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
                                        <div id="picsrc2" style=" text-align:center;"><iframe src="upload.aspx?id=2" frameborder="0" scrolling="no" style="width: 60px; height: 22px;"></iframe></div>
                                         图片地址:<input id="luetu2" name="luetu2" type="text" style=" width:100px;" runat="server" />
                                   </td>
                                   <td>
                                        <div><ul class="luetu3" id="luetuShow3" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
                                        <div id="picsrc3" style=" text-align:center;"><iframe src="upload.aspx?id=3" frameborder="0" scrolling="no" style="width: 60px; height: 22px;"></iframe></div>
                                         图片地址:<input id="luetu3" name="luetu3" type="text" style=" width:100px;" runat="server" />
                                   </td>
                                   <td>
                                        <div><ul class="luetu4" id="luetuShow4" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
                                        <div id="picsrc4" style=" text-align:center;"><iframe src="upload.aspx?id=4" frameborder="0" scrolling="no" style="width: 60px; height: 22px;"></iframe></div>
                                         图片地址:<input id="luetu4" name="luetu4" type="text" style=" width:100px;" runat="server" />
                                   </td>
                                   <td>
                                        <div><ul class="luetu5" id="luetuShow5" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
                                        <div id="picsrc5" style=" text-align:center;"><iframe src="upload.aspx?id=5" frameborder="0" scrolling="no" style="width: 60px; height: 22px;"></iframe></div>
                                         图片地址:<input id="luetu5" name="luetu5" type="text" style=" width:100px;" runat="server" />
                                   </td>
                                   <td>
                                        <div><ul class="luetu6" id="luetuShow6" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
                                        <div id="picsrc6" style=" text-align:center;"><iframe src="upload.aspx?id=6" frameborder="0" scrolling="no" style="width: 60px; height: 22px;"></iframe></div>
                                         图片地址:<input id="luetu6" name="luetu6" type="text" style=" width:100px;" runat="server" />
                                   </td>
                                   <td>
                                        <div><ul class="luetu7" id="luetuShow7" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
                                        <div id="picsrc7" style=" text-align:center;"><iframe src="upload.aspx?id=7" frameborder="0" scrolling="no" style="width: 60px; height: 22px;"></iframe></div>
                                         图片地址:<input id="luetu7" name="luetu7" type="text" style=" width:100px;" runat="server" />
                                   </td>--%>
                                 </tr>
                               </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                产品介绍:
                            </td>
                            <td height="38" align="left" valign="middle" bgcolor="#FBFDFF">
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
                        <tr>
                            <td background="images/tab_19.gif" colspan="2" align="center" valign="middle">
                           <asp:Button ID="Button2" runat="server" Text=" 添 加 " onclick="Button2_Click" CssClass="button_text" onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'" onmouseout="this.className='button_onMouseOut'" />&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text=" 修 改 " Visible="false" 
                                    CssClass="button_text" onmousedown="this.className='button_onmousedown'" 
                                    onmouseover="this.className='button_onmouseover'" 
                                    onmouseout="this.className='button_onMouseOut'" onclick="Button1_Click" />&nbsp;&nbsp;
                     <input type="button" id="back" value=" 返 回 " class="button_text" onclick="history.go(-1);" onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"  onmouseout="this.className='button_onMouseOut'" />
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