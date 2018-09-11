var start = function(fun) {
 document.onreadystatechange = function(){
  if (document.readyState=="complete" && fun)
   fun();
 }
}

function createxmlhttp()
{
 var xmlhttp;
 try
 {
  xmlhttp = new ActiveXObject('Msxml2.XMLHTTP');
 }
 catch (e)
 {
  xmlhttp = new XMLHttpRequest();
 }
 return xmlhttp;
} 

function mob()
{
    var rnd;
 var msg;
 rnd=Math.random();
 //msg = document.getElementById("zhixingInfo");
 var url = "/zhixing.aspx?rnd=" + rnd;
 var xmlhttp=new createxmlhttp();
  xmlhttp.open("GET",url,true);
  xmlhttp.send(null);

  xmlhttp.onreadystatechange=function (){
  if(xmlhttp.readyState==4  && xmlhttp.status==200)
  {
    //msg.innerHTML= xmlhttp.responseText;
   // msg.innerHTML="<iframe id=\"loginframe\" width=\"270\" height=\"136\" frameborder=\"0\" src=\"Login.aspx\" scrolling=\"auto\" allowTransparency=\"true\"></iframe>";
    xmlhttp=null;
  }
  else
  {
    // msg.innerHTML="err";
  }
  
 }
}

function mob2()
{
    var rnd;
 var msg;
 rnd=Math.random();
 //msg = $( "loginInfo" );
 var url = "HtmlManage.aspx?rnd=" + rnd;
 var xmlhttp=new createxmlhttp();
  xmlhttp.open("GET",url,true);
  xmlhttp.send(null);

  xmlhttp.onreadystatechange=function (){
  if(xmlhttp.readyState==4  && xmlhttp.status==200)
  {
    //msg.innerHTML= xmlhttp.responseText;
    //msg.innerHTML="<iframe id=\"loginframe\" width=\"270\" height=\"136\" frameborder=\"0\" src=\"Login.aspx\" scrolling=\"auto\" allowTransparency=\"true\"></iframe>";
    //msg.innerHTML="ok";
    xmlhttp=null;
  }
  else
  {
    // msg.innerHTML="err";
  }
  
 }
}

start(function (){
//$("videoshow1").className="none";
//$("videoshow2").className="video block";
mob();
//mob2();
});