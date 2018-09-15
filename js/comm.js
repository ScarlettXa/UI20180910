var ajaxUrl = "";

var asktype = navigator.userAgent.match(/.*Mobile.*/) ? "1" : "2";
//asktype = "2";
var askiphone = navigator.userAgent.match(/.*iPhone.*/) ? "1" : "0"; //Android  winphone

var requestType = getUrlParam('requestType');

var sJS = '<script src="/scripts/mtopt-2.1-min.js"></script>';
sJS += '<script src="/scripts/ui-2.0-min.js"></script>';
//sJS += '<script src="/scripts/jquery-1.11.1.min.js"></script>';
//sJS += '<script src="/Scripts/engine.js"></script>';
document.write(sJS);
(function() { var a = this, b = 0, c = [], d = {}, e = $(window), f = function() { this.init.apply(this, arguments) }; f.fn = f.prototype, f.fn.init = function(a) { var b = { clickOverlayEffect: "shake", overlayColor: "#000", overlayOpacity: .6, allowPromptBlank: !1, displayClose: !0, enableKeyPress: !0 }; if (a && "[object Object]" == Object.prototype.toString.call(a)) { var c = {}; jQuery.each(b, function(b, d) { c[b] = a[b] || d }), this.config = c } else this.config = b; this.config.enableKeyPress && i.call(this) }, f.fn.load = function(a, b, c) { if (0 !== arguments.length) { if (b = b || $.noop, c) { if (function() { for (var a in d) if (d.hasOwnProperty(a)) return !1; return !0 } ()) return k.call(this), void 0 } else { if ("[object Array]" == Object.prototype.toString.call(d[a])) return d[a].push(b), void 0; d[a] = [b]; for (var f in d) if (f !== a) return } if (1 === arguments.length && Array.prototype.push.call(arguments, b), j.call(this, "load", arguments, c) || c) { $("#BlackBox").append('<div id="BlackBoxLoad">载入中</div>'); var g = $("#BlackBoxLoad").fadeTo(0, 0).fadeTo(400, 1), h = function() { g.css({ left: (e.width() - g.width()) / 2, top: (e.height() - g.height()) / 2 }) }; h.call(this), e.resize(h) } } }, f.fn.ready = function(a) { if (0 !== arguments.length) { var b = d[a]; if (b) for (var e = 0; b.length > e; e++) { var f = b[e]; f.call(this) } delete d[a]; for (var g in d) if (d.hasOwnProperty(g)) return; if ("load" === c[0].type) { var h = this; $("#BlackBoxLoad").fadeTo(400, 0, function() { $(this).remove(), k.call(h) }) } } }, f.fn.loadClear = function(a) { a = a || $.noop; for (var b in d) d.hasOwnProperty(b) && delete d[b]; $("#BlackBoxLoad").fadeTo(400, 0), k.call(this, a) }, f.fn.alert = function() { if (0 !== arguments.length) { var e = g.apply(this, arguments); if (j.call(this, "alert", e, e[3]) || e[3]) { var f = $("#BlackBox"); f.append('<div class = "system Inner" id="alert' + o.call(this) + '"><p>' + e[0] + "</p></div>"), h.call(this, $("#alert" + o.call(this)), e[2]), l.call(this), this.config.displayClose && e[2].title && n.call(this, e[1]), m.call(this, e[1], null, e[2]) } } }, f.fn.confirm = function() { if (0 !== arguments.length) { var e = g.apply(this, arguments); if (j.call(this, "confirm", e, e[3]) || e[3]) { var f = $("#BlackBox"); f.append('<div class = "system Inner" id="confirm' + o.call(this) + '"><p>' + e[0] + "</p></div>"), h.call(this, $("#confirm" + o.call(this)), e[2]), l.call(this); var i = function() { return e[1].call(this, !0) }, k = function() { return e[1].call(this, !1) }; this.config.displayClose && e[2].title && n.call(this, k), m.call(this, i, k, e[2]) } } }, f.fn.prompt = function() { if (0 !== arguments.length) { var e = g.apply(this, arguments); if (j.call(this, "prompt", arguments, e[3]) || e[3]) { var f = e[2].verify || function() { return !0 }, i = $("#BlackBox"); i.append('<div class = "system Inner" id="prompt' + o.call(this) + '"><p>' + e[0] + '</p><input id="boxInput"></div>'), h.call(this, $("#prompt" + o.call(this)), e[2]), l.call(this); var k = $("#boxInput").focus(), p = function() { return e[1].call(this, k.val()) }, q = function() { return e[1].call(this, null) }, r = this; k.blur(function() { $(this).val($.trim($(this).val())) }), this.config.displayClose && e[2].title && n.call(this, q), e[2].verify = function() { return (r.config.allowPromptBlank || k.val()) && f.call(this, k.val()) ? !0 : (k.addClass("boxError").focus(), !1) }, m.call(this, p, q, e[2]) } } }, f.fn.popup = function(a, b, c) { if (0 !== arguments.length && (b = b || $.noop, 1 === arguments.length && Array.prototype.push.call(arguments, b), j.call(this, "popup", arguments, c) || c)) { var d = $("#BlackBox"); d.append('<div class="normal" id="popup' + o.call(this) + '">' + a + "</div>"), h.call(this, $("#popup" + o.call(this)), {}), l.call(this), b.call(this, d) } }, f.fn.boxClose = function(a) { var b = $("#" + o.call(this)), c = this; b[0] && b.fadeOut(400, function() { $(this).remove(), k.call(c, a) }) }, f.fn.boxShake = function() { var a = $("#" + o.call(this)); if (a[0]) for (var b = a.offset().left, c = 1; 4 >= c; c++) a.animate({ left: b - (12 - 3 * c) }, 50), a.animate({ left: b + 2 * (12 - 3 * c) }, 50) }; var g = function(a, b, c) { return b = b || $.noop, $.isFunction(b) || (c = b, b = $.noop), c = c || {}, 1 === arguments.length && Array.prototype.push.call(arguments, b, c), 2 === arguments.length && Array.prototype.push.call(arguments, c), arguments }, h = function(a, b) { a.wrap('<div class="BlackBoxContent" draggable="true" id="' + o.call(this) + '"></div>'); var c = $("#" + o.call(this)).fadeTo(0, 0).fadeTo(400, 1), d = c.width(), f = c.height(), g = function() { c.css({ left: (e.width() - d) / 2 + "px", top: (e.height() - f - 80) / 2 + "px" }) }; if (b.title) { c.prepend('<p class="title">' + b.title + "</p>"); var j, k, l, m, n, p, h = c, i = c.find(".title"), q = function(a) { a.stopPropagation(), a.preventDefault() }, r = function(a) { $(document).bind("mousemove", s), $(document).bind("mouseup", t), j = n = parseFloat(h.css("left")), k = p = parseFloat(h.css("top")), l = a.pageX, m = a.pageY, q(a) }, s = function(a) { n = j + a.pageX - l, p = k + a.pageY - m, h.css("left", n), h.css("top", p), q(a) }, t = function(a) { $(document).unbind("mousemove", s), $(document).unbind("mouseup", t), q(a) }; i.bind("mousedown", r) } e.resize(g), g.call(this) }, i = function() { var a = this; $(document).bind("keydown.fb", function(b) { var c = $(".BlackBoxContent"); if (c[0]) if (13 == b.keyCode) c.find(".submit").click(); else if (27 == b.keyCode) { var d = c.find(".close")[0] || c.find(".cancel")[0] || c.find(".submit")[0]; d ? $(d).click() : a.boxClose.call(a) } }) }, j = function(a, d, f) { if (b += 1, f || c.push({ id: b, type: a, args: d }), 1 !== c.length) return !1; $("#BlackBox")[0] || $("body").append('<div id="BlackBox"><div id="BBOverlay"></div></div>'); var g = $("#BBOverlay"), h = this.config; f || g.css({ background_color: h.overlayColor }).fadeTo(0, 0).fadeTo(400, h.overlayOpacity); var i = function() { g.width(e.width() + "px").height(e.height() + "px") }; return i.call(this), e.resize(i), !0 }, k = function(a, b) { if (a && a.call(this), b ? c.length = 0 : c.shift(), $("#BBOverlay").unbind("click"), 0 == c.length) { var d = $("#BlackBox"); if (!d[0]) return; d.fadeOut(400, function() { $(this).remove() }) } else Array.prototype.push.call(c[0].args, !0), this[c[0].type].apply(this, c[0].args) }, l = function() { var a = this.config.clickOverlayEffect, b = $("#" + o.call(this)), c = $("#BBOverlay"), d = this; return "close" === a ? (c.click(function() { var a = b.find(".close")[0] || b.find(".cancel")[0] || b.find(".submit")[0]; a ? $(a).click() : d.boxClose.call(d) }), void 0) : (c.click(function() { var a = b.find("input"); 1 === a.length && a.focus(), d.boxShake.call(d) }), void 0) }, m = function(a, b, c) { if (0 !== arguments.length) { var d = $("#" + o.call(this)), e = this; d.find(".Inner").append('<div id="BlackBoxAction"></div>'); var f = $("#BlackBoxAction"); if (b && (f.append('<button class="cancel">取消</button>'), f.find(".cancel").click(function() { e.boxClose.call(e, b) })), a) { var g = c.value || "确定"; f.append('<button class="submit">' + g + "</button>"), f.find(".submit").click(function() { !c.verify || c.verify.call(e) ? e.boxClose.call(e, a) : e.boxShake.call(e) }) } } }, n = function(a) { var b = $("#" + o.call(this)), c = this; b.append('<div class="close">x</div>'), b.find(".close").click(function() { c.boxClose.call(c, a) }) }, o = function() { var a = c[0].id; return "_box_" + a }; a.BlackBox = f }).call(window);

if (typeof (ajaxUrl) == "undefined" || ajaxUrl == null)
    ajaxUrl = '';

  function ifConfirm()
  {
    if(!confirm('\n特别提示！？\n\n请确认该操作！'))
       return  false;
     showWait();
      return true;
      
  }
  function ifConfirm2()
  {
     showWait();
      return true;

  }
//  mbox = function(content) {
//      var box = new BlackBox();
//      box.alert(content, { title: '系统消息', value: "确定" });
  //  };

  mbox = function (content) {
      
    if (asktype == '1' && requestType == 'Mobile'){
        alert(content);
    } else {
        mpi.news(content, 3000);
    }      
      
  };

//  tbox = function(content, toURL) {   //提示消息后，跳转到某页面
//      var box = new BlackBox();
//      box.alert(content, function() {
//          window.location.replace(toURL);
//      }, { title: '系统消息', value: "确定" });
  //  };

  tbox = function (content, toURL) {   //提示消息后，跳转到某页面
      mpi.news(content, 999999, true);
      setTimeout(function () {
          m.redirect(toURL);// window.location.href = toURL; // m.redirect(toURL);
      }, 2000);
      setTimeout(function () {
          window.location.reload();
      }, 3000);
  };

  tpbox = function(content, toURL) {   //提示消息后，跳转到某页面
      var box = new BlackBox();
      box.alert(content, function() {
          window.parent.location.href = toURL;
      }, { title: '系统消息', value: "确定" });
  };

  pbox = function(path) {
      var box = new BlackBox();
      //    box.alert('<div style="width: 300px;padding: 20px 10px;background: #f5f5f5;"> <img src="' + path + '" />' +
      box.alert('<div> <img src="' + path + '" />' +
        '</div>', { title: '图片', value: "确定" });
  };


  //cbox = function (content) {
  //    var box = new BlackBox();
  //    box.confirm(content, function (data) {
  //        if (data) {
  //            return true;
  //        } else {
  //            return false;
  //        }
  //    });
  //};



  function showWait()
  {
    //document.body.innerHTML=" <div style=\"text-align:center; padding-top:50px;\">......<br><img src=\"/images/waiting2.gif\" /></div>";
    document.getElementById("mainbox1").style.display="none";
    //document.getElementById("mainbox2").innerHTML="<div style=\"text-align:center; padding-top:50px;\">......<br><img src=\"/images/waiting2.gif\" /></div>";
    document.getElementById("mainbox2").style.display="";
  }
  
function chg_frmMenu(a){
	//eval("top."+c+"_mem_index").body.location=a+"&league_id="+b;
	//if(top.swShowLoveI)b=3;
	//if(top.showtype=='hgft')b=3;
	//alert(a);
	parent.mainFrame.location=a;//+"&league_id="+b
}
//$.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=GetNewsInfo&jstype=jsonp&callback=?",
//    function(data) {
//        $("#content").html(data.result);
//    }
//);

////获取URL参数
//$(function() {

//    //方法二：
//    (function($) {
//        $.getUrlParam = function(name) {
//            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
//            var r = window.location.search.substr(1).match(reg);
//            if (r != null) return unescape(r[2]); return null;
//        }
//    })(jQuery);

//    //方法二：
//    //var xx = $.getUrlParam('reurl');

//    //方法一：
//    // var xx = getUrlParam('reurl');


//    //alert(xx);

//});

//方法一：
//获取url中的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}


function requestFormValue(oid) {
    var val1 = $("#" + oid).val();
    if (typeof (val1) == "undefined")
        val1 = "";
    return val1;
}

Date.prototype.format = function(format) {
    var o = {
        "M+": this.getMonth() + 1, //month 
        "d+": this.getDate(), //day 
        "h+": this.getHours(), //hour 
        "m+": this.getMinutes(), //minute 
        "s+": this.getSeconds(), //second 
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter 
        "S": this.getMilliseconds() //millisecond 
    }

    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }

    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
}

//使用方法 
//var now = new Date();
//var nowStr = now.format("yyyy-MM-dd hh:mm:ss");
//        //使用方法2: 
//        var testDate = new Date();
//        var testStr = testDate.format("YYYY年MM月dd日hh小时mm分ss秒");
//        alert(testStr);
//        //示例： 
//        alert(new Date().Format("yyyy年MM月dd日"));
//        alert(new Date().Format("MM/dd/yyyy"));
//        alert(new Date().Format("yyyyMMdd"));
//        alert(new Date().Format("yyyy-MM-dd hh:mm:ss"));
  
function browserRedirect(){
if (!(asktype == '1')){
//!(asktype == '1')
     // window.location.href="http://demo1.0512online.com";
      window.location.href="http://001.1u68.com";
    }
//else
//  window.location.href="http://001.1u68.com";
}  


///////////output begin///////////////
function method1(tableid) {//整个表格拷贝到EXCEL中 
   var curTbl = document.getElementById(tableid); 
   var oXL = new ActiveXObject("Excel.Application"); 
    //创建AX对象excel 
var oWB = oXL.Workbooks.Add(); 
   //获取workbook对象 
         var oSheet = oWB.ActiveSheet; 
         oSheet.Cells(1,1).Value="heelo"; 
         alert('--');
     //激活当前sheet 
     var sel = document.body.createTextRange(); 
    sel.moveToElementText(curTbl); 
    //把表格中的内容移到TextRange中 
    sel.select(); 
    //全选TextRange中内容 
    sel.execCommand("Copy"); 
     //复制TextRange中内容 
   oSheet.Paste(); 
    //粘贴到活动的EXCEL中       
     oXL.Visible = true; 
     //设置excel可见属性 
} 
function method2(tableid) //读取表格中每个单元到EXCEL中 
{ 
     var curTbl = document.getElementById(tableid); 
    var oXL = new ActiveXObject("Excel.Application"); 
    //创建AX对象excel 
     var oWB = oXL.Workbooks.Add(); 
    //获取workbook对象 
     var oSheet = oWB.ActiveSheet; 
     //激活当前sheet 
     var Lenr = curTbl.rows.length; 
     //取得表格行数 
    for (i = 0; i < Lenr; i++) 
     { 
        var Lenc = curTbl.rows(i).cells.length; 
         //取得每行的列数 
         for (j = 0; j < Lenc; j++) 
        { 
            oSheet.Cells(i + 1, j + 1).value = curTbl.rows(i).cells(j).innerText; 
             //赋值 
       } 
    } 
    oXL.Visible = true; 
     //设置excel可见属性 
} 
function getXlsFromTbl(inTblId, inWindow) { 
     try { 
         var allStr = ""; 
        var curStr = ""; 
        //alert("getXlsFromTbl"); 
       if (inTblId != null && inTblId != "" && inTblId != "null") { 
            curStr = getTblData(inTblId, inWindow); 
       } 
       if (curStr != null) { 
            allStr += curStr; 
        } 
        else { 
            alert("你要导出的表不存在！"); 
            return; 
       } 
        var fileName = getExcelFileName(); 
        doFileExport(fileName, allStr); 
    } 
    catch(e) { 
        alert("导出发生异常:" + e.name + "->" + e.description + "!"); 
   } 
} 
function getTblData(inTbl, inWindow) { 
    var rows = 0; 
    //alert("getTblData is " + inWindow); 
    var tblDocument = document; 
    if (!!inWindow && inWindow != "") { 
        if (!document.all(inWindow)) { 
           return null; 
       } 
       else { 
          tblDocument = eval(inWindow).document; 
        } 
    } 
    var curTbl = tblDocument.getElementById(inTbl); 
    var outStr = ""; 
    if (curTbl != null) { 
        for (var j = 0; j < curTbl.rows.length; j++) { 
            //alert("j is " + j); 
            for (var i = 0; i < curTbl.rows[j].cells.length; i++) { 
               //alert("i is " + i); 
                if (i == 0 && rows > 0) { 
                   outStr += " \t"; 
                    rows -= 1; 
                } 
               outStr += curTbl.rows[j].cells[i].innerText + "\t"; 
               if (curTbl.rows[j].cells[i].colSpan > 1) { 
                    for (var k = 0; k < curTbl.rows[j].cells[i].colSpan - 1; k++) { 
                        outStr += " \t"; 
                    } 
                } 
               if (i == 0) { 
                   if (rows == 0 && curTbl.rows[j].cells[i].rowSpan > 1) { 
                        rows = curTbl.rows[j].cells[i].rowSpan - 1; 
                    } 
                } 
            } 
            outStr += "\r\n"; 
        } 
    } 
    else { 
        outStr = null; 
        alert(inTbl + "不存在!"); 
    } 
    return outStr; 
} 
function getExcelFileName() { 
    var d = new Date(); 
    var curYear = d.getYear(); 
    var curMonth = "" + (d.getMonth() + 1); 
   var curDate = "" + d.getDate(); 
    var curHour = "" + d.getHours(); 
    var curMinute = "" + d.getMinutes(); 
    var curSecond = "" + d.getSeconds(); 
   if (curMonth.length == 1) { 
       curMonth = "0" + curMonth; 
   } 
   if (curDate.length == 1) { 
        curDate = "0" + curDate; 
   } 
   if (curHour.length == 1) { 
        curHour = "0" + curHour; 
    } 
    if (curMinute.length == 1) { 
       curMinute = "0" + curMinute; 
    } 
    if (curSecond.length == 1) { 
        curSecond = "0" + curSecond; 
    } 
    var fileName = "file" + "_" + curYear + curMonth + curDate + "_" 
            + curHour + curMinute + curSecond + ".csv"; //csv
    //alert(fileName); 
    return fileName; 
} 
function doFileExport(inName, inStr) { 
    var xlsWin = null; 
    if (!!document.all("glbHideFrm")) { 
        xlsWin = glbHideFrm; 
    } 
   else { 
        var width = 6; 
        var height = 4; 
       var openPara = "left=" + (window.screen.width / 2 - width / 2) 
                + ",top=" + (window.screen.height / 2 - height / 2) 
                + ",scrollbars=no,width=" + width + ",height=" + height; 
        xlsWin = window.open("", "_blank", openPara); 
    } 
    xlsWin.document.write(inStr); 
    xlsWin.document.close(); 
    xlsWin.document.execCommand('Saveas', true, inName); 
   xlsWin.close(); 
}


/////////////end//////////////

function emailCheck(str) {
    var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    if (re.test(str)) {
        return true;
    } else {
        //alert('请输入有效的邮箱！' + str);
        // document.getElementById("txtEmail").focus();
        return false;
    }
} 


function provincechange_a1()
{
  var province  = Utils.trim($("#province").val());
  document.getElementById('city').innerHTML='';
  document.getElementById('area').innerHTML='';
  var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择城市";
	document.getElementById('city').appendChild(opt);
	var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择区县";
	document.getElementById('area').appendChild(opt);
  var msg = '';
  if (province == "")
  {
	$("#province_notice").text("请输入选择省份");
	msg = 'province';
  }
  
  if(msg != ""){
	$("#reg_notice").text("");
	return false;
  }
  
  $("#province_notice").text("");
  
  $.ajax({
	    type: "POST",
	    url: "/ajax_getcity.php",
		data: "act=getcity&father="+province,
		dataType: "text",
		beforeSend: function(){
		    $("#reg_notice").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
		},
		success: function(data){
			var dataary=data.split(':');
			if(dataary[0].indexOf('send_success')!=-1){
					var dataary1=dataary[1].split('|');
					var dataary2=dataary1[0].split(',');
					var dataary3=dataary1[1].split(',');
					for (var i=0;i<dataary2.length;i++){
						var opt=document.createElement("option");
						opt.value=dataary2[i];
						opt.innerText=dataary3[i];
						document.getElementById('city').appendChild(opt);
					}
				    $("#reg_notice").text("城市获取成功");
				  }else{
				    $("#reg_notice").text("出错了！");
			}
		}
	});
}

function citychange_a1()
{
  var city  = Utils.trim($("#city").val());
  document.getElementById('area').innerHTML='';
  var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择区县";
	document.getElementById('area').appendChild(opt);
  var msg = '';
  if (city == "")
  {
	$("#province_notice").text("请输入选择城市");
	msg = 'city';
  }
  
  if(msg != ""){
	$("#reg_notice").text("");
	return false;
  }
  
  $("#province_notice").text("");
  
  $.ajax({
	    type: "POST",
	    url: "/ajax_getarea.php",
		data: "act=getarea&father="+city,
		dataType: "text",
		beforeSend: function(){
		    $("#reg_notice").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
		},
		success: function(data){
			var dataary=data.split(':');
if(dataary[0].indexOf('send_success')!=-1){
					var dataary1=dataary[1].split('|');
					var dataary2=dataary1[0].split(',');
					var dataary3=dataary1[1].split(',');
					for (var i=0;i<dataary2.length;i++){
						var opt=document.createElement("option");
						opt.value=dataary2[i];
						opt.innerText=dataary3[i];
						document.getElementById('area').appendChild(opt);
					}
				    $("#reg_notice").text("县区获取成功");
				    }else{
				    $("#reg_notice").text("出错了！");
			}
		}
	});
}

function bankBind(obj1, obj_notice,ovalue) {
    var opt = document.createElement("option");
//    opt.value = "";
//    opt.innerText = "请选择省份";
    //    document.getElementById(obj_province).appendChild(opt);
    $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
    document.getElementById(obj1).innerHTML = '';

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getBank&jstype=jsonp&callback=?",
    function(data) {
        var dataary1 = data.list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj1).appendChild(opt);
        }
        $("#" + obj1).val(ovalue);
        $("#" + obj_notice).text(""); //获取成功     

    }
);

}



function getXieYi(obj1, obj_notice, ovalue) {
    var opt = document.createElement("option");
    //    opt.value = "";
    //    opt.innerText = "请选择省份";
    //    document.getElementById(obj_province).appendChild(opt);
    $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
    document.getElementById(obj1).innerHTML = '';

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getBank&jstype=jsonp&callback=?",
    function (data) {
        var dataary1 = data.list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj1).appendChild(opt);
        }
        $("#" + obj1).val(ovalue);
        $("#" + obj_notice).text(""); //获取成功     

    }
);

}



function serviceBind(obj1, obj_notice, ovalue) {
    var opt = document.createElement("option");
    //    opt.value = "";
    //    opt.innerText = "请选择省份";
    //    document.getElementById(obj_province).appendChild(opt);
    $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
    document.getElementById(obj1).innerHTML = '';

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getService&jstype=jsonp&callback=?",
    function (data) {
        var dataary1 = data.list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj1).appendChild(opt);
        }
        $("#" + obj1).val(ovalue);
        $("#" + obj_notice).text(""); //获取成功     

    }
);
}

function jiBieBind(obj1, obj_notice, ovalue) {
    var opt = document.createElement("option");
//    opt.value = "";
//    opt.innerText = "请选择省份";
    //    document.getElementById(obj_province).appendChild(opt);
    $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
    document.getElementById(obj1).innerHTML = '';
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getHuiyuanType&jstype=jsonp&callback=?",
    function(data) {
                    var dataary1 = data.list.split('|');
                    var dataary2 = dataary1[0].split(',');
                    var dataary3 = dataary1[1].split(',');
                    for (var i = 0; i < dataary2.length; i++) {
                        var opt = document.createElement("option");
                        opt.value = dataary2[i];
                        opt.innerText = dataary3[i];
                        document.getElementById(obj1).appendChild(opt);
                    }
                    $("#" + obj1).val(ovalue);
                    $("#" + obj_notice).text(""); //获取成功

    }
);
    
//    $.ajax({
//        type: "GET",
//        url: "/ajax/handler.aspx",
//        data: "type=getjibie",
//        dataType: "text",
//        beforeSend: function() {
//           // $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
//        },
//        success: function(data) {
//            var dataary = data.split(':');
//            if (dataary[0].indexOf('send_success') != -1) {
//                var dataary1 = dataary[1].split('|');
//                var dataary2 = dataary1[0].split(',');
//                var dataary3 = dataary1[1].split(',');
//                for (var i = 0; i < dataary2.length; i++) {
//                    var opt = document.createElement("option");
//                    opt.value = dataary2[i];
//                    opt.innerText = dataary3[i];
//                    document.getElementById(obj1).appendChild(opt);
//                }
//                $("#" + obj1).val(ovalue);
//                $("#" + obj_notice).text(""); //获取成功
//            } else {
//                $("#" + obj_notice).text("出错了！");
//            }
//        }
//    });
            }


            function financeBind(obj1, obj_notice, ovalue) {
                var opt = document.createElement("option");
                //    opt.value = "";
                //    opt.innerText = "请选择省份";
                //    document.getElementById(obj_province).appendChild(opt);
                $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
                document.getElementById(obj1).innerHTML = '';
                $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getFinanceProduct&jstype=jsonp&callback=?",
    function (data) {
        var dataary1 = data.list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj1).appendChild(opt);
        }
        $("#" + obj1).val(ovalue);
        $("#" + obj_notice).text(""); //获取成功

    }
);

            }

function provinceBind(obj_province, obj_city, obj_area, obj_notice, ovalue1, ovalue2, ovalue3) {
    var opt = document.createElement("option");
    opt.value = "";
    opt.innerText = "请选择省份";
    document.getElementById(obj_province).innerHTML = '';
    document.getElementById(obj_province).appendChild(opt);
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getProvince&jstype=jsonp&callback=?",
    function(data) {
        var list = data.list
        var dataary1 = list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj_province).appendChild(opt);
        }
        $("#" + obj_province).val(ovalue1);
        $("#" + obj_notice).text(""); //获取成功
        provincechange2(obj_province, obj_city, obj_area, obj_notice, ovalue2, ovalue3)
        return true;
    }
);

}

function provincechange(obj_province,obj_city,obj_area,obj_notice)
{
  var province  = Utils.trim($("#"+obj_province).val());
  document.getElementById(obj_city).innerHTML='';
  document.getElementById(obj_area).innerHTML='';
  var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择城市";
	document.getElementById(obj_city).appendChild(opt);
	var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择区县";
	document.getElementById(obj_area).appendChild(opt);
  var msg = '';
  if (province == "")
  {
	//$("#province_notice").text("请输入选择省份");
	msg = 'province';
  }

  $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
  if(msg != ""){
	$("#"+obj_notice).text("");
	return false;
  }

  //$("#province_notice").text("");
  $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getCity&jstype=jsonp&callback=?&father=" + province,
    function(data) {
  var dataary1 = data.list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj_city).appendChild(opt);
        }
        $("#" + obj_notice).text(""); //城市获取成功
    }
);

}


function provincechange2(obj_province, obj_city, obj_area, obj_notice, ovalue1, ovalue2) {

    var province = Utils.trim($("#" + obj_province).val());
    document.getElementById(obj_city).innerHTML = '';
    document.getElementById(obj_area).innerHTML = '';
    var opt = document.createElement("option");
    opt.value = "";
    opt.innerText = "请选择城市";
    document.getElementById(obj_city).appendChild(opt);
    var opt = document.createElement("option");
    opt.value = "";
    opt.innerText = "请选择区县";
    document.getElementById(obj_area).appendChild(opt);
    var msg = '';
    if (province == "") {
        //$("#province_notice").text("请输入选择省份");
        msg = 'province';
    }
    $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
    if (msg != "") {
        $("#" + obj_notice).text("");
        return false;
    }

    //$("#province_notice").text("");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getCity&jstype=jsonp&callback=?&father=" + province,
    function(data) {
    var dataary1 = data.list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj_city).appendChild(opt);
        }
        $("#" + obj_city).val(ovalue1);
        $("#" + obj_notice).text(""); //城市获取成功
        citychange2(obj_province, obj_city, obj_area, obj_notice, ovalue2);
        return true;
    }
);

//    $.ajax({
//        type: "GET",
//        url: "/ajax/getcity.aspx",
//        data: "act=getcity&father=" + province,
//        dataType: "text",
//        beforeSend: function() {
//            $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
//        },
//        success: function(data) {
//            var dataary = data.split(':');
//            if (dataary[0].indexOf('send_success') != -1) {
//                var dataary1 = dataary[1].split('|');
//                var dataary2 = dataary1[0].split(',');
//                var dataary3 = dataary1[1].split(',');
//                for (var i = 0; i < dataary2.length; i++) {
//                    var opt = document.createElement("option");
//                    opt.value = dataary2[i];
//                    opt.innerText = dataary3[i];
//                    document.getElementById(obj_city).appendChild(opt);
//                }
//                $("#" + obj_city).val(ovalue1);
//                $("#" + obj_notice).text(""); //城市获取成功
//                citychange2(obj_province,obj_city,obj_area,obj_notice,ovalue2);
//                return true;
//            } else {
//                $("#" + obj_notice).text("出错了！");
//            }
//        }
//    });
}

function citychange(obj_province,obj_city,obj_area,obj_notice)
{
  var city  = Utils.trim($("#"+obj_city).val());
  document.getElementById(obj_area).innerHTML='';
  var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择区县";
	document.getElementById(obj_area).appendChild(opt);
  var msg = '';
  if (city == "")
  {
	//$("#province_notice").text("请输入选择城市");
	msg = 'city';
  }
  $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
  if(msg != ""){
	$("#"+obj_notice).text("");
	return false;
  }
  
  //$("#province_notice").text("");
  $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getArea&jstype=jsonp&callback=?&father=" + city,
    function(data) {
        var dataary1 = data.list.split('|');
        var dataary2 = dataary1[0].split(',');
        var dataary3 = dataary1[1].split(',');
        for (var i = 0; i < dataary2.length; i++) {
            var opt = document.createElement("option");
            opt.value = dataary2[i];
            opt.innerText = dataary3[i];
            document.getElementById(obj_area).appendChild(opt);
        }
        $("#" + obj_notice).text(""); //县区获取成功
    }
);
//  $.ajax({
//	    type: "POST",
//	    url: "/ajax/getarea.aspx",
//		data: "act=getarea&father="+city,
//		dataType: "text",
//		beforeSend: function(){
//		    $("#"+obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
//		},
//		success: function(data){
//			var dataary=data.split(':');
//if(dataary[0].indexOf('send_success')!=-1){
//					var dataary1=dataary[1].split('|');
//					var dataary2=dataary1[0].split(',');
//					var dataary3=dataary1[1].split(',');
//					for (var i=0;i<dataary2.length;i++){
//						var opt=document.createElement("option");
//						opt.value=dataary2[i];
//						opt.innerText=dataary3[i];
//						document.getElementById(obj_area).appendChild(opt);
//					}
//				    $("#"+obj_notice).text("");//县区获取成功
//				    }else{
//				    $("#"+obj_notice).text("出错了！");
//			}
//		}
//	});
}



function citychange2(obj_province, obj_city, obj_area, obj_notice, ovalue) {
    //alert(obj_province+"_"+ovalue);
    var city = Utils.trim($("#" + obj_city).val());
    document.getElementById(obj_area).innerHTML = '';
    var opt = document.createElement("option");
    opt.value = "";
    opt.innerText = "请选择区县";
    document.getElementById(obj_area).appendChild(opt);
    var msg = '';
    if (city == "") {
        //$("#province_notice").text("请输入选择城市");
        msg = 'city';
    }
    $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
    if (msg != "") {
        $("#" + obj_notice).text("");
        return false;
    }

    $("#province_notice").text("");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getArea&jstype=jsonp&callback=?&father=" + city,
        function(data) {
            var dataary1 = data.list.split('|');
            var dataary2 = dataary1[0].split(',');
            var dataary3 = dataary1[1].split(',');
            for (var i = 0; i < dataary2.length; i++) {
                var opt = document.createElement("option");
                opt.value = dataary2[i];
                opt.innerText = dataary3[i];
                document.getElementById(obj_area).appendChild(opt);
            }
            $("#" + obj_area).val(ovalue);
            $("#" + obj_notice).text(""); //县区获取成功
        }
    );
//    $.ajax({
//        type: "POST",
//        url: "/ajax/getarea.aspx",
//        data: "act=getarea&father=" + city,
//        dataType: "text",
//        beforeSend: function() {
//            $("#" + obj_notice).html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
//        },
//        success: function(data) {
//            var dataary = data.split(':');
//            if (dataary[0].indexOf('send_success') != -1) {
//                var dataary1 = dataary[1].split('|');
//                var dataary2 = dataary1[0].split(',');
//                var dataary3 = dataary1[1].split(',');
//                for (var i = 0; i < dataary2.length; i++) {
//                    var opt = document.createElement("option");
//                    opt.value = dataary2[i];
//                    opt.innerText = dataary3[i];
//                    document.getElementById(obj_area).appendChild(opt);
//                }
//                $("#" + obj_area).val(ovalue);
//                $("#" + obj_notice).text(""); //县区获取成功
//                
//            } else {
//                $("#" + obj_notice).text("出错了！");
//            }
//        }
//    });
}



function class1change()
{
  var class_1  = Utils.trim($("#class1").val());
  document.getElementById('class2').innerHTML='';
  document.getElementById('class3').innerHTML='';
  document.getElementById("class2").style.display="none";
  document.getElementById("class3").style.display="none";
  var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择";
	document.getElementById('class2').appendChild(opt);
	var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择";
	document.getElementById('class3').appendChild(opt);
  var msg = '';
  
  $.ajax({
	    type: "POST",
	    url: "/ajax/getclass.aspx",
		data: "act=getclass&preid="+class_1,
		dataType: "text",
		beforeSend: function(){
		    $("#reg_notice").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
		},
		success: function(data){
			var dataary=data.split(':');
			if(dataary[0].indexOf('send_success')!=-1){
					var dataary1=dataary[1].split('|');
					var dataary2=dataary1[0].split(',');
					var dataary3=dataary1[1].split(',');
					if(dataary2[0]!="")
				    	document.getElementById("class2").style.display="";
					for (var i=0;i<dataary2.length;i++){
						var opt=document.createElement("option");
						opt.value=dataary2[i];
						opt.innerText=dataary3[i];
						document.getElementById('class2').appendChild(opt);
					}
				    $("#reg_notice").text("");//获取成功
				  }else{
				    $("#reg_notice").text("出错了！");
			}
		}
	});
}


function class2change()
{
  var class_2  = Utils.trim($("#class2").val());
  document.getElementById('class3').innerHTML='';
  document.getElementById("class3").style.display="none";
  var opt=document.createElement("option");
	opt.value="";
	opt.innerText="请选择";
	document.getElementById('class3').appendChild(opt);
  var msg = '';
//  if (city == "")
//  {
//	$("#province_notice").text("请输入选择城市");
//	msg = 'city';
//  }
  
//  if(msg != ""){
//	$("#reg_notice").text("");
//	return false;
//  }
  
  //$("#province_notice").text("");
  
  $.ajax({
	    type: "POST",
	    url: "/ajax/getclass.aspx",
		data: "act=getclass&preid="+class_2,
		dataType: "text",
		beforeSend: function(){
		    $("#reg_notice").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
		},
		success: function(data){
			var dataary=data.split(':');
if(dataary[0].indexOf('send_success')!=-1){
					var dataary1=dataary[1].split('|');
					var dataary2=dataary1[0].split(',');
					var dataary3=dataary1[1].split(',');
					if(dataary2[0]!="")
				    	document.getElementById("class3").style.display="";
					for (var i=0;i<dataary2.length;i++){
						var opt=document.createElement("option");
						opt.value=dataary2[i];
						opt.innerText=dataary3[i];
						document.getElementById('class3').appendChild(opt);
					}
				    $("#reg_notice").text("");//获取成功
				    }else{
				    $("#reg_notice").text("出错了！");
			}
		}
	});
}

function webClass1change() {
    var class_1 = Utils.trim($("#class1").val());
    document.getElementById('class2').innerHTML = '';
    document.getElementById('class3').innerHTML = '';
    document.getElementById("class2").style.display = "none";
    document.getElementById("class3").style.display = "none";
    var opt = document.createElement("option");
    opt.value = "";
    opt.innerText = "请选择";
    document.getElementById('class2').appendChild(opt);
    var opt = document.createElement("option");
    opt.value = "";
    opt.innerText = "请选择";
    document.getElementById('class3').appendChild(opt);
    var msg = '';
    $.ajax({
        type: "POST",
        url: "/ajax/getclass.aspx",
        data: "act=getWebClass&preid=" + class_1,
        dataType: "text",
        beforeSend: function () {
            $("#reg_notice").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
        },
        success: function (data) {
            var dataary = data.split(':');
            if (dataary[0].indexOf('send_success') != -1) {
                var dataary1 = dataary[1].split('|');
                var dataary2 = dataary1[0].split(',');
                var dataary3 = dataary1[1].split(',');
                if (dataary2[0] != "")
                    document.getElementById("class2").style.display = "";
                for (var i = 0; i < dataary2.length; i++) {
                    var opt = document.createElement("option");
                    opt.value = dataary2[i];
                    opt.innerText = dataary3[i];
                    document.getElementById('class2').appendChild(opt);
                }
                $("#reg_notice").text(""); //获取成功
            } else {
                $("#reg_notice").text("出错了！");
            }
        }
    });
}


