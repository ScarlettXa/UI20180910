
if(top.mainFrame==null&&top.mainFrame0==null)
{
 // alert('aaa');
  location.href='/err.aspx';
}
//else
//  alert('bbb');


var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}



//var MessageText = "欢迎光临"
//var DisplayLength = 260
//var pos = 1 - DisplayLength;
//function ScrollInStatusBar(){
//var scroll = "";
//pos++;
//if (pos == MessageText.length) pos = 1 - DisplayLength;
//if (pos<0) {
//for (var i=1; i<=Math.abs(pos); i++)
//scroll = scroll + "";
//    scroll = scroll + MessageText.substring(0, DisplayLength - i + 1);
//}
//else
//  scroll = scroll + MessageText.substring(pos, pos + DisplayLength);
//window.status = scroll;
////Scrolling speed
//setTimeout("ScrollInStatusBar()",0);
//}
//ScrollInStatusBar()



function document.oncontextmenu() { 
	return false; 
}
function document.onselectstart() {
	//return false;
}
function hideinfo(){ 
	if(event.srcElement.tagName=="A"){
		window.status=event.srcElement.innerText;
	} 
} 
document.onmouseover=hideinfo;
document.onmousemove=hideinfo;
document.onmousedown=hideinfo;