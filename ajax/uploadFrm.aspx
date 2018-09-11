<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadFrm.aspx.cs" Inherits="direct_demo.ajax.uploadFrm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/demo1/images/datalist.css" type="text/css">
    <style>
    .luetu1{}
    .luetu1 img{ max-width:200px; height:auto;}
    </style>
    <script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/comm.js"></script>
    <script type="text/javascript" src="/js/interface.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
  <script type="text/javascript">

      //载入中的GIF动画
      var loadingUrl = "/images/loading.gif";

      //选择文件后的事件,iframe里面调用的

      var uploading = function (imgsrc, itemid) {
          var el = $("#luetuShow" + itemid);
          //        $("#ifUpload"+itemid).fadeOut("fast");
          //        el.fadeIn("fast");
          el.html("<img src='" + loadingUrl + "' align='absmiddle' /> 上传中...");

          return el;
      };


      //上传时程序发生错误时，给提示，并返回上传状态

      var uploaderror = function (itemid) {
          // alert("程序异常，"+itemid+"项上传未成功。");
          //uploadinit();
          document.getElementById("picsrc").innerHTML = "<iframe src=\"upload.aspx?id=1\"  id=\"ifUpload1\"  frameborder=\"no\" scrolling=\"no\" style=\"width:60px; height:22px;\"></iframe>";
      };

      //上传成功后的处理
      var uploadsuccess = function (newpath, itemid) {
          //alert(newpath);
          document.getElementById("luetu" + itemid).value = newpath;
          document.getElementById("luetuShow" + itemid).innerHTML = "<img src='" + newpath + "'  height=\"300\" border=0 />";
          document.getElementById("picsrc" + itemid).innerHTML = "<iframe src=\"upload.aspx?id=1\" id=\"ifUpload1\"  frameborder=\"no\" scrolling=\"no\" style=\"width:60px; height:22px;\"></iframe>";

      };
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
<div id="picsrc1" style=" text-align:left; padding-left:40px;"><iframe src="upload.aspx?id=1&helpid=<%=_id %>&msgid=<%=_msgid %>&idcard=<%=_idcard %>" frameborder="0" scrolling="no" style="width: 74px; height: 30px;"></iframe></div>
<div><ul class="luetu1" id="luetuShow1" runat="server"><img src="/images/pleaseUpload.gif" /></ul></div>
<input id="luetu1" name="luetu1" type="text" style=" width:100px; display:none;" runat="server" />

    </form>
</body>
</html>