function webClass2change() {
    var class_2 = Utils.trim($("#class2").val());
    document.getElementById('class3').innerHTML = '';
    document.getElementById("class3").style.display = "none";
    var opt = document.createElement("option");
    opt.value = "";
    opt.innerText = "请选择";
    document.getElementById('class3').appendChild(opt);
    var msg = '';
    //  if (city == "")
    //  {
    //	$("#province_notice").text("请输入选择城市");
    //	msg = 'city';
    //  }

    //  if(msg != ""){
    //	$("#reg_notice").text("");
    //	return false;
    //  }

    //$("#province_notice").text("");

    $.ajax({
        type: "POST",
        url: "/ajax/getclass.aspx",
        data: "act=getWebClass&preid=" + class_2,
        dataType: "text",
        beforeSend: function () {
            $("#reg_notice").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
        },
        success: function (data) {
            var dataary = data.split(':');
            if (dataary[0].indexOf('send_success') != -1) {
                var dataary1 = dataary[1].split('|');
                var dataary2 = dataary1[0].split(',');
                var dataary3 = dataary1[1].split(',');
                if (dataary2[0] != "")
                    document.getElementById("class3").style.display = "";
                for (var i = 0; i < dataary2.length; i++) {
                    var opt = document.createElement("option");
                    opt.value = dataary2[i];
                    opt.innerText = dataary3[i];
                    document.getElementById('class3').appendChild(opt);
                }
                $("#reg_notice").text(""); //获取成功
            } else {
                $("#reg_notice").text("出错了！");
            }
        }
    });
}



function getUserName(othis){
//alert(othis);
    username=document.getElementById(othis).value;
	jQuery.ajax({
		url: '/ajax/Handler.ashx',
		data: 'type=1&username='+username+'&rand='+Math.round(Math.random()*10000),
		type: 'GET',
		beforeSend: function() {},
		error: function(request) {},
		success: function(data) {
		    if(data!="")
		    {
			  //$("#glname").html(data);
			  //document.getElementById(othis).focus();
			  document.getElementById("glname").value=data;
			}
			else
			{
			 // $("#messageUserName").html('');
			 alert("服务人不存在");
			  }
		}
	});
}


function getUserName2(oid1, showid1, msgErr, msgRight) {
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=GetUserName&jstype=jsonp&callback=?&UserName=" + $("#" + oid1).val(),
    function(value) {
        if (value.result == "nouser") {
            document.getElementById(showid1).innerHTML = msgErr;
            return false;
        } else {
            if (msgRight == "")
                document.getElementById(showid1).innerHTML = value.result;
            else
                document.getElementById(showid1).innerHTML = msgRight;
            return;
        }

    }
);


//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "GetUserName", UserName: $("#" + oid1).val() }
//    , function(value, textStatus) {
//        if (value.result == "nouser") {
//            document.getElementById(showid1).innerHTML = msgErr;
//            return false;
//        } else {
//            if (msgRight == "")
//                document.getElementById(showid1).innerHTML = value.result;
//            else
//                document.getElementById(showid1).innerHTML = msgRight;
//            return;
//        }
//    }, "json");
}

function chkUserName(othis){
    username=document.getElementById(othis).value;
	jQuery.ajax({
		url: '/ajax/Handler.ashx',
		data: 'type=2&username='+username+'&rand='+Math.round(Math.random()*10000),
		type: 'GET',
		beforeSend: function() {},
		error: function(request) {},
		success: function(data) {
		    if(data!="")
		    {
		      alert("该账号已经存在");
			  //$("#glname").html(data);
			  //document.getElementById(othis).focus();
			 // document.getElementById("glname").value=data;
			}
			else
			{
			 // $("#messageUserName").html('');
			// alert("服务人不存在");
			  }
		}
	});
}

function getMBQuestion(oid) {
    var username = $("#"+oid).val();
    $("#txtErrinfo").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getQuestion&jstype=jsonp&callback=?&UserName=" + username,
    function(value) {
    if (value.result == "success") {
        $("#txtQuestion").html(value.question);
        $("#txtErrinfo").html('');
            return false;
        } else {
        $("#txtQuestion").html('');
        $("#txtErrinfo").html(value.errInfo);
        return false;
        }

    }
);
}

function chkLoginForm()
{
     var LoginID=document.getElementById("TextBoxLoginID").value;
     var Password=document.getElementById("TextBoxPassword").value;
     var code=document.getElementById("verifycode").value;
     if(LoginID.length<1)
     {
        alert('请输入用户名！');
        document.getElementById("TextBoxLoginID").focus();
        return false;
     }
     else if(Password.length<1)
     {
        alert('请输入密码！');
        document.getElementById("TextBoxPassword").focus();
        return false;
     }
     else if(code.length<1)
     {
        alert('请输入验证码！');
        document.getElementById("verifycode").focus();
        return false;
     }
     
     return true;
 }






 function chkFormPwd2Login() {
     Pwd = $("#txtPwd").val();
     if (Pwd.length < 1) {
         mbox("请输入二级密码");
         return false;
     }
       var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=Pwd2Login&jstype=jsonp&callback=?&pwd=" + Pwd;
    $.getJSON(url1,
     function(value) {
    if (value.result == "false") {
            mbox(value.errInfo);
            return false;
        }
        else {
            location.href = decodeURIComponent(value.curUrl);
            return false;
        }
    }, "json");
    return false;
}


function memberLogin(requestType) {
    var LoginID = document.getElementById("TextBoxLoginID").value;
    var Password = document.getElementById("TextBoxPassword").value;
    var code = document.getElementById("verifycode").value;
    var loginType = requestFormValue("hidLoginType");
    var btId = "btSubmit";
    var toUrl;
    toUrl = requestFormValue("hidUrl");
    if (toUrl == "" && requestType == "Mobile") {
        toUrl = "/demo3/home/m-main.html";
    } else if (toUrl == "") {
        toUrl = "/demo3/home/main.htm";
    }
        
    document.getElementById(btId).style.display = "none";
    document.getElementById("boxLoginLoading").innerHTML = '<img src="/images/loading.gif" />';
//    if (LoginID.length < 1) {
//        mbox('请输入用户名！');
//        document.getElementById("TextBoxLoginID").focus();
//        document.getElementById(btId).style.display = "";
//        document.getElementById("boxLoginLoading").innerHTML = '';
//        return false;
//    }
//    else if (Password.length < 1) {
//    mbox('请输入密码！');
//        document.getElementById("TextBoxPassword").focus();
//        document.getElementById(btId).style.display = "";
//        document.getElementById("boxLoginLoading").innerHTML = '';
//        return false;
//    }
//    else if (code.length < 1) {
//    mbox('请输入验证码！');
//        document.getElementById("verifycode").focus();
//        document.getElementById(btId).style.display = "";
//        document.getElementById("boxLoginLoading").innerHTML = '';
//        return false;
//    }

    var url1 = ajaxUrl + '/WS/WSAccounts.aspx?CheckType=userLogin&jstype=jsonp&callback=?&username=' + LoginID + '&pwd=' + Password + '&yzm=' + code + '&loginType='+loginType+'&rand=' + Math.round(Math.random() * 10000);
    $.getJSON(url1,
    function (data) {
        if (data.result == "success")
            window.top.location.href = toUrl+"?requestType="+requestType; ///demo1/memberhtml/default.html/demo2/default.html
        else {
            mbox(data.errInfo);
            if (asktype == '1') {
              alert(data.errInfo);
            }
//            if (data.errInfo == "验证码错误") {
//                // document.getElementById("imgRandom").src = ajaxUrl + "/demo1/Validcode.aspx?ns=" + Math.random();
//                // $("#imgRandom").src = ajaxUrl + "/demo1/Validcode.aspx?ns=" + Math.random();
//                // $("#imgRandom2").src = ajaxUrl + "/demo1/Validcode2.aspx?ns=" + Math.random();
//                // alert("err1");
//                // $("#imgRandom").attr('src', ajaxUrl + "/demo1/Validcode.aspx?ns=" + Math.random());
//                // $("#imgRandom2").attr('src', ajaxUrl + "/demo1/Validcode2.aspx?ns=" + Math.random());
//                $("#imgRandom").click();
//                // alert("err2");
//            }
            document.getElementById(btId).style.display = "";
            document.getElementById("boxLoginLoading").innerHTML = '';
            return false;
        }
    }
);
    
   
    return false;
}
 

function manageLogin()
{
     var LoginID=document.getElementById("TextBoxLoginID").value;
     var Password=document.getElementById("TextBoxPassword").value;
     var code=document.getElementById("verifycode").value;
     var btId="btSubmit";
     document.getElementById(btId).style.display="none";
     document.getElementById("boxLoading").innerHTML='<img src="/images/loading.gif" />';
     
     if(LoginID.length<1)
     {
        alert('请输入用户名！');
        document.getElementById("TextBoxLoginID").focus();
        document.getElementById(btId).style.display="";
        document.getElementById("boxLoading").innerHTML='';
        return false;
     }
     else if(Password.length<1)
     {
        alert('请输入密码！');
        document.getElementById("TextBoxPassword").focus();
        document.getElementById(btId).style.display="";
        document.getElementById("boxLoading").innerHTML='';
        return false;
     }
     else if(code.length<1)
     {
        alert('请输入验证码！');
        document.getElementById("verifycode").focus();
        document.getElementById(btId).style.display="";
        document.getElementById("boxLoading").innerHTML='';
        return false;
     }
//     	jQuery.ajax({
//		url: '/ajax/Handler.aspx',
//		data: 'type=4&username='+LoginID+'&pwd='+Password+'&yzm='+code+'&rand='+Math.round(Math.random()*10000),
//		type: 'GET',
//		beforeSend: function() {},
//		error: function(request) {},
//		success: function(data) {
//		if (data == "0" || data == "-1" || data == "-2" || data == "-3")
//		    {
//		        alert("用户名或密码错误" + data);
//               
//              document.getElementById(btId).style.display="";
//              document.getElementById("boxLoading").innerHTML='';
//		         window.location.reload();
//		       return false;
//			}
//			else if(data=="-4")
//		    {
//		      alert("验证码超时");
//              document.getElementById(btId).style.display="";
//              document.getElementById("boxLoading").innerHTML='';
//              document.getElementById("Image1").src="/demo1/validcode2.aspx?rid="+Math.random();
//		       return false;
//			}
//			else if(data=="2")
//		    {
//		      alert("验证码错误");
//		      document.getElementById("imgRandom").src = "/demo1/Validcode.aspx?ns="+Math.random();
//              document.getElementById(btId).style.display="";
//              document.getElementById("boxLoading").innerHTML='';
//		       return false;
//			}
//			else if(data=="3")
//		    {
//		      alert("对不起，试用次数已到，请与管理员联系！");
//              document.getElementById(btId).style.display="";
//              document.getElementById("boxLoading").innerHTML='';
//		       return false;
//			}
//			else if(data=="1")
//			{
//			   loginform.submit();
//			}
//			else //if(data=="")
//		    {
//		      alert("操作失败");
//              document.getElementById(btId).style.display="";
//              document.getElementById("boxLoading").innerHTML='';
//		       return false;
//			}
//			
//		}
//	});
	
}


function guestbook() {
    var username = document.getElementById("g_username").value;
    var email = document.getElementById("g_email").value;
    var mobile = document.getElementById("g_mobile").value;
    var con = document.getElementById("g_content").value;
    var code = document.getElementById("verifycode").value;
    var btId = "btSubmit";
    document.getElementById(btId).style.display = "none";
    document.getElementById("boxLoginLoading").innerHTML = '<img src="/images/loading.gif" />';

    if (username.length < 1) {
        mbox('请填写姓名！');
        document.getElementById("g_username").focus();
        document.getElementById(btId).style.display = "";
        document.getElementById("boxLoginLoading").innerHTML = '';
        return false;
    }
    else if (email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1) {
        mbox('邮箱格式不正确！');
        document.getElementById("g_email").focus();
        document.getElementById(btId).style.display = "";
        document.getElementById("boxLoginLoading").innerHTML = '';
        return false;
    }
    else if (mobile.search(/^[1][3,4,5,8][0-9]{9}$/) == -1) {
        mbox('手机号格式不正确！');
        document.getElementById("g_mobile").focus();
        document.getElementById(btId).style.display = "";
        document.getElementById("boxLoginLoading").innerHTML = '';
        return false;
    }
    else if (con.length < 1) {
        mbox('请填写留言内容！');
        document.getElementById("g_content").focus();
        document.getElementById(btId).style.display = "";
        document.getElementById("boxLoginLoading").innerHTML = '';
        return false;
    }
    else if (code.length < 1) {
        mbox('请输入验证码！');
        document.getElementById("verifycode").focus();
        document.getElementById(btId).style.display = "";
        document.getElementById("boxLoginLoading").innerHTML = '';
        return false;
    }

    var url1 = ajaxUrl + '/WS/WSAccounts.aspx?CheckType=guestbookWrite&jstype=jsonp&callback=?&username=' + username + '&email=' + email + '&mobile=' + mobile + '&con='+con+'&yzm=' + code + '&rand=' + Math.round(Math.random() * 10000);
    $.getJSON(url1,
    function (data) {
        if (data.result == "success") {
            alert("恭喜您，操作成功！");
            window.top.location.href = 'guestbook.htm'; ///demo1/memberhtml/default.html/demo2/default.html
        }
        else {
            mbox(data.errInfo);
            if (data.errInfo == "验证码错误")
                document.getElementById("imgRandom").src = ajaxUrl + "/demo1/Validcode.aspx?ns=" + Math.random();
            document.getElementById(btId).style.display = "";
            document.getElementById("boxLoginLoading").innerHTML = '';
            return false;
        }
    }
);


    return false;
}

