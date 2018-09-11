<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_system.aspx.cs" Inherits="direct_demo.demo1.manage.web_system" %>

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
    <script type="text/javascript" src="/js/interface.js"></script>
  <script type="text/javascript">

      //载入中的GIF动画
      var loadingUrl = "/images/loading.gif";

      //选择文件后的事件,iframe里面调用的

      var uploading = function(imgsrc, itemid) {
          var el = $("#luetuShow" + itemid);
          //        $("#ifUpload"+itemid).fadeOut("fast");
          //        el.fadeIn("fast");
          el.html("<img src='" + loadingUrl + "' align='absmiddle' /> 上传中...");

          return el;
      };


      //上传时程序发生错误时，给提示，并返回上传状态

      var uploaderror = function(itemid) {
          // alert("程序异常，"+itemid+"项上传未成功。");
          //uploadinit();
      document.getElementById("picsrc" + itemid).innerHTML = "<iframe src=\"upload.aspx?id=1\"  id=\"ifUpload1\"  frameborder=\"no\" scrolling=\"no\" style=\" height:22px;\"></iframe>";
      };

      //上传成功后的处理
      var uploadsuccess = function(newpath, itemid) {
          //alert(newpath);
          document.getElementById("luetu" + itemid).value = newpath;
          document.getElementById("luetuShow" + itemid).innerHTML = "<img src='" + newpath + "'  height=\"73\" border=0 />";
          document.getElementById("picsrc" + itemid).innerHTML = "<iframe src=\"upload.aspx?id=1\" id=\"ifUpload1\"  frameborder=\"no\" scrolling=\"no\" style=\"width:60px; height:22px;\"></iframe>";

      };
    </script>
</head>

<body>
<form name="form1" id="form1" runat="server">

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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[网站基本设置]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="106">&nbsp;</td>
                <td width="106"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1">&nbsp;</td>
                    <td class="STYLE1">&nbsp;</td>
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
    <td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/manage/tab_12.gif">&nbsp;</td>
        <td>
           <table>
             <tr>
               <td>网站名称：</td>
               <td>
                   <asp:TextBox ID="txtSiteName" runat="server" Width="300px"></asp:TextBox></td>
             </tr>
             <tr>
               <td>公司名称：</td>
               <td>
                   <asp:TextBox ID="txtCompanyName" runat="server" Width="300px"></asp:TextBox></td>
             </tr>
             <tr>
               <td>网址：</td>
               <td>
                   <asp:TextBox ID="txturl" runat="server" Width="300px"></asp:TextBox></td>
             </tr>
             <tr>
               <td>电话：</td>
               <td>
                   <asp:TextBox ID="txtPhone" runat="server" Width="300px"></asp:TextBox></td>
             </tr>
             <tr>
               <td>地址：</td>
               <td>
                   <asp:TextBox ID="txtAddress" runat="server" Width="300px"></asp:TextBox></td>
             </tr>
             <tr>
               <td>传真：</td>
               <td>
                   <asp:TextBox ID="txtFax" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
               <td>联系人：</td>
               <td>
                   <asp:TextBox ID="txtContactor" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
               <td>LOGO：</td>
               <td>
                    <div>
                                    <ul class="luetu" id="luetuShow0" runat="server">
                                        <img src="/images/pleaseUpload.gif" /></ul>
                                  
                                  </div>
                                <div id="picsrc0">
                                    <iframe src="upload.aspx?id=0" frameborder="0" scrolling="no" style="width: 60px;
                                        height: 22px;"></iframe>
                                </div>
                              或人输入图片地址:<input id="luetu0" name="luetu0" type="text" style=" width:350px;" runat="server" />
                   
               </td>
             </tr>
             <tr>
               <td>广告图1：</td>
               <td>
                    <div>
                                    <ul class="luetu" id="luetuShow1" runat="server">
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
               <td>广告图2：</td>
               <td>
                    <div>
                                    <ul class="luetu" id="luetuShow2" runat="server">
                                        <img src="/images/pleaseUpload.gif" /></ul>
                                  
                                  </div>
                                <div id="picsrc2">
                                    <iframe src="upload.aspx?id=2" frameborder="0" scrolling="no" style="width: 60px;
                                        height: 22px;"></iframe>
                                </div>
                              或人输入图片地址:<input id="luetu2" name="luetu2" type="text" style=" width:350px;" runat="server" />
                   
               </td>
             </tr>
             <tr>
               <td>广告图3：</td>
               <td>
                    <div>
                                    <ul class="luetu" id="luetuShow3" runat="server">
                                        <img src="/images/pleaseUpload.gif" /></ul>
                                  
                                  </div>
                                <div id="picsrc3">
                                    <iframe src="upload.aspx?id=3" frameborder="0" scrolling="no" style="width: 60px;
                                        height: 22px;"></iframe>
                                </div>
                              或人输入图片地址:<input id="luetu3" name="luetu3" type="text" style=" width:350px;" runat="server" />
                   
               </td>
             </tr>
             <tr style=" display:none;">
               <td>广告图4：</td>
               <td>
                    <div>
                                    <ul class="luetu" id="luetuShow4" runat="server">
                                        <img src="/images/pleaseUpload.gif" /></ul>
                                  
                                  </div>
                                <div id="picsrc4">
                                    <iframe src="upload.aspx?id=4" frameborder="0" scrolling="no" style="width: 60px;
                                        height: 22px;"></iframe>
                                </div>
                              或人输入图片地址:<input id="luetu4" name="luetu4" type="text" style=" width:350px;" runat="server" />
                   
               </td>
             </tr>
             <tr style=" display:none;">
               <td>广告图5：</td>
               <td>
                    <div>
                                    <ul class="luetu" id="luetuShow5" runat="server">
                                        <img src="/images/pleaseUpload.gif" /></ul>
                                  
                                  </div>
                                <div id="picsrc5">
                                    <iframe src="upload.aspx?id=5" frameborder="0" scrolling="no" style="width: 60px;
                                        height: 22px;"></iframe>
                                </div>
                              或人输入图片地址:<input id="luetu5" name="luetu5" type="text" style=" width:350px;" runat="server" />
                   
               </td>
             </tr>
             <%
                 if (Request.Cookies["ok"] != null)
                 { 
                  %>
             <tr>
               <td>wsPort：</td>
               <td>
                   <asp:TextBox ID="txtwsPort" runat="server" Width="300px"></asp:TextBox></td>
             </tr>
             <%
                 }
                  %>
             <tr>
               <td colspan="2" align="center">
                   <asp:Button ID="Button1" runat="server" Text="提交"  CssClass="button_text" 
                       onclick="Button1_Click" />
               </td>
             </tr>
           </table>
        </td>
        <td width="8" background="../images/manage/tab_15.gif">&nbsp;</td>
      </tr>
    </table>
    
    </td>
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
</form>
</body>
</html>
