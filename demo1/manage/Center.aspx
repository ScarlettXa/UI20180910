<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Center.aspx.cs" Inherits="direct_demo.demo1.manage.Center" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
</style>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style>
<style>
.navPoint {
COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt
}
</style>
<script>
String.prototype.Right = function(len)
{

        if(isNaN(len)||len==null)
        {
                len = this.length;
        }
        else
        {
                if(parseInt(len)<0||parseInt(len)>this.length)
                {
                        len = this.length;
                }
        }
        
        return this.substring(this.length-len,this.length);
}


function switchSysBar(){

//var locate=location.href.replace('middel.php','');
//var ssrc=document.all("img1").src.replace(locate,'');
var ssrc=document.getElementById("img1").src;
//alert(ssrc.src);
//if (ssrc.src=="../images/manage/main_55.gif")
if(ssrc.indexOf("main_55.gif")>0)
{
document.getElementById("img1").src="../images/manage/main_55_1.gif";
document.getElementById("frmTitle").style.display="none"
}
else
{
document.getElementById("img1").src="../images/manage/main_55.gif";
document.getElementById("frmTitle").style.display=""
}

}
</script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed; ">
  <tr>
    <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
  <tr>
    <td width="171" id=frmTitle noWrap name="fmTitle" align="center" valign="top"><table width="171" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
      <tr>
        <td  bgcolor="#1873aa" style="width:6px;">&nbsp;</td>
        <td width="165"><iframe name="I1" height="100%" width="165" src="left.aspx" border="0" frameborder="0" scrolling="auto"> 浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></td>
      </tr>
    </table>		</td>
    <td width="6"  style="width:6px;"valign="middle" bgcolor="1873aa" onclick=switchSysBar()><SPAN class=navPoint
id=switchPoint title=关闭/打开左栏><img src="../images/manage/main_55.gif" name="img1" width=6 height=40 id=img1></SPAN></td>
    <td width="100%" align="center" valign="top"><iframe name="I2" height="100%" width="100%" border="0" frameborder="0" src="welcome.aspx" scrolling="auto"> 浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></td>
  </tr>
</table></td>
    <td width="6" bgcolor="#1873aa" style=" width:6px;">&nbsp;</td>
  </tr>
</table>
</body>
</html>