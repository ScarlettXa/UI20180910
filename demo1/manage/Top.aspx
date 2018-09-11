<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="direct_demo.demo1.manage.Top" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE2 {font-size: 9px}
.STYLE3 {
	color: #033d61;
	font-size: 12px;
}
.td1{ font-size:12px;}
.td1 a:link{ font-size:12px;}
.td1 a:visited{ font-size:12px;}
.td1 a:hover{ font-size:12px;}
</style>
<script language="javascript">
function welcometo(){
	window.parent.document.frames["mainFrame"].document.frames[1].location.href='welcome.aspx';
}
function toUrl(url){
	window.parent.document.frames["mainFrame"].document.frames[1].location.href=url;
}
function changemenu(sid,k){
	for(var i=1;i<=k;i++){
		eval("window.parent.document.frames['mainFrame'].document.frames[0].document.getElementById('submenu" + i + "').style.display=\"none\";");
	}
	eval("window.parent.document.frames['mainFrame'].document.frames[0].document.getElementById('submenu" + sid + "').style.display=\"\";");

}
function frams(){
	window.parent.document.frames["mainFrame"].document.frames[1].location.reload();
}
</script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="70" background="/demo1/images/manage/main_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="/demo1/images/manage/main_03.gif">&nbsp;</td>
            <td width="505" background="/demo1/images/manage/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="/demo1/images/manage/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="38" background="/demo1/images/manage/main_09.gif">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="60%" height="25" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="50" height="19"><div align="center"><a href="#" onClick="welcometo();"><img src="/demo1/images/manage/main_12.gif" width="49" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="javascript:history.go(-1);"><img src="/demo1/images/manage/main_14.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="javascript:history.go(1);"><img src="/demo1/images/manage/main_16.gif" width="48" height="19" border="0"></div></td>
                    <td width="50"><div align="center"><a href="javascript:frams();"><img src="/demo1/images/manage/main_18.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="exit.aspx" target="_parent"><img src="/demo1/images/manage/main_20.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="26"><div align="center"><img src="/demo1/images/manage/main_21.gif" width="26" height="19" border="0"></div></td>
                    <td width="100"></td>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
                <td width="350" valign="bottom"  nowrap="nowrap"><div align="right"><span class="STYLE1"><span class="STYLE2"></span><script language="javascript" src="/js/ajax.js"></script>
<div id="timer"></div>
<script language=JavaScript>
var timerID = null;
var timerRunning = false;
function stopclock (){
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;}
function startclock () {
stopclock();
showtime();}
//欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
function showtime () {
var now = new Date();
var hours = now.getHours();
var minutes = now.getMinutes();
var seconds = now.getSeconds()
//var timeValue = "" +((hours >= 12) ? "下午 " : "上午 " )
//timeValue += ((hours >12) ? hours -12 :hours)
var timeValue = "" +hours
timeValue += ((minutes < 10) ? ":0" : ":") + minutes
timeValue += ((seconds < 10) ? ":0" : ":") + seconds
//document.clock.thetime.value = timeValue;
document.getElementById("timer").innerHTML="当前时间："+timeValue;
timerID = setTimeout("showtime()",1000);
timerRunning = true;}
startclock ();
</script>

<%--<script language="javascript">
setInterval("gettimer()",1000);
function gettimer(){
	var xmlHttp=getXMLRequester();
	var url="ajax_timer.aspx";
	url=url+"?timeStamp="+Math.random();
	xmlHttp.onreadystatechange=function(){
		if (xmlHttp.readyState==4 && xmlHttp.status==200)
		{
			returnstr=xmlHttp.responseText;
			document.getElementById("timer").innerHTML=returnstr;
		}
	}
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}
</script>--%>

</span></div></td>
              </tr>
            </table></td>
            <td width="21"><img src="/demo1/images/manage/main_11.gif" width="21" height="38"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="/demo1/images/manage/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="/demo1/images/manage/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="/demo1/images/manage/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>

    </table></td>
  </tr>
  <tr>
    <td height="28" background="/demo1/images/manage/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" height="28" background="/demo1/images/manage/main_32.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="22">&nbsp;</td>
            <td width="59%" valign="bottom"><div align="center" class="STYLE1"><%--当前用户：Admin--%> <a  href="password.aspx" target="I2" style=" color:#fff; text-decoration:none;"><%=_admin%></a> </div></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td class="td1" style=" text-indent:10px;">
        官方公告：
        <marquee id="affiche" align="left" behavior="scroll"  direction="left" height="20" width="90%" hspace="0" vspace="0" loop="-1" scrollamount="3" scrolldelay="10" onMouseOut="this.start()" onMouseOver="this.stop()">
            请勿转载本系统，否则会追究相关法律责任！
        </marquee>        
        <%--<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
             <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(/demo1/images/manage/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3" onClick="changemenu('1','7')">会员管理</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="/demo1/images/manage/main_34.gif" width="3" height="28"></td>
                        <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(/demo1/images/manage/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3" onClick="changemenu('2','7')">服务中心</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="/demo1/images/manage/main_34.gif" width="3" height="28"></td>
                        <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(/demo1/images/manage/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3" onClick="changemenu('3','7')">产品管理</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="/demo1/images/manage/main_34.gif" width="3" height="28"></td>
                        <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(/demo1/demo1/images/manage/manage/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3" onClick="changemenu('4','7')">财务管理</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="/demo1/images/manage/main_34.gif" width="3" height="28"></td>
                        <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(/demo1/images/manage/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3" onClick="changemenu('5','7')">数据管理</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="/demo1/images/manage/main_34.gif" width="3" height="28"></td>
                        <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(/demo1/images/manage/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3" onClick="changemenu('6','7')">站内短信</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="/demo1/images/manage/main_34.gif" width="3" height="28"></td>
                        <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(/demo1/images/manage/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3" onClick="changemenu('7','7')">公司动态</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="/demo1/images/manage/main_34.gif" width="3" height="28"></td>
            <td>&nbsp;</td>
          </tr>
        </table>--%>

        </td>
        <td width="21"><img src="/demo1/images/manage/main_37.gif" width="21" height="28"></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