function curPay()
{
     var curno=document.getElementById("Billno").value;
     var curmoney=document.getElementById("Amount").value;
     var userid=document.getElementById("hidUserId").value;
     var btId="btSubmit";
     document.getElementById(btId).style.display="none";
     
     if(curno.length<10)
     {
        alert('订单错误！');
        document.getElementById("Billno").focus();
        document.getElementById(btId).style.display="";
        return false;
     }
     else if(parseFloat(curmoney)<=0)
     {
        alert('请输入金额！');
        document.getElementById("Amount").focus();
        document.getElementById(btId).style.display="";
        return false;
     }
     	jQuery.ajax({
		url: '/ajax/Handler.aspx',
		data: 'type=6&billno='+curno+'&amount='+curmoney+'&userid='+userid+'&rand='+Math.round(Math.random()*10000),
		type: 'GET',
		beforeSend: function() {},
		error: function(request) {},
		success: function(data) {
		    if(data=="1")
			{
			   frm1.submit();
			}
			else
		    {
		      alert("操作失败");
              document.getElementById(btId).style.display="";
		       return false;
			}
			
		}
	});
	return false;
}

function cashConfirm(oid,otype) {
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=cashConfirm&jstype=jsonp&callback=?&id=" + oid + "&type=" + otype,
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }

    }
);
}

function activeMember(oid) {
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    var account_type = $('input[name="accountType"]:checked').val();
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=activeMember&jstype=jsonp&callback=?&accountType=" + account_type + "&id=" + oid,
    function(data) {
        if (data.result == "success") {
            if (asktype == '1') {
              alert("恭喜您，操作成功");
            }
            tbox("恭喜您，操作成功", location.href);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }
        else {
            alert(data.errInfo);

            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }

    }
);
    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "activeMember", id: oid }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            //            $("#boxLoading").css("display", "none");
//            //            $("#boxMain").css("display", "");
//            //location.href = location;
//            return;
//        }
//    }, "json");
    return false;
}


function activeSelf() {
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=activeSelf&jstype=jsonp&callback=?",
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            // mpi.news(data.errInfo, 3000);
        }

    }
);

    return false;
}

function delMember(oid) {
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=delMember&jstype=jsonp&callback=?&id=" + oid,
    function(data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            alert(data.errInfo);

            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }

    }
);

    return false;
}



function addCar(pro_id,id_num1,userid)
{
   var num1=document.getElementById(id_num1).value;
     if(num1<1)
     {
        // alert('数量错误！');
         mbox('数量错误！');
        return false;
    }
    var url1 = ajaxUrl + '/WS/WSAccounts.aspx?CheckType=addShopCar&jstype=jsonp&callback=?&id=' + pro_id + '&num=' + num1 + '&userid=' + userid + '&rand=' + Math.round(Math.random() * 10000);
    //alert(url1);
    $.getJSON(url1,
    function(data) {
    if (data.result == "success")
        mbox('恭喜您，操作成功'); //alert("恭喜您，操作成功");
        else
           mbox(data.errInfo);// alert(data.errInfo);
    }
);
//     	jQuery.ajax({
//		url: '/ajax/Handler.aspx',
//		data: 'type=7&id='+pro_id+'&num='+num1+'&userid='+userid+'&rand='+Math.round(Math.random()*10000),
//		type: 'GET',
//		beforeSend: function() {},
//		error: function(request) {},
//		success: function(data) {
//		    if(data=="1")
//			{
//			   alert("恭喜您，操作成功");
//			   return true;
//			}
//			else if(data=="-1")
//			{
//			   alert("登录超时");
//			   return false;
//			}
//			else if(data=="-2")
//			{
//			   alert("购物车已满");
//			   return false;
//			}
//			else
//		    {
//		      alert("操作失败");
//		       return false;
//			}
//			
//		}
//	});
	return false;
}


function addCar2(pro_id, num1, userid) {
    if (num1 < 1) {
        // alert('数量错误！');
        mbox('数量错误！');
        return false;
    }
    var url1 = ajaxUrl + '/WS/WSAccounts.aspx?CheckType=addShopCar&jstype=jsonp&callback=?&id=' + pro_id + '&num=' + num1 + '&userid=' + userid + '&rand=' + Math.round(Math.random() * 10000);
    $.getJSON(url1,
    function (data) {
        if (data.result == "success") {
            tbox('恭喜您，操作成功', location.href); //alert("恭喜您，操作成功");
        }
        else
            mbox(data.errInfo); // alert(data.errInfo);
    }
);
    return false;
}

function shopCarDel(oid) {
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=shopCarDel&jstype=jsonp&callback=?&id=" + oid,
    function(data) {
        if (data.result == "success")
            tbox("恭喜您，操作成功", location.href);
        else {
            alert(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }
    }
);

//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "shopCarDel", id: oid }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            alert("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            alert("操作成功");
//            //            $("#boxLoading").css("display", "none");
//            //            $("#boxMain").css("display", "");
//            //location.href = location;
//            return;
//        }
//    }, "json");
    return false;
}

function shopCarClear() {
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=shopCarClear&jstype=jsonp&callback=?",
    function(data) {
    if (data.result == "success")
        tbox("恭喜您，操作成功", location.href);
    else {
        mbox(data.errInfo);
        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
    }

    }
);
    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "shopCarClear" }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            mbox("操作成功");
//            //            $("#boxLoading").css("display", "none");
//            //            $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");
    return false;
}


function chkFormUnActiveInfoModi() {
    var bianhao1, jd, service,wz;
    bianhao1 = requestFormValue("txtUserName");
    jd = requestFormValue("txtJD");
    wz = requestFormValue("selWeiZhi");
     service = requestFormValue("txtService");
     if (bianhao1.length < 2) {
         mbox('会员编号错误');
         return false;
     }
     else if (jd.length < 1) {
         mbox('请输入接点人');
         return false;
     }
     else if (service.length < 1) {
         mbox('请输入服务中心');
         return false;
     }


     $("#boxLoading").css("display", "");
     $("#boxMain").css("display", "none");
     var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=unActiveInfoModi&jstype=jsonp&callback=?&bianhao1=" + bianhao1 + "&jd=" + jd + "&wz=" + wz + "&service=" + service;
     //$("#testShow").html(url1);
     $.getJSON(url1,
    function (value) {
        if (value.result == "false") {
            mbox(" " + value.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        } else {
            tbox("恭喜您，操作成功", location.href);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return;
        }
    }, "json");
     return false;

}

function chkFormMyInfoModi() {
    var mobileCode,TrueName, IDCard, Sex, Province, City, Area, Address, PostCode, Mob, Email, Bank, BankUser, BankNumber, Province2, City2, Area2, BankAddress, QQ, wxid, Pwd, alipayNumber;
    mobileCode = requestFormValue("txtmobilecode");
    TrueName = requestFormValue("txtTrueName");  //$("#txtTrueName").val();
    TrueName = encodeURIComponent(TrueName);
    IDCard = requestFormValue("txtIDCard");  // $("#txtIDCard").val();
    Sex = requestFormValue("selSex");  // $("#selSex").val();
    Province = requestFormValue("selProvince");  // $("#selProvince").val();// Utils.trim($("#").val()); // document.getElementById("selProvince").value;
    City = requestFormValue("selCity");  // $("#selCity").val(); // Utils.trim($("#selCity").val()); //document.getElementById("selCity").value;
    Area = requestFormValue("selArea");  // $("#selArea").val(); // Utils.trim($("#selArea").val()); // document.getElementById("selArea").value;
    Address = requestFormValue("txtAddress");  // $("#txtAddress").val(); // document.getElementById("txtAddress").value;
    Address = encodeURIComponent(Address);
    PostCode = requestFormValue("txtPostCode");  // $("#txtPostCode").val(); // document.getElementById("txtPostCode").value;
    Mob = requestFormValue("txtMob");  // $("#txtMob").val(); //document.getElementById("txtMob").value;
    Email = requestFormValue("txtEmail");  // $("#txtEmail").val(); // document.getElementById("txtEmail").value;
    Bank = requestFormValue("selBank");  // $("#selBank").val(); //document.getElementById("selBank").value;
    Bank = encodeURIComponent(Bank);
    BankUser = requestFormValue("txtBankUser");
    BankUser = encodeURIComponent(BankUser);
    BankUser = TrueName;
    BankNumber = requestFormValue("txtBankNumber");  // $("#txtBankNumber").val(); //document.getElementById("txtBankNumber").value;
    Province2 = requestFormValue("selProvince2");  // $("#selProvince2").val(); // Utils.trim($("#selProvince2").val()); //document.getElementById("selProvince2").value;
    City2 = requestFormValue("selCity2");  // $("#selCity2").val(); //Utils.trim($("#selCity2").val()); //document.getElementById("selCity2").value;
    Area2 = requestFormValue("selArea2");  // $("#selArea2").val(); // Utils.trim($("#selArea2").val()); //document.getElementById("selArea2").value;
    BankAddress = requestFormValue("txtBankAddress");  // $("#txtBankAddress").val(); // document.getElementById("").value;
    BankAddress=encodeURIComponent(BankAddress)
    QQ = requestFormValue("txtQQ");  // $("#txtQQ").val(); // document.getElementById("").value;
    wxid = requestFormValue("txtwxid");
    Pwd = requestFormValue("txtPwd");  // $("#txtPwd").val(); //document.getElementById("").value;
    alipayNumber = requestFormValue("txtAlipayNumber");


    if (!confirm('请认真核对好资料填写正确，只允许修改三次!\n\n确认操作?'))
        return false;
       

    if (TrueName.length < 2) {
        mbox('请输入真实姓名');
        return false;
    }
//    else if (IDCard.length < 18) {
    //    mbox('请输入身份证');
//        return false;
//    }
//    else if (Address.length < 1) {
//    mbox('请输入地址');
//        return false;
//    }
    else if (Mob.length < 11) {
    mbox('请输入手机');
        return false;
    }
//    else if (Email.length < 1) {
//    mbox('请输入邮箱');
//        return false;
//    }
    else if (BankNumber.length < 1) {
    mbox('请输入银行账号');
        return false;
    }
    else if (BankAddress.length < 1) {
    mbox('请输入开户银行地址');
        return false;
    }
    else if (Pwd.length < 1) { 
    mbox('请输入二级密码');
        return false;
    }
    else if (mobileCode.length < 1) {
        mbox('请输入验证码');
        return false;
    }
   
    $("#txtTrueName").focus();
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    // $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "myinfoModi", TrueName: TrueName, IDCard: IDCard, Sex: Sex, Province: Province, City: City, Area: Area, Address: Address, PostCode: PostCode, Mob: Mob, Email: Email, Bank: Bank, BankNumber: BankNumber, Province2: Province2, City2: City2, Area2: Area2, BankAddress: BankAddress, QQ: QQ, Pwd: Pwd }
    //alert(BankUser);
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=myinfoModi&jstype=jsonp&callback=?&TrueName=" + TrueName + "&IDCard=" + IDCard + "&Sex=" + Sex + "&Province=" + Province + "&City=" + City + "&Area=" + Area + "&Address=" + Address + "&PostCode=" + PostCode + "&Mob=" + Mob + "&Email=" + Email + "&Bank=" + Bank + "&BankUser=" + BankUser + "&BankNumber=" + BankNumber + "&Province2=" + Province2 + "&City2=" + City2 + "&Area2=" + Area2 + "&BankAddress=" + BankAddress + "&QQ=" + QQ + "&wxid=" + wxid + "&Pwd=" + Pwd + "&alipayNumber=" + alipayNumber + "&mobileCode=" + mobileCode;
      $.getJSON(url1,
    function (value) {
        if (value.result == "false") {
            mbox(" " + value.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        } else {
            tbox("恭喜您，操作成功", location.href);
            // $("#boxLoading").css("display", "none");
            // $("#boxMain").css("display", "");
            return;
        }
    }, "json");
    return false;
}




function chkFormMyInfoModi2() {
    var JiBie, JieDian, WZ;
    JiBie = requestFormValue("selJiBie");  
    JieDian = requestFormValue("txtJieDian");  
    WZ = requestFormValue("selWZ");  

    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");

    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=myinfoModi2&jstype=jsonp&callback=?&JiBie=" + JiBie + "&JieDian=" + JieDian + "&WZ=" + WZ;
    $.getJSON(url1,
    function (value) {
        if (value.result == "success") {
            mbox("操作成功");
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return;
        }
        else {
            mbox(" " + value.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }
    }, "json");
    return false;
}

function chkFormReg() {
    var Bianhao, JiBie, TJ, JD, WeiZhi, TrueName, IDCard, Sex, Province, City, Area, Address, PostCode, Pwd1, Pwd1_2, Pwd2, Pwd2_2, Mob, Email, Bank, BankUser, BankNumber, Province2, City2, Area2, BankAddress, QQ, wxid, Service, alipayNumber;
    var regFrom, mobileCode, cb_xieyi;
    regFrom = requestFormValue("txtregFrom");
    mobileCode = requestFormValue("txtmobilecode"); 
    Bianhao = requestFormValue("txtBianhao");  //$("#txtBianhao").val();
    JiBie = requestFormValue("selJiBie");  // $("#selJiBie").val();
    TJ = requestFormValue("txtTJ");  // $("#txtTJ").val();
    JD = requestFormValue("txtJD");  // $("#txtJD").val();
    WeiZhi = requestFormValue("selWeiZhi");  // $("#selWeiZhi").val();
    TrueName = requestFormValue("txtTrueName");  // $("#txtTrueName").val();
    TrueName = encodeURIComponent(TrueName);
    IDCard = requestFormValue("txtIDCard");  // $("#txtIDCard").val();
    Sex = requestFormValue("selSex");  // $("#selSex").val();
    Province = requestFormValue("selProvince");  // $("#selProvince").val();
    City = requestFormValue("selCity");  // $("#selCity").val();
    Area = requestFormValue("selArea");  // $("#selArea").val();
    Address = requestFormValue("txtAddress");  // $("#txtAddress").val();
     Address= encodeURIComponent(Address);
    PostCode = requestFormValue("txtPostCode");  // $("#txtPostCode").val();
    Pwd1 = requestFormValue("txtPwd1");  // $("#txtPwd1").val();
    Pwd1_2 = requestFormValue("txtPwd1_2");  // $("#txtPwd1_2").val();
    Pwd2 = requestFormValue("txtPwd2");  // $("#txtPwd2").val();
    Pwd2_2 = requestFormValue("txtPwd2_2");  // $("#txtPwd2_2").val();
    Mob = requestFormValue("txtMob");  // $("#txtMob").val();
    Email = requestFormValue("txtEmail");  // $("#txtEmail").val();
    Bank = requestFormValue("selBank");  // $("#selBank").val();
    BankUser = requestFormValue("txtBankUser");
    BankUser = encodeURIComponent(BankUser);
    BankNumber = requestFormValue("txtBankNumber");  // $("#txtBankNumber").val();
    Province2 = requestFormValue("selProvince2");  // $("#selProvince2").val();
    City2 = requestFormValue("selCity2");  // $("#selCity2").val();
    Area2 = requestFormValue("selArea2");  // $("#selArea2").val();
    BankAddress = requestFormValue("txtBankAddress");  // $("#txtBankAddress").val();
     BankAddress= encodeURIComponent(BankAddress);
     QQ = requestFormValue("txtQQ");  // $("#txtQQ").val();
     wxid = requestFormValue("txtwxid");
     Service = requestFormValue("txtService");  // $("#txtService").val();
     alipayNumber = requestFormValue("txtAlipayNumber");
     var isValidShow = $("#isValid-show").html();
     if (isValidShow != null && isValidShow != "") {
        alert(isValidShow);
        return false;
     }
     if (document.getElementById("cb_xieyi")==null|| document.getElementById("cb_xieyi").checked == true)
         xieyi = 1
     else
         xieyi = 0;

//     if (xieyi == 0) {
//         mbox('请同意协议后再提交');
//         return false;
     //     }
     Bianhao = Mob;
    // BankUser = TrueName;

    Bank = encodeURIComponent(Bank);
    $("#txtTJ").focus();
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=memberReg&jstype=jsonp&callback=?&&xieyi="+xieyi+"&Bianhao=" + Bianhao + "&JiBie=" + JiBie + "&TJ=" + TJ + "&JD=" + JD + "&WeiZhi=" + WeiZhi + "&TrueName=" + TrueName + "&IDCard=" + IDCard + "&Sex=" + Sex + "&Province=" + Province + "&City=" + City + "&Area=" + Area + "&Address=" + Address + "&PostCode=" + PostCode + "&Pwd1=" + Pwd1 + "&Pwd1_2=" + Pwd1_2 + "&Pwd2=" + Pwd2 + "&Pwd2_2=" + Pwd2_2 + "&Mob=" + Mob + "&Email=" + Email + "&Bank=" + Bank + "&BankUser=" + BankUser + "&BankNumber=" + BankNumber + "&Province2=" + Province2 + "&City2=" + City2 + "&Area2=" + Area2 + "&BankAddress=" + BankAddress + "&QQ=" + QQ + "&wxid=" + wxid + "&Service=" + Service + "&alipayNumber=" + alipayNumber + "&mobileCode=" + mobileCode;

    $.getJSON(url1,
    function (value) {
        if (value.result == "false") {
          if (asktype == '1') {
            alert(value.errInfo);
          } else {
            mbox(" " + value.errInfo);
          }
            
          $("#boxLoading").css("display", "none");
          $("#boxMain").css("display", "");
          return false;
        } else {

            if (regFrom == "tuiguang") {
              if (asktype == '1') {
                alert("操作成功");
              }
              tbox("操作成功", "/login.htm");
            } else {
              if (asktype == '1') {
                alert("操作成功");
              }
              tbox("操作成功", location.href);
            }
            setTimeout(function () {
                alert("操作成功");
                window.location.reload();
            }, 9000);
        }
    }
);
    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "memberReg",Bianhao:Bianhao, JiBie:JiBie, TJ:TJ, JD:JD, WeiZhi:WeiZhi, TrueName:TrueName, IDCard:IDCard, Sex:Sex, Province:Province, City:City, Area:Area, Address:Address, PostCode:PostCode, Pwd1:Pwd1, Pwd1_2:Pwd1_2, Pwd2:Pwd2, Pwd2_2:Pwd2_2, Mob:Mob, Email:Email, Bank:Bank, BankNumber:BankNumber, Province2:Province2, City2:City2, Area2:Area2, BankAddress:BankAddress, QQ:QQ, Service:Service  }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//        mbox("操作成功");
////        $("#boxLoading").css("display", "none");
//        //        $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");
    return false;
}


function chkFormMBSet() {
    var Question = Utils.trim($("#selQuestion").val());
    var Answer = document.getElementById("txtAnswer").value;
    var Pwd = document.getElementById("txtPwd").value;

    if (Answer.length < 2) {
        mbox('请输入密保答案');
        return false;
    }
    else if (Pwd.length < 1) {
        mbox('请输入二级密码');
        return false;
    }
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");

    Question = encodeURIComponent(Question);
    Answer = encodeURIComponent(Answer);

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=QuestionAnswerModi&jstype=jsonp&callback=?&Question="+Question+"&Answer="+Answer+"&Pwd="+Pwd,
    function(data) {
    if (data.result == "success") {
        tbox("恭喜您，操作成功", location.href);
    }
    else {
        mbox(data.errInfo);
        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
        return false;
    }

    }
);

    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "QuestionAnswerModi", Question: Question, Answer: Answer, Pwd: Pwd }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            mbox("操作成功");
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");
    return false;
}


