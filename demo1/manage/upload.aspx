<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="direct_demo.demo1.manage.upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>上传</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/interface.js"></script>
    <style type="text/css">
        *{ margin:0 0 0 0; padding:0 0 0 0; }
        body
        {
        	background-color:#F1F1F1;
        }
        
    </style>
    <script type="text/javascript">
        
	    var uploadSelect = function(el){
		    el.fadeOut("show");		
		    parent.uploading(document.getElementById("<%=file1.ClientID %>").value,'<%=itemID %>');
		    $("#<%=frmUpload.ClientID %>").submit();
	    };
 	    
    </script>
</head>
<body>
    <form runat="server" id="frmUpload" method="post" enctype="multipart/form-data">
      <div style="background-color:#F1F1F1; float:left;">
        <input type="file" runat="server" id="file1" size="10" style="width:60px; margin:3px 0 0 0; border:0 #ffffff;" onchange="uploadSelect($(this));" />	  
      </div>  
    </form>
</body>
</html>
