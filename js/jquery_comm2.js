var str_langSel = "";


var asktype = navigator.userAgent.match(/.*Mobile.*/) ? "1" : "2";
var askiphone = navigator.userAgent.match(/.*iPhone.*/) ? "1" : "0"; //Android  winphone

function cmdPre() {
    if (typeof (_pageindex) != "undefined") {
        if (_pageindex > 1) {
            _pageindex = _pageindex - 1;
            //getList(getName);
            getListInfo(getName);
        }
    }
}

function cmdNext() {
    if (typeof (_pageindex) != "undefined") {
        if (_pageindex < pagecount) {
            _pageindex = _pageindex + 1;
            //getList(getName);
            getListInfo(getName);
        } 
    }
}






/////////////////////////////////////////////////////
//function getLang() {
//    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=getLang&jstype=jsonp&callback=?&id=0";
//    $.getJSON(url1,
//    function (value) {
//        document.title = value.siteName;
//        //        $(".ajaxsiteName").html(value.siteName);
//        //        $(".ajaxAccessTimeToday").html(value.AccessTimeToday);
//        //        $(".ajaxUserName").html(value.UserName);
//        //        $(".ajaxPassword").html(value.Password);
//        var jslength = 0;
//        for (var js2 in value) {
//            //           if(jslength>2&&jslength<5)
//            //               alert(js2 + "=" + value[js2]);
//            //            jslength++;
//            $(".ajaxlang" + js2).html(value[js2]);
//        }

//    }
//        );

//}

function getListInfo(oGetName) {

//    $("#boxLoading").css("display", "");
//    $("#boxMain").css("display", "none");
    var oclassid = 0, opagesize = 20, opageindex = 1, opara = "", odate = "", odate2 = "";
    if (typeof (classid) != "undefined" && classid != null)
        oclassid = classid;
    if (typeof (pagesize) != "undefined" && pagesize != null)
        opagesize = pagesize;
    if (typeof (_pageindex) != "undefined" && _pageindex != null)
        opageindex = _pageindex;
    if (typeof (para) != "undefined" && para != null)
        opara = para;
    if (typeof (date1) != "undefined" && date1 != null)
        odate = date1;
    if (typeof (date2) != "undefined" && date2 != null)
        odate2 = date2;
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?para=" + opara + "&CheckType=" + oGetName + "&jstype=jsonp&callback=?&classid=" + oclassid + "&pagesize=" + opagesize + "&pageindex=" + opageindex + "&date1=" + odate + "&date2=" + odate2;
    //$("#boxTest").html(url1);
    $.getJSON(url1,
    function(value) {
        if (value.result == "nouser") {
            $("body").html("登录超时");
            return false;
        } else {
            pagecount = value.pageCount;
            rscount = value.rsCount;
            $("#boxPages").html('<a class="link" onclick="cmdPre()">上一页</a> &nbsp; <a class="link" onclick="cmdNext()">下一页</a> ' + opageindex + "/" + pagecount + " 总共" + rscount + "条记录");
            $(".ajaxclassName").html(value.className);
            $("#boxList").html(decodeURIComponent(value.list));
            //$("#boxList").html(value.list);
            if (oGetName == "GetShopCar") {
                $(".ajaxtotalMoney").html(value.totalMoney);
            }

            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");


            return;
        }
    }, "json");
}




function getInfo(oGetName) {
//    $("#boxLoading").css("display", "");
    //    $("#boxMain").css("display", "none");
    var oid = 0, oActName="";
    if (typeof (id1) != "undefined" && id1 != null)
        oid = id1;
    if (typeof (actName) != "undefined" && actName != null)
        oActName = actName;
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=" + oGetName + "&jstype=jsonp&callback=?&id=" + oid;
    $.getJSON(url1,
    function (value) {
        if (value.result == "false") {
            $("body").html("" + value.errInfo);
            return false;
        }
        else {
            if (oGetName == "GetUserInfo2") {
                $(".ajaxuserName").html(value.userName);
                $(".ajaxuserNameVal").val(value.userName);
            }
            else if (oGetName == "GetConfigs") {
                if (value.netType == "-1") {
                    $(".ajaxjdShow").css("display", "none");
                }
            }
            return false;
        }
    }
);
}