function chkFormServiceApply() {
    var ServiceName, Province, City, Area, Address, Note, jibie;
    ServiceName = $("#txtServiceName").val();
    Province = $("#selProvince").val();
    City = $("#selCity").val();
    Area = $("#selArea").val();
    Address = $("#txtAddress").val();
    Note = $("#txtNote").val();
    jibie = $("#seljiBie").val();

     if (ServiceName.length < 1) {
        mbox('请输入名称');
        return false;
    }
    else if (Province.length < 1 || City.length < 1 || Area.length < 1 || Address.length < 1) {
        mbox('请输入地址');
        return false;
    }
    
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    
    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "serviceApply", ServiceName:ServiceName , Province:Province  ,City:City  , Area:Area  , Address:Address  , Note:Note }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox(" " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//        mbox("操作成功");
//        //        $("#boxLoading").css("display", "none");
//        //        $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=serviceApply&jstype=jsonp&callback=?&ServiceName=" + ServiceName + "&jibie=" + jibie + "&Province=" + Province + "&City=" + City + "&Area=" + Area + "&Address=" + Address + "&Note=" + Note,
    function(data) {
        if (data.result == "success") {
            tbox("操作成功",location.href);
                    $("#boxLoading").css("display", "none");
                    $("#boxMain").css("display", "");
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }
    }
);
    
    return false;
}




function chkFormMBAnswer() {
    var UserName, Answer;
    UserName = $("#txtUserName").val();
    Answer = $("#txtAnswer").val();
//    if (UserName.length < 1) {
//        mbox('请输入会员编号');
//        return false;
//    }
//    else if (Answer.length < 1) {
//        mbox('请输入密保答案');
//        return false;
//    }

    Answer = encodeURIComponent(Answer);
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=chkMBAnswer&jstype=jsonp&callback=?&userName=" + UserName + "&answer=" + Answer,
    function (data) {
        if (data.result == "success") {
            $("#boxMBAnswer").css("display", "none");
            $("#boxMobile").css("display", "none");
            $("#boxEmail").css("display", "none");
            $("#boxMBModiPwd").css("display", "");
        }
        else {
            mbox(data.errInfo);
            return false;
        }
    }
);


    return false;
}



function chkFormMobilePwd() {
    var UserName, mobile;
    UserName = $("#txtUserName2").val();
    mobile = $("#txtMobile").val();
//    if (UserName.length < 1) {
//        mbox('请输入会员编号');
//        return false;
//    }
//    else if (mobile.length < 11) {
//        mbox('请输入手机');
//        return false;
//    }


    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=chkMobilePwd&jstype=jsonp&callback=?&userName=" + UserName + "&mobile=" + mobile,
    function (data) {
        if (data.result == "success") {
            tbox("操作成功", "/default.htm"); //"恭喜您 短信发送成功"
        }
        else {
            mbox(data.errInfo);
            return false;
        }
    }
);


    return false;
}




function chkFormEmailPwd() {
    var UserName, email;
    UserName = $("#txtUserName3").val();
    email = $("#txtEmail").val();
    if (UserName.length < 1) {
        mbox('请输入会员编号');
        return false;
    }
    else if (email.length < 5) {
        mbox('请输入邮箱');
        return false;
    }
    else if (emailCheck(email) == false) {
        mbox('请输入有效的邮箱');
        return false;
    }


    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=chkEmailPwd&jstype=jsonp&callback=?&userName=" + UserName + "&email=" + email,
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您 操作成功", "/default.htm");
        }
        else {
            mbox(data.errInfo);
            return false;
        }
    }
);


    return false;
}








function chkFormMBModiPwd() {
    var Pwd1, Pwd1_2, Pwd2, Pwd2_2
    Pwd1 = requestFormValue("txtPwd1"); 
    Pwd1_2 = requestFormValue("txtPwd1_2");  
    Pwd2 = requestFormValue("txtPwd2");  
    Pwd2_2 = requestFormValue("txtPwd2_2"); 
    if (Pwd1.length < 1) {
        mbox('请输入一级密码！');
        $("#txtPwd1").focus();
        return false;
    }
    else if (Pwd1_2.length < 1) {
        mbox('请输入一级密码确认！');
        $("#txtPwd1_2").focus();
        return false;
    }
    else if (Pwd1 != Pwd1_2) {
        mbox('一级密码再次输入不一样！');
        $("#txtPwd1_2").focus();
        return false;
    }
    else if (Pwd2.length < 1) {
        mbox('请输入二级密码！');
        $("#txtPwd2").focus();
        return false;
    }
    else if (Pwd2.length < 1) {
        mbox('请输入二级密码确认！');
        $("#txtPwd2_2").focus();
        return false;
    }
    else if (Pwd2 != Pwd2_2) {
        mbox('二级密码两次输入不一样！');
        $("#txtPwd2_2").focus();
        return false;
    }
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=MBModiPwd&jstype=jsonp&callback=?&pwd1=" + Pwd1 + "&pwd2=" + Pwd2,
    function(data) {
        if (data.result == "success") {
            tbox("恭喜您操作成功",'/default.htm');
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }
    }
);
    

    return false;
}




function chkFormNetMapView() {
    var oid = $("#txtBianhao").val();
    if (oid.length < 1) {
        mbox('请输入会员编号');
        $("#txtBianhao").focus();
        return false;
    }
    else
        location.href = 'mmemped.htm?id=' + oid;
    return false;
}

function chkFormShengji() {
    var JiBie;
    JiBie = $("#selJiBie").val();
    
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=shengJi&jstype=jsonp&callback=?&JiBie="+JiBie,
    function(data) {
    if (data.result == "success") {
        tbox("恭喜您，操作成功", location.href);
    
    }
    else {
        mbox(data.errInfo);
        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
        return false;
    };

    }
);

    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "shengJi", JiBie: JiBie }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox(" " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//        mbox("操作成功");
//        //        $("#boxLoading").css("display", "none");
//        //        $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");
    return false;
}

