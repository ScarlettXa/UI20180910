<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadUpdate.aspx.cs" Inherits="direct_demo.demo1.manage.uploadUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form runat="server" id="frmUpload" method="post" enctype="multipart/form-data">
      <div style="background-color:#F1F1F1; float:left;">
              <a href="uploadupdate.aspx">Reflash</a>
        <input type="file" runat="server" id="file1" />	
          <asp:Button ID="Button1" runat="server" Text="Submit" />
      </div>  
    </form>
</body>
</html>