function loadData() {
    var oGetName = "";
    var curUrl = encodeURIComponent(location.href);
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=chkComm2&jstype=jsonp&callback=?&curUrl=" + curUrl;
    if (typeof (getName) != "undefined")
        oGetName = getName;
    $.getJSON(url1,
     function (value) {
         //if (asktype == 2)
         document.body.style.backgroundImage = "url(" + value.bgimg + ")";
         if (value.result == "false") {
             tbox(value.errInfo + "正在跳转中……", "/"); //$("body").html(" " + value.errInfo); //加载失败
             return false;
         } else {
             if (typeof (chkPwd2Flag) == "undefined" || chkPwd2Flag == 0 || pwd2Status == 1) {

                 var typeArry = oGetName.split(',');
                 for (var i = 0; i < typeArry.length && oGetName != ""; i++) {
                     if (typeArry[i].indexOf('List') == -1)
                         getInfo(typeArry[i]);
                     else
                         getListInfo(typeArry[i]);
                 }
                 if (typeof (actName) != "undefined" && actName == "memberReg") {
                     if (typeof (id1) != "undefined") {
                         //$(".ajaxuserName").html(id1);
                         $(".ajaxuserNameVal").val(id1);
                     }

                     if (value.regtrueName == "1")
                         $(".box_trueName").css("display", "");
                     if (value.regidCard == "1")
                         $(".box_idCard").css("display", "");
                     if (value.regsex == "1")
                         $(".box_sex").css("display", "");
                     if (value.regaddress == "1")
                         $(".box_address").css("display", "");
                     if (value.regpostCode == "1")
                         $(".box_postCode").css("display", "");
                     if (value.regemail == "1")
                         $(".box_email").css("display", "");
                     if (value.regalipay == "1")
                         $(".box_alipay").css("display", "");
                     if (value.regqq == "1")
                         $(".box_qq").css("display", "");
                     if (value.regweixin == "1")
                         $(".box_weixin").css("display", "");
                     if (value.regbank == "1")
                         $(".box_bank").css("display", "");
                     if (value.regmobile == "1")
                         $(".box_mobile").css("display", "");
                     if (value.mobinvalid == "0")
                         $(".box_yz").css("display", "");
                     if (value.jibieShow == "1")
                         $(".ajaxjibieRegShow").css("display", "");
                     

                     changeUserName();
                     $("#txtTJ").blur(function () {
                         getUserName("txtTJ", "lblTjr", "该会员不存在！", "");
                     });
                     $("#txtJD").blur(function () {
                         getUserName("txtJD", "lblJdr", "该会员不存在！", "");
                     });
                     $("#txtService").blur(function () {
                         getUserName("txtService", "lblService", "该会员不存在！", "");
                     });
                     $("#txtBianhao").blur(function () {
                         getUserName("txtBianhao", "lblBianhao", "", "该账号已经存在");
                     });
                     $("#btnChangeUserName").click(function () {
                         changeUserName();
                     });
                     $("#btnChangeService").click(function () {
                         changeService();
                     });
                     $("#btnChangeJD").click(function () {
                         changeJD();
                     });
                     $("#btnGetMobileCode").click(function () {
                         sendMobileCode('txtMob', 'infoMobileCode');
                     });

                     provinceBind("selProvince", "selCity", "selArea", "reg_notice1", "", "", "");
                     provinceBind("selProvince2", "selCity2", "selArea2", "reg_notice2", "", "", "");


                     bankBind("selBank", "regBank_notice", "");
                     jiBieBind("selJiBie", "regJibienotice", "");

                     $("#boxLoading").css("display", "none");
                     $("#boxMain").css("display", "");
                 }
                 else if (typeof (actName) != "undefined" && actName == "GetNetMapTJ") {
                     $("#BoxList").html('<iframe src="' + ajaxUrl + '/ajax/netmaptj.aspx" id="frmNetMapTJ" height="700" width="100%" frameborder="0" scrolling="auto"></iframe>');
                 }
             }
         }
     }, "json");
}

var ajaxUrl = "";
if (window.location.href.indexOf("210.16") > -1 || window.location.href.indexOf("local") > -1 || window.location.href.indexOf("1u68") > -1)
    ajaxUrl = "";

$(document).ready(function () {
    $(".ajaxlangSel").html(str_langSel);
    getLang();
    var pwd2Status = 0, oGetType = "", ogetName = "";
    if (typeof (getType) != "undefined")
        oGetType = getType;
    if (typeof (getName) != "undefined")
        ogetName = getName;

    if (oGetType != "") {
       loadData();
    }
    else {

        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
    }


    $(document).bind("contextmenu", function(e) {
        //alert("sorry! No right-clicking!");
         return false;
    });
//     if (top.mainFrame == null && top.mainFrame0 == null && top.BaseFrame == null && window.location.href.indexOf("default.html") == -1 && window.location.href.indexOf("login.html") == -1 && window.location.href.indexOf("reg.html") == -1) {
//        location.href = '/err.aspx';
//    }

    //    var asktype = navigator.userAgent.match(/.*Mobile.*/) ? "1" : "2"; //手机1电脑2
    //    if (asktype == "1")
    //        location.href = "mobile.m.com";

});