function chkFormZhuanZhang() {
    var To, Type,TypeName, Money,Pwd,Note;
    To = $("#txtTo").val();
    Type = $("#selType").val();
    TypeName = $("#selType").find("option:selected").text();
    TypeName = encodeURIComponent(TypeName);
    Money = $("#txtMoney").val();
    Pwd = $("#txtPwd").val();
    Note = $("#txtMemo").val();

    if (!confirm('\您转出币' + Money + '到' + To + '帐号？\n\n请确认该操作！'))
        return false;

    if (To.length < 1) {
        mbox('请输入接受会员编号');
        return false;
    }
    else if (Money.length < 1) {
    mbox('请输入转账金额');
        return false;
    }
    else if (Pwd.length < 1) {
    mbox('请输入二级密码');
        return false;
    }
    
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=zhuanZhang&jstype=jsonp&callback=?&To=" + To + "&Type=" + Type + "&TypeName=" + TypeName + "&Money=" + Money + "&Pwd=" + Pwd + "&Note=" + Note,
    function(data) {
        if (data.result == "success") {
            alert("恭喜您，操作成功!");
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }

    }
);

    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "zhuanZhang", To: To, Type: Type, TypeName: TypeName, Money: Money }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox(" " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//        mbox("操作成功");
//        //        $("#boxLoading").css("display", "none");
//        //        $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");
    return false;
}

function chkFormZhuanHuan() {
    var Type, TypeName, Money, Pwd;
    Type = $("#selType").val();
    TypeName = $("#selType").find("option:selected").text();
    TypeName = encodeURIComponent(TypeName);
    Money = $("#txtMoney").val();
    Pwd = $("#txtPwd").val();

    if (Money.length < 1) {
        mbox('请输入转换金额');
        return false;
    }
    else if (Pwd.length < 1) {
        mbox('请输入二级密码');
        return false;
    }

//    $("#boxLoading").css("display", "");
//    $("#boxMain").css("display", "none");

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=zhuanHuan&jstype=jsonp&callback=?&Type=" + Type + "&TypeName=" + TypeName + "&Money=" + Money + "&Pwd=" + Pwd,
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }

    }
);
    return false;
}

function confirmHelp(oid) {

    if (!confirm("确认操作？"))
        return false;
    else {
        $("#boxLoading").css("display", "");
        $("#boxMain").css("display", "none");

        $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=confirmHelp&jstype=jsonp&callback=?&id=" + oid,
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }

    }
);
        return false;
    }
}




function helpCash(oid) {
if (!confirm("确认操作？"))
        return false;
else {
        $("#boxLoading").css("display", "");
        $("#boxMain").css("display", "none");


        $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=helpCash&jstype=jsonp&callback=?&id=" + oid,
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);

            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }

    }
);
        return false;
    }
}



function delayPay(oid) {
if (!confirm("确认操作？"))
        return false;
else {
        $("#boxLoading").css("display", "");
        $("#boxMain").css("display", "none");


        $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=delayPay&jstype=jsonp&callback=?&id=" + oid,
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);

            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }

    }
);
        return false;
    }
}


function chkFormPwd1Modi() {
    var PwdOld = document.getElementById("txtPwdOld").value;
    var PwdNew = document.getElementById("txtPwdNew").value;
    var PwdNew_2 = document.getElementById("txtPwdNew_2").value;
    var Pwd2 = document.getElementById("txtPwd2").value;

    if (PwdOld.length < 1) {
        mbox('请输入旧密码');
        return false;
    }
    else if (PwdNew.length < 1) {
    mbox('请输入新密码');
        return false;
    }
    else if (PwdNew_2.length < 1) {
    mbox('请输入新密码确认');
        return false;
    }
    else if (PwdNew!=PwdNew_2) {
    mbox('新密码两次输入不一致');
        return false;
    }
    else if (Pwd2.length < 1) {
    mbox('请输入二级密码');
        return false;
    }
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=pwdModi&jstype=jsonp&callback=?&PwdOld="+PwdOld+"&PwdNew="+PwdNew+"&Pwd2="+Pwd2,
    function(data) {

    if (data.result == "success") {
        tbox("恭喜您，操作成功", location.href);
    }
    else {
        mbox(data.errInfo);
        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
        return false;
    };

    }
);
    
//    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "pwdModi", PwdOld: PwdOld, PwdNew: PwdNew, Pwd2: Pwd2 }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            mbox("操作成功");
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");
    return false;
}





function chkFormMobileModi() {
    var MobileOld = document.getElementById("txtmobileOld").value;
    var MobileNew = document.getElementById("txtmobileNew").value;
    var MobileCode1 = document.getElementById("txtmobilecode1").value;
    var MobileCode2 = document.getElementById("txtmobilecode2").value;
    var Pwd2 = document.getElementById("txtPwd2").value;

    if (MobileOld.length < 1) {
        mbox('请输入原手机');
        return false;
    }
    else if (MobileNew.length < 1) {
        mbox('请输入新手机');
        return false;
    }
    else if (MobileCode1.length < 1) {
        mbox('请输入原手机验证码');
        return false;
    }
    else if (MobileCode2.length < 1) {
        mbox('请输入新手机验证码');
        return false;
    }
    else if (Pwd2.length < 1) {
        mbox('请输入二级密码');
        return false;
    }
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=mobileModi&jstype=jsonp&callback=?&MobileOld=" + MobileOld + "&MobileNew=" + MobileNew + "&MobileCode1=" + MobileCode1 + "&MobileCode2=" + MobileCode2 + "&Pwd2=" + Pwd2,
    function (data) {

        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);

    return false;
}





function chkFormEmailModi() {
    var MobileOld = document.getElementById("txtmobileOld").value;
    var MobileNew = document.getElementById("txtmobileNew").value;
    var MobileCode1 = document.getElementById("txtmobilecode1").value;
    var MobileCode2 = document.getElementById("txtmobilecode2").value;
    var Pwd2 = document.getElementById("txtPwd2").value;

    if (MobileOld.length < 1) {
        mbox('请输入原邮箱');
        return false;
    }
    else if (MobileNew.length < 1) {
        mbox('请输入新邮箱');
        return false;
    }
    else if (MobileCode1.length < 1) {
        mbox('请输入原邮箱验证码');
        return false;
    }
    else if (MobileCode2.length < 1) {
        mbox('请输入新邮箱验证码');
        return false;
    }
    else if (Pwd2.length < 1) {
        mbox('请输入二级密码');
        return false;
    }
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=emailModi&jstype=jsonp&callback=?&MobileOld=" + MobileOld + "&MobileNew=" + MobileNew + "&MobileCode1=" + MobileCode1 + "&MobileCode2=" + MobileCode2 + "&Pwd2=" + Pwd2,
    function (data) {

        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);

    return false;
}




function chkFormPwd2Modi() {
    var PwdOld = document.getElementById("txtPwd2Old").value;
    var PwdNew = document.getElementById("txtPwd2New").value;
    var PwdNew_2 = document.getElementById("txtPwdNew2_2").value;

    if (PwdOld.length < 1) {
        mbox('请输入旧密码');
        return false;
    }
    else if (PwdNew.length < 1) {
        mbox('请输入新密码');
        return false;
    }
    else if (PwdNew_2.length < 1) {
        mbox('请输入新密码确认');
        return false;
    }
    else if (PwdNew != PwdNew_2) {
        mbox('新密码两次输入不一致');
        return false;
    }
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=pwd2Modi&jstype=jsonp&callback=?&PwdOld="+PwdOld+"&PwdNew="+PwdNew,
    function(data) {
    if (data.result == "success") {
        tbox("恭喜您，操作成功", location.href);
    }
    else {
        mbox(data.errInfo);
        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
        return false;
    };

    }
);
    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "pwd2Modi", PwdOld: PwdOld, PwdNew: PwdNew }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            mbox("操作成功");
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return;
//        }
//    }, "json");
    return false;
}


function chkFormWriteMessage() {
    var ToUser, Content, title,stype;
     ToUser = document.getElementById("txtToUser").value;
     Content = document.getElementById("txtContent").value;
     stype = requestFormValue("selType")
//     title="";
//     if (typeof (document.getElementById("txtTitle")) != "undefined")
//         title = document.getElementById("txtTitle").value;

    if (ToUser.length < 1) {
        mbox('请输入收件人');
        return false;
    }
    else if (Content.length < 2) {
        mbox('请输入内容');
        return false;
    }
    Content = encodeURIComponent(Content);
    stype = encodeURIComponent(stype);
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=WriteMessage&jstype=jsonp&callback=?&ToUser=" + ToUser + "&Content=" + Content + "&stype=" + stype,
    function(data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功",location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);
    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "WriteMessage", ToUser: ToUser, Content: Content }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            mbox("操作成功");
////            $("#boxLoading").css("display", "none");
////            $("#boxMain").css("display", "");
//            location.href = location;
//            return;
//        }
//    }, "json");
    return false;
}


function logOut() {

    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=logOut&jstype=jsonp&callback=?",
    function(data) {
        if (data.result == "success") {
            top.location.href = data.curUrl;
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);

    //    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "WriteMessage", ToUser: ToUser, Content: Content }
    //    , function(value, textStatus) {
    //        if (value.result == "false") {
    //            mbox("操作失败 " + value.errInfo);
    //            $("#boxLoading").css("display", "none");
    //            $("#boxMain").css("display", "");
    //            return false;
    //        } else {
    //            mbox("操作成功");
    ////            $("#boxLoading").css("display", "none");
    ////            $("#boxMain").css("display", "");
    //            location.href = location;
    //            return;
    //        }
    //    }, "json");
    return false;
}



function chkFormHuiKuan() {
    var Bank, BankNumber, BankName, money, date, Memo;
    Bank = $("#selBank").val();
    BankNumber = $("#txtBankNumber").val();
     BankName= $("#txtBankName").val();
     money = $("#txtMoney").val();
     date= $("#txtDate").val();
    Memo = $("#txtMemo").val();


    if (Bank.length < 1) {
        mbox('请选择银行');
        return false;
    }
    else if (BankNumber.length < 1) {
        mbox('请输入银行账号');
        return false;
    }
    else if (BankName.length < 1) {
        mbox('请输入开户名');
        return false;
    }
    else if (money.length < 1) {
        mbox('请输入金额');
        return false;
    }
    Memo = encodeURIComponent(Memo);
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=HuiKuan&jstype=jsonp&callback=?&Bank=" + Bank + "&BankNumber=" + BankNumber + "&BankName=" + BankName + "&money=" + money + "&date=" + date + "&Memo=" + Memo,
    function(data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);
    
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "HuiKuan", Bank:Bank, BankNumber:BankNumber, BankName:BankName, money:money, date:date, Memo:Memo }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            mbox("操作成功");
////            $("#boxLoading").css("display", "none");
////            $("#boxMain").css("display", "");
//            location.href = location;
//            return;
//        }
//    }, "json");
    return false;
}


function chkFormCash() {
    var money, pwd,BankAddress,zmService;
  
     money = $("#txtMoney").val();
     pwd = $("#txtPwd").val();
     zmService = $("#selService").val();
     BankAddress = $("#txtBankAddress").val();
     BankAddress = encodeURIComponent(BankAddress);

     if (money.length < 1) {
        mbox('请输入提现金额');
        return false;
    }
    else if (pwd.length < 1) {
        mbox('请输入二级密码');
        return false;
    }
    
    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=CashOut&jstype=jsonp&callback=?&money=" + money + "&pwd=" + pwd + "&BankAddress=" + BankAddress + "&zmService=" + zmService,
    function(data) {
    if (data.result == "success") {
        tbox("恭喜您，操作成功", location.href);
    }
    else {
        mbox(data.errInfo);
        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
        return false;
    };

    }
);
    
    return false;
}


function chkFormPayOnline() {
    var money, out_no, note;

    money = $("#txtm1").val();
    out_no = $("#txtout_no").val();
    note = $("#txtnote").val();

    if (money==""|| money <= 0) {
        mbox('请输入金额！');
        return false;
    }
    else if (out_no.length < 3) { 
    
        mbox('订单号错误');
        return false;
    }

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=regPayOnline&jstype=jsonp&callback=?&out_no=" + out_no ,
    function (data) {
        if (data.result == "success") {
            //tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);

    //return false;
}




function chkFormFinanceAdd() {
    var money, pwd, oid;
    oid = $("#selFinance").val();
    money = $("#txtMoney").val();
    pwd = $("#txtPwd").val();

    if (money.length < 1) {
        mbox('请输入金额');
        return false;
    }
    else if (pwd.length < 1) {
        mbox('请输入二级密码');
        return false;
    }

    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=financeAdd&jstype=jsonp&callback=?&id="+oid+"&money=" + money + "&pwd=" + pwd ,
    function (data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);

    return false;
}




function chkFormStockAdd() {
    var num, pwd;
    num = $("#txtNum1").val();
    pwd = $("#txtPwd").val();

    if (num < 1) {
        mbox('请输入购买数量');
        return false;
    }
    else if (pwd.length < 1) {
        mbox('请输入二级密码');
        return false;
    }

    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=StockAdd&jstype=jsonp&callback=?&num=" + num + "&pwd=" + pwd,
    function (data) {
        if (data.result == "success") {
                        tbox("恭喜您，操作成功", location.href);
                        $("#boxLoading").css("display", "none");
                        $("#boxMain").css("display", "");
           
            return;
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }

    }
);

    return false;
}

function chkFormHelpAdd() {
    var money, pwd, oid,accountType;
    oid = $("#selHelp").val();
    money = $("#txtMoney").val();
    pwd = $("#txtPwd").val();
    accountType = requestFormValue("selAccountType")

    if (money.length < 1) {
        mbox('请输入金额');
        return false;
    }
    else if (pwd.length < 1) {
        mbox('请输入二级密码');
        return false;
    }

    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=helpAdd&jstype=jsonp&callback=?&id=" + oid + "&money=" + money + "&pwd=" + pwd + "&accountType=" + accountType,
    function (data) {
        if (data.result == "success") {
              if (asktype == '1' && requestType == 'Mobile'){
                  alert("恭喜您，操作成功！");
              } 
             tbox("恭喜您，操作成功！", location.href);
             
             $("#boxLoading").css("display", "none");
             $("#boxMain").css("display", "");
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        };

    }
);

    return false;
}

