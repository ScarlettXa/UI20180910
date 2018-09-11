<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="direct_demo.ajax.upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>上传</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/interface.js"></script>
    <style type="text/css">
        *{ margin:0 0 0 0; padding:0 0 0 0; text-align:left; }
        body
        {
        	background-color:#F1F1F1;
        }
        
    </style>
    <script type="text/javascript">

        var uploadSelect = function (el) {
            el.fadeOut("show");
            parent.uploading(document.getElementById("<%=file1.ClientID %>").value, '<%=itemID %>');
            $("#<%=frmUpload.ClientID %>").submit();
        };
 	    
    </script>
</head>
<body>
    <form runat="server" id="frmUpload" method="post" enctype="multipart/form-data" style=" border:0px solid #f00; height:30px; padding:0px; margin:0px;">
      <div style="background-color:#F1F1F1; float:left;border:0px solid #f00; height:30px; padding:0px; margin:0px; border:0px solid #f00;">
      
        <a style="width:74px; height:25px; float:left; background:url(/images/sel_icon.jpg) no-repeat;"><input type="file" runat="server" id="file1" accept="image/*" style="width:70px; height:25px; margin:0; padding:0; opacity:0; filter:alpha(opacity=0);" onchange="uploadSelect($(this));" /></a>	  
      </div> 
    </form>
</body>
</html>