function chkFormShopCarSubmit() {
    var Contactor, Mob, Address, PayType;
  
      Contactor= $("#txtContactor").val();
      Mob= $("#txtMob").val();
      Address= $("#txtAddress").val();
      PayType= $("#selPayType").val();


      if (Contactor.length < 1) {
        mbox('请输入联系人');
        return false;
    }
    else if (Mob.length < 1) {
        mbox('请输入联系电话');
        return false;
    }
    else if (Address.length < 1) {
        mbox('请输入收货地址');
        return false;
    }
    else if (PayType == 0) {
        mbox('请选择支付方式');
        return false;
    }

    Contactor = encodeURIComponent(Contactor);
    Address = encodeURIComponent(Address);

    $("#boxLoading").css("display", "");
    $("#boxMain").css("display", "none");

    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=ShopCarSubmit&jstype=jsonp&callback=?&Contactor=" + Contactor + "&Mob=" + Mob + "&Address=" + Address + "&PayType=" + PayType + "",
    function(data) {
        if (data.result == "success") {
            tbox("恭喜您，操作成功", location.href);
        }
        else {
            mbox(data.errInfo);
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
            return false;
        }

    }
);

//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "ShopCarSubmit", Contactor: Contactor, Mob: Mob, Address: Address, PayType: PayType }
//    , function(value, textStatus) {
//        if (value.result == "false") {
//            mbox("操作失败 " + value.errInfo);
//            $("#boxLoading").css("display", "none");
//            $("#boxMain").css("display", "");
//            return false;
//        } else {
//            mbox("操作成功");
////            $("#boxLoading").css("display", "none");
////            $("#boxMain").css("display", "");
//            location.href = location;
//            return;
//        }
//    }, "json");
    return false;
}

function cmdZhixing()
{
   var rs=0;
     	jQuery.ajax({
		url: '/ajax/Handler.aspx',
		data: 'type=8&rand='+Math.round(Math.random()*10000),
		type: 'GET',
		beforeSend: function() {},
		error: function(request) {},
		success: function(data) {
		    if(data=="00")
			{
			  document.getElementById("status").innerHTML="执行完毕";
			 rs=1;
			 
			 alert("执行完毕");
			 location.href='data.aspx';
			}
			else if(data=="0")
			{
			   document.getElementById("status").innerHTML="正在完成执行";

			}
			else
		    {
		       document.getElementById("status").innerHTML=data;
		       location.href='data.aspx?zhixing=1';

			}
			
	return rs;
		}
	});
}


function OpenWin1(url)
{
   rnd=Math.random();
   rs=showModalDialog(url+"&rnd="+rnd,"notice","help:no;dialogHeight:550px;dialogWidth:800px;status:no;");
   if(rs!=undefined && rs!=null)
   {
     document.getElementById("luetu").value=rs;
     document.getElementById("luetuShow").innerHTML="<img src='" + rs + "' />";
   }
}

function OpenWin2(url)
{
   rnd=Math.random();
   rs=showModalDialog(url+"&rnd="+rnd,"notice","help:no;dialogHeight:550px;dialogWidth:800px;status:no;");
   if(rs!=undefined && rs!=null)
   {
     document.getElementById("luetu2").value=rs;
     document.getElementById("luetuShow2").innerHTML="<img src='" + rs + "' />";
   }

}


function unselectall() {
    if (document.myform.chkAll.checked) {
        document.myform.chkAll.checked = document.myform.chkAll.checked & 0;
    }
}
function CheckAll(form) {
    for (var i = 0; i < form.Cbs.length; i++) {
        var e = form.Cbs[i];
        if (e.Name != 'chkAll' && e.disabled == false)
            e.checked = form.chkAll.checked;
    }
}

function alertshow(s1) {
    alert(s1);
}



function sendMobileCode(oid, showid) {
    var s1, s2,modi;
    var CodeType = $('input[name="CodeType"]:checked').val();
    modi = requestFormValue("txtmodi");  
    s1 = $("#" + oid).val();
    s2 = $("#txtEmail").val();


    if (typeof (CodeType) == "undefined") {
        mbox("请选择验证方式");
        return false;
    }
    else if ((CodeType == "1") && s1.length < 11) {
        mbox('请输入手机');
        $("#" + oid).focus();
        return false;
    }
    else if (CodeType == "2" && s2.length < 5) {
        mbox('请输入邮箱');
        $("#txtEmail").focus();
        return false;
    }
    else if (CodeType == "2" && emailCheck(s2) == false) {
        mbox('请输入有效的邮箱');
        $("#txtEmail").focus();
        return false;
    }

    if (CodeType == "1") {
        var s_url = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=sendMobileMessage&jstype=jsonp&callback=?&id=" + s1;
        if (modi == "1")
            s_url += "&modi=1";
        //alert(s_url);
        $.getJSON(s_url,
            function (data) {
                if (data.result == "success") {
                    //alert(data.errInfo);
                    $("#" + showid).html('<span style="color:#00f;">获取成功</span>');
                    return;
                }
                else {
                    mbox(data.errInfo);
                    return false;
                }

            }
        );

    }
    else if (CodeType == "2") {
        var s_url = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=sendValidCodeByEmail&jstype=jsonp&callback=?&email=" + s2;
        if (modi == "1")
            s_url += "&modi=1";
       // alert(s_url);
        $.getJSON(s_url,
        function (data) {
            if (data.result == "success") {
                $("#" + showid).html('<span style="color:#00f;">获取成功</span>');
                var mail_url = s2.split('@')[1];
                mail_url = "http://mail." + mail_url.toLowerCase();
                window.open(mail_url);
            }
            else {
                mbox(data.errInfo);
                return false;
            }
        }
    );
    }

    return false;
}


function sendEmailCode(oid, showid) {
    var s1, modi;
    var CodeType = $('input[name="CodeType"]:checked').val();
    modi = requestFormValue("txtmodi");  

    s1 = $("#" + oid).val();
    if (s1.length < 5) {
        mbox('请输入邮箱');
        $("#" + oid).focus();
        return false;
    }
    else if (emailCheck(s1) == false) {
        mbox('请输入有效的邮箱');
        $("#" + oid).focus();
        return false;
    }

    var s_url = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=sendValidCodeByEmail&jstype=jsonp&callback=?&email=" + s1;
    if (modi == "1")
        s_url += "&modi=1";

    $.getJSON(s_url,
        function (data) {
            if (data.result == "success") {
                $("#" + showid).html('<span style="color:#00f;">获取成功</span>');
                var mail_url = s1.split('@')[1];
                mail_url = "http://mail." + mail_url.toLowerCase();
                window.open(mail_url);
            }
            else {
                mbox(data.errInfo);
                return false;
            }
        }
    );


    return false;
}


function setiFrameHeight(oid) {

    var ifm = document.getElementById(oid);

    var subWeb = document.frames ? document.frames[oid].document : ifm.contentDocument;

    if (ifm != null && subWeb != null) {
        //            alert('aaa');
        //            alert(subWeb.body.scrollHeight);
        ifm.height = subWeb.body.scrollHeight;
        ifm.width = subWeb.body.scrollWidth;

    }

}
function getTop(label) {
    var str1 = '';

    if (asktype == "1" || asktype == "2") {
      if (label=='m-main') {
        str1 += '<li><a href="../Home/m-main.html?requestType=Mobile" class="i-footer-active"><span class="i-icon icon-home"></span><span class="am-navbar-label">主页</span></a></li>';
      } else {
        str1 += '<li><a href="../Home/m-main.html?requestType=Mobile"><span class="i-icon icon-home"></span><span class="am-navbar-label">主页</span></a></li>';
      }

      if (label=='m-recmlists') {
        str1 += '<li><a href="../Member/m-recmlists.html?para=re_1&requestType=Mobile" class="i-footer-active"><span class="i-icon icon-Showings"></span><span class="am-navbar-label">团队</span></a></li>';
      } else {
        str1 += '<li><a href="../Member/m-recmlists.html?para=re_1&requestType=Mobile"><span class="i-icon icon-Showings"></span><span class="am-navbar-label">团队</span></a></li>';
      }

      if (label=='m-shopping-mall') {
        str1 += '<li><a href="../Member/m-shopping-mall.html?requestType=Mobile" class="i-footer-active"><span class="i-icon icon-release"></span><span class="am-navbar-label">商城</span></a></li>';
      } else {
        str1 += '<li><a href="../Member/m-shopping-mall.html?requestType=Mobile"><span class="i-icon icon-release"></span><span class="am-navbar-label">商城</span></a></li>';
      }

      if (label=='m-member') {
        str1 += '<li><a href="../Member/m-member.html?requestType=Mobile" class="i-footer-active"><span class="i-icon icon-my"></span><span class="am-navbar-label">我的</span></a></li>';
      } else {
        str1 += '<li><a href="../Member/m-member.html?requestType=Mobile" ><span class="i-icon icon-my"></span><span class="am-navbar-label">我的</span></a></li>';
      }

    } else {
        //str1 = "<li><a href="#" onclick="engine.language(4)">English(英文)</a></li>";
        str1 += '<li><a href="/Mail/collectlists.htm">收件箱(0)</a></li>';
        str1 += '<li><a href="/Mail/message.htm">意见反馈</a></li>';
        str1 += '<li><span class="m-icon m-icon-headphones"></span><label>联系热线：0512-66668888</label></li>';

        //$(".ajaxtopMenu").html(str1);

        str1 = '<li class="home"><a href="../Home/main.htm"><i class="p-l-icon1"></i>首页</a></li>';//首页
        str1 += '<li class="member"><a href="../Member/recmlists.htm?para=re_1"><i class="p-l-icon2"></i>团队</a></li>';//团队
        str1 += '<li class="center"><a href="../Center/HelpAdd2.htm"><i class="p-l-icon3"></i>交易</a></li>'; //业务
        str1 += '<li class="product"><a href="../Product/main.htm"><i class="p-l-icon7"></i>购物</a></li>'; //
        str1 += '<li class="deal"><a href="../Deal/main.htm"><i class="p-l-icon5"></i>奖金</a></li>';//奖金
        str1 += '<li class="mail"><a href="../Mail/messagelists.htm?para=to_admin"><i class="p-l-icon6"></i>留言</a></li>'; //邮箱
        str1 += '<li class="notice"><a href="../Notice/main.htm"><i class="p-l-icon7"></i>公告</a></li>';//公告
        str1 += '<li class="user"><a href="../User/basicedit.htm"><i class="p-l-icon7"></i>设置</a></li>'; //设置
    }    
    
   // str1 += '<li class="transfer"><span class="m-icon m-icon-refresh"></span><a href="../User/transfer.htm" class="ajaxlangTransfer"></a></li>'; //转账
    $(".ajaxheadMenu").html(str1);
}


function changeLang(langType) {
    if (langType == "")
        return false;
    $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=changeLang&jstype=jsonp&callback=?&lang=" + langType,
    function (data) {
        if (data.result == "success") {
            window.location.reload();
            return;
        }
        else {
            //mbox(data.errInfo);
            return false;
        }

    }
);

    return false;
}




function getLang() {
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getLang&jstype=jsonp&callback=?&id=0";
    $.getJSON(url1,
    function (value) {
        document.title = value.siteName;
        var jslength = 0;
        for (var js2 in value) {
            $(".ajaxlang" + js2).html(value[js2]);
        }

    }
        );

}


function cmdComm(otype, oid1, oid2, oid3, oid4, oid5, oid6, oid7, oid8, oid9, oid10) {
    // alert(otype);
    var url1;
    url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=" + otype + "&id1=" + oid1 + "&id2=" + oid2 + "&id3=" + oid3 + "&id4=" + oid4 + "&id5=" + oid5 + "&id6=" + oid6 + "&id7=" + oid7 + "&id8=" + oid8 + "&id9=" + oid9 + "&id10=" + oid10 + "&jstype=jsonp&callback=?";
    $("#testShow").html(url1);
    $.getJSON(url1,
    function (data) {
        if (data.result == "success") {
            url1 = location.href;
            if (otype == "helpBuy")
                url1 = "helpTrade_paying.htm?para=t1_3&r=" + Date();
            tbox("操作成功", url1);

        }
        else {
            mbox(data.errInfo);

        }
        return false;

    }
);
}



function pageChange() {
    var v1 = $("#selPage").val();
    var url1 = $("#hidPagePara").val() + v1;
   // alert(url1);
    window.location.href = url1;
}