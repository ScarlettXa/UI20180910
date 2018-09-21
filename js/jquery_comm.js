var str_top = "", str_langSel = "";

var asktype = navigator.userAgent.match(/.*Mobile.*/) ? "1" : "2";

if (asktype == "1" || asktype == "2") {
    str_top += '<a href="../Deal/main.htm?accounttype=901719FE304E474CED9DDA2602DE5387"><img src="/assets/images/i-m1-icon1.png"><p class="ajaxlangAccountHelp"></p>(<span class="ajaxhuobeiHelp" style="color:#00f;"></span>)</a>'; //静态币
    str_top += '<a href="../Deal/main.htm?accounttype=787298534B692B9D26A75C18EF464B40"><img src="/assets/images/i-m1-icon2.png"><p class="ajaxlangAccountHelp2"></p>(<span class="ajaxhuobeiHelp2" style="color:#00f;"></span>)</a>'; //动态币
    str_top += '<a href="#"><img src="/assets/images/i-m1-icon3.png"><p class="ajaxlangAccountHuobei1"></p>(<span class="ajaxhuobei1" style="color:#00f;"></span>)</a>'; // 激活币
    str_top += '<a href="#"><img src="/assets/images/i-m1-icon4.png"><p class="ajaxlangAccountBonus"></p>(<span class="ajaxqianBao" style="color:#00f;"></span>)</a>'; // 排单币
    str_top += '<a href="#"><img src="/assets/images/i-m1-icon5.png"><p class="ajaxlangAccountHuobei2"></p>(<span class="ajaxhuobei2" style="color:#00f;"></span>)</a>'; //动态币
    // str_top += '<a href="#"><img src="/assets/images/i-m1-icon6.png"><p class="ajaxlangStockNum"></p>(<span class="ajaxstockNum" style="color:#00f;"></span>)</a>'; // 购物币
    str_top += '<a href=""><img src="/assets/images/i-m1-icon7.png"><p class="ajaxlangDirectRecommendation"></p>(<span class="ajaxtuiJianNum" style="color:#00f;"></span>)</a>'; //直接推荐
    str_top += '<a href="../Mail/messagelists.htm?para=to_admin"><img src="/assets/images/i-m1-icon8.png"><p class="ajaxlangMessageBoard"></p>(<span class="ajaxmailNew" style="color:#00f;"></span>)</a>'; //动态币
    str_top += '<a href="../Mail/message.htm"><img src="/assets/images/i-m1-icon8.png"><p class="ajaxlangFeedback"></p></a>'; //动态币
    
} else {
    str_top += '<li class="display-ib">';
    str_top += str_langSel;
    str_top += '</li>';
    str_top += '<li class="display-ib"><a href="../Deal/main.htm?accounttype=901719FE304E474CED9DDA2602DE5387" class="ajaxlangAccountHelp"></a>(<a class="ajaxhuobeiHelp" style="color:#00f;"></a>)</li>'; //静态币
    str_top += '<li class="display-ib"><a href="../Deal/main.htm?accounttype=787298534B692B9D26A75C18EF464B40" class="ajaxlangAccountHelp2"></a>(<a class="ajaxhuobeiHelp2" style="color:#00f;"></a>)</li>'; //动态币
    str_top += '<li class="display-ib"><a class="ajaxlangAccountHuobei1"></a>(<a class="ajaxhuobei1" style="color:#00f;"></a>)</li>'; //激活币
    str_top += '<li class="display-ib"><a class="ajaxlangAccountBonus"></a>(<a class="ajaxqianBao" style="color:#00f;"></a>)</li>'; //排单币
    str_top += '<li class="display-ib"><a class="ajaxlangAccountHuobei2"></a>(<a class="ajaxhuobei2" style="color:#00f;"></a>)</li>'; //购物币
    // str_top += '<li class="display-ib"><a class="ajaxlangStockNum"></a>(<a class="ajaxstockNum" style="color:#00f;"></a>)</a></li>'; //购物币
    str_top += '<li class="display-ib"><a class="ajaxlangDirectRecommendation"></a>(<a class="ajaxtuiJianNum" style="color:#00f;"></a>)</li>'; //直接推荐
    str_top += '<li class="display-ib"><a href="../Mail/messagelists.htm?para=to_admin" class="ajaxlangMessageBoard"></a>(<a class="ajaxmailNew" style="color:#00f;"></a>)</li>';
    str_top += '<li class="display-ib"><a href="../Mail/message.htm" class="ajaxlangFeedback">意见反馈</a></li>';
}



//asktype = "2";
var askiphone = navigator.userAgent.match(/.*iPhone.*/) ? "1" : "0"; //Android  winphone


function getList(oGetName) {

//    $("#boxList").html('<img src="/images/loading.gif" width="16" height="16" alt="loading" />');
//    //$("#boxList").html('');
//    $("#boxPages").html('<a class="link" onclick="cmdPre()">上一页</a> &nbsp; <a class="link" onclick="cmdNext()">下一页</a> ' + _pageindex + "/" + pagecount + " 总共" + rscount + "条记录");
//    var url1 = "/ajax/handler.aspx?type=" + oGetName + "&classid=" + classid + "&pagesize=" + pagesize + "&pageindex=" + _pageindex + "&w=" + para + "&rid=" + Math.random();
//    //url1 = "/ajax/handler.aspx?type=GetShopCar&classid=0&pagesize=20&pageindex=1&w=&rid=0.881967225910405";
//   // url1 = "/ajax/handler.aspx?type=" + oGetName + "&classid=" + classid + "&pagesize=" + pagesize + "&pageindex=" + _pageindex + "&w=" + para + "&rnid=1";
//    $("#boxList").load(url1);
//    //alert(url1);
//    //$("#boxTest").html(url1);
}





function cmdPre() {
    var len = arguments.length;
    if (typeof (_pageindex) != "undefined") {
        if (_pageindex > 1) {
            _pageindex = _pageindex - 1;
            //getList(getName);
            if (len == 2)
                getListInfo(arguments[1]);
            else
                getListInfo(getName);
        }
    }
}

function cmdNext() {
    var len = arguments.length;
    if (typeof (_pageindex) != "undefined") {
        if (_pageindex < pagecount) {
            _pageindex = _pageindex + 1;
            //getList(getName);
            if (len == 2)
                getListInfo(arguments[1]);
            else
                getListInfo(getName);
        }
    }
}


function chkPwd2Login() {
//    $.post("/WS/WSAccounts.aspx", { Action: "post", CheckType: "chkPwd2Login" }
//    , function(value, textStatus) {
//        if (value.result == "success") {
//            _pwd2Status = 1;
//            return true;
//        }
//        else if (value.result == "false") {//
//            //alert("登录失败 " + value.errInfo);
//            // $("body").html("登录失败 " + value.errInfo);
//            _pwd2Status = 0;
//            return false;
//        }
//        else {
//            _pwd2Status = 0;
//            //location.href = "pwd2login.html";
//            return false;
//        }
//    }, "json");
}



/////////////////////////////////////////////////////


function getListInfo(oGetName) {

//    $("#boxLoading").css("display", "");
//    $("#boxMain").css("display", "none");
    var oclassid = 0, opagesize = 20, opageindex = 1, opara = "", odate = "", odate2 = "", oschkey = "";
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
    if (typeof (schkey) != "undefined" && schkey != null)
        oschkey = schkey;
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?para=" + opara + "&CheckType=" + oGetName + "&jstype=jsonp&callback=?&classid=" + oclassid + "&pagesize=" + opagesize + "&pageindex=" + opageindex + "&date1=" + odate + "&date2=" + odate2 + "&schkey=" + oschkey;
    $("#boxTestShow").html(url1);
    //alert(url1);
    $.getJSON(url1,
    function (value) {
        if (value.result == "nouser") {
            $("body").html("登录超时");
            return false;
        } else {
            pagecount = value.pageCount;
            rscount = value.rsCount;
            $("#boxPages").html('<a class="link" onclick=cmdPre("cmdPage","' + oGetName + '")>上一页</a> &nbsp; <a class="link" onclick=cmdNext("cmdPage","' + oGetName + '")>下一页</a> ' + opageindex + "/" + pagecount + " 总数:" + rscount);
            $(".ajaxclassName").html(value.className);
            $(".ajaxclassMenu").html(value.classMenu);
            $(".ajaxconTitle").html(value.conTitle);
            $("#boxList").empty();
            //alert($("#boxList").html());
            // alert(decodeURIComponent(value.list));
            if (oGetName.indexOf("NewsList") > -1) {
                $(".boxNewsList").html(decodeURIComponent(value.list));
                $("#boxList").html(decodeURIComponent(value.list));
            }
            else if (oGetName.indexOf("ProductList") > -1)
                $(".boxProductList").html(decodeURIComponent(value.list));
            else
                $("#boxList").html(decodeURIComponent(value.list));
                
                if (asktype == "1" || asktype == "2") {
                    if (oGetName == "GetHelpTradeList") {
                        var data = getTableContent("boxList");
                        console.log("boxList:"+data);
                        var tmp = '';
                        for(var i=0,rows=data.length; i<rows; i++){
                          if (i > 0) {
                             tmp = tmp + '<div class="liebiao3 orange">';
                             if (opara == 't1_1') {
                                tmp = tmp + '<div class="liebiao-tit">买入交易匹配订单</div>';
                             } else if (opara == 't1_2') {
                                tmp = tmp + '<div class="liebiao-tit">卖出交易匹配订单</div>';
                             } else if (opara == 't_1') {
                                tmp = tmp + '<div class="liebiao-tit">'+ data[i][1] +'交易匹配订单</div>';
                             }
                             tmp = tmp + '<ul>';
                          }
                          for(var j=0,cells=data[i].length; j<cells; j++){
                            if (i > 0) {
                                tmp = tmp + '<li>';
                                tmp = tmp + '<span>' + data[i][j] + '</span>';
                                tmp = tmp + data[0][j];
                                tmp = tmp + '</li>';
                            }
                          }
                          if (i > 0) {
                             tmp = tmp + '</ul>';
                             tmp = tmp + '</div>';
                          }
                        }
                        $("#helpTradeList").html(tmp);
                    } else if (oGetName == "GetMoneyHistoryList") {
                        var data = getTableContent("moneyHistoryList");
                        console.log("moneyHistoryList:"+data);
                        var tmp = '';
                        for(var i=0,rows=data.length; i<rows; i++){
                            if (i > 0) {
                               tmp = tmp + '<ul class="liebiao">';
                              for(var j=0,cells=data[i].length; j<cells; j++){
                                tmp = tmp + '<li><span>' + data[i][j] + '</span> ' + data[0][j] + '</li>';
                              }
                              tmp = tmp + '</ul>';
                            }
                        }
                        $("#helpTradeList").html(tmp);
                    } else if (oGetName == "GetMessageList2") {
                        var data = getTableContent("messageList");
                        console.log("messageList:"+data);
                        var tmp = '';
                        for(var i=0,rows=data.length; i<rows; i++){
                            if (i > 0) {
                               tmp = tmp + '<ul class="liebiao">';
                              for(var j=0,cells=data[i].length; j<cells; j++){
                                tmp = tmp + '<li><span>' + data[i][j] + '</span> ' + data[0][j] + '</li>';
                              }
                              tmp = tmp + '</ul>';
                            }
                        }
                        $("#helpTradeList").html(tmp);
                    }  else if (oGetName == "getMyMemberList") {
                        var data = getTableContent("memberList");
                        console.log("memberList:"+data);
                        var tmp = '';
                        for(var i=0,rows=data.length; i<rows; i++){
                            if (i > 0) {
                               tmp = tmp + '<ul class="liebiao">';
                              for(var j=0,cells=data[i].length; j<cells; j++){
                                tmp = tmp + '<li><span>' + data[i][j] + '</span> ' + data[0][j] + '</li>';
                              }
                              tmp = tmp + '</ul>';
                            }
                        }
                        $("#myMemberList").html(tmp);
                    }
                    
                }

            if (oGetName == "GetMessageList2") {
                $(".picSmall").imgbox();
              
            }

            if (oGetName == "GetShopCar" || oGetName == "GetShopCarList" || oGetName == "GetShopCarList_mobile") {
                $(".ajaxtotalMoney").html(value.totalMoney);
            }



            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");


            return;
        }
    }, "json");
}

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
////           if(jslength>2&&jslength<5)
////               alert(js2 + "=" + value[js2]);
//            //            jslength++;
//            $(".ajaxlang" + js2).html(value[js2]);
//        }

//    }
//        );

//}
//
//
/** 
   * 遍历表格内容返回数组
   * @param Int  id 表格id
   * @return Array
   */
  function getTableContent(id){
    var mytable = document.getElementById(id);
    var data = [];
    for(var i=0,rows=mytable.rows.length; i<rows; i++){
      for(var j=0,cells=mytable.rows[i].cells.length; j<cells; j++){
        if(!data[i]){
          data[i] = new Array();
        }
        data[i][j] = mytable.rows[i].cells[j].innerHTML;
      }
    }
    return data;
  }

  /** 
   * 显示表格内容
   * @param Int  id 表格id
   */
  function showTableContent(id){
    var data = getTableContent(id);
    var tmp = '';
    for(i=0,rows=data.length; i<rows; i++){
      for(j=0,cells=data[i].length; j<cells; j++){
        tmp += data[i][j] + ',';
      }
      tmp += '<br>';
    }
    document.getElementById('result').innerHTML = tmp;
  }

function getInfo(oGetName) {
//    $("#boxLoading").css("display", "");
    //    $("#boxMain").css("display", "none");
    //alert("test1");
    var oid = 0, oActName="",s1="",s2="";
    if (typeof (id1) != "undefined" && id1 != null)
        oid = id1;
    if (typeof (actName) != "undefined" && actName != null)
        oActName = actName;
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=" + oGetName + "&jstype=jsonp&callback=?&id=" + oid;
    //alert(url1);
    $("#testShow").html(url1);
    $.getJSON(url1,
    function (value) {
        // alert(oGetName+"____"+value.result);
        if (value.result == "nouser") {
            $("body").html("登录超时");
            return false;
        }
        else if (value.result == "false") {
            $("body").html("" + value.errInfo);
            return false;
        }
        else {
            if (oGetName == "GetWebIndex") {
                $("#ajaxtitle").html(value.companyName);
                $(".ajaxsiteName").html(value.siteName);
                $(".ajaxphone").html(value.phone);
                $(".ajaxaddress").html(value.address);
                $(".ajaxcompanyName").html(value.companyName);
                $(".ajaxurl").html(value.url);
                $(".ajaxfax").html(value.fax);
                $(".ajaxcontactor").html(value.contactor);
                $(".ajaxpic").html(value.pic);
                //$(".ajaxscrollAd").html(value.scrollPic);
                $(".ajaxlogo").html(value.logo);
                if (value.logo == "")
                    $(".ajaxlogo").html(value.companyName);
                $(".ajaxaboutUs").empty();
                $(".ajaxaboutUs").html(value.aboutUs);

            }
            else if (oGetName == "GetWebScrollAd") {
                $(".ajaxscrollAd").html(value.list);
            }
            else if (oGetName == "GetWebMenu") {
                $(".ajaxGetMenu").html(value.list);
            }
            else if (oGetName == "GetWebDefaultNews") {
                $(".ajaxnews").html(value.list);
            }
            else if (oGetName == "GetWebDefaultPicNews") {
                $(".ajaxpicNews").empty();
                $(".ajaxpicNews").html(value.list);
            }
            else if (oGetName == "GetWebDefaultScrollProductPic") {
                $(".ajaxScrollProductPic").empty();
                $(".ajaxScrollProductPic").html(value.list);
            }
            else if (oGetName == "GetWebAboutView") {
                $(".ajaxclassName").html(value.className);
                $(".ajaxlistInfo").html(value.list);
                //$(".ajaxcon").html(decodeURIComponent(value.con));
                $(".ajaxcon").html('<iframe id="frm1" src="' + ajaxUrl + '/ajax/newsview.aspx?id=' + id1 + '&act=webnewsview" frameborder="0" scrolling="no" width="100%" height="2000"></iframe>');
                $(".ajaxtitle").html(value.title);
                $(".ajaxconTitle").html(value.conTitle);
            }
            else if (oGetName == "GetWebNewsView") {
                $(".ajaxclassName").html(value.className);
                $(".ajaxlistInfo").html(value.list);
                //$(".ajaxcon").html(decodeURIComponent(value.con));
                console.log('ajaxmailContent:'+ajaxmailContent);
                $(".ajaxcon").html('<iframe id="frm1" src="' + ajaxUrl + '/ajax/newsview.aspx?id=' + id1 + '&act=webnewsview" frameborder="0" scrolling="no" width="100%" height="2000"></iframe>');

                $(".ajaxtitle").html(value.title);
                $(".ajaxconTitle").html(value.conTitle);
                $(".ajaxaddtime").html(value.addtime);
            }
            else if (oGetName == "GetConfigs") {
                //alert(value.netType);
                if (value.netType == "-1") {
                    $(".ajaxjdShow").css("display", "none");
                }
            }
            else if (oGetName == "GetLogin") {
//                if (asktype == 2)
//                    document.body.style.backgroundImage = "url(" + value.bgimg + ")"; ///images/demo/img2.jpg

               
                $(".ajaxaaskTime1").html(value.askTime1);
                $(".ajaxaaskTime2").html(value.askTime2);
                if (value.askFlag == "1")
                    $(".ajaxaskFlag").html("当前可以访问");
                else {
                    $(".ajaxaskFlag").html("当前不可以访问");
                    $(".boxBtn").css("display", "none");
                }

                //alert(value.siteStopFlag);
                if (value.siteStopFlag == "1") {
                    // document.title = '网站维护中';
                    document.body.style.background = "none";
                    if (value.siteStopText == "") {
                        $("#boxStop").html('<img src="/images/weihu.jpg">');
                    }
                    else {
                        $("#boxStop").html(value.siteStopText);
                        document.title = value.siteStopText;
                    }
                    $("#boxLoading").css("display", "none");
                    $("#boxMain").css("display", "none");
                    $("#boxStop").css("display", "");
                }
                else {
                    $("#boxLoading").css("display", "none");
                    $("#boxMain").css("display", "");
                }

            }
            else if (oGetName == "GetNewsInfo") {

                $(".ajaxclassName").html(value.className);
                $(".ajaxtitle").html(value.title);
                $(".ajaxaddtime").html(value.addtime);
                $(".ajaxcon").empty();
                //$(".ajaxcon").html(decodeURIComponent(value.con));
                $(".ajaxcon").html('<iframe id="frm1" src="' + ajaxUrl + '/ajax/newsview.aspx?id=' + id1 + '&act=membernewsview" frameborder="0" scrolling="yes" width="100%" height="2000"></iframe>');
                // var newsview = $('#newsview').html();
                // $(".ajaxcon").html(newsview);
                
                $(".ajaxconFrm").empty();
                $(".ajaxconFrm").html('<iframe id="frmCon"  width="100%" height="1550" frameborder="0" scrolling="auto" src="' + ajaxUrl + '/ajax/memberNews.aspx?id=' + id1 + '" onload="SetWinHeight(this)"></iframe>');

                $("#boxLoading").css("display", "none");
                $("#boxMain").css("display", "");
            }
            else if (oGetName == "GetMailInfo") {

                $(".ajaxfrom").html(value.from);
                $(".ajaxto").html(value.to);
                $(".ajaxcon").html(decodeURIComponent(value.con));

            }
            else if (oGetName == "GetPayInfo") {
                if (value.rs == "1") {
                    $("#boxLoading").css("display", "none");
                    $("#boxMain").css("display", "");
                }
                else if (value.rs == "0") {
                    $("#boxLoading").css("display", "none");
                    $("#boxMain2").css("display", "");
                }

                window.close();
            }
            else if (oGetName == "GetProductInfo") {

                $(".ajaxtitle").html(value.title);
                $(".ajaxcon").html(decodeURIComponent(value.con));
                $(".ajaxconFrm").html('<iframe id="frmCon"  width="100%" height="1550" frameborder="0" scrolling="auto" src="' + ajaxUrl + '/ajax/memberProduct.aspx?id=' + id1 + '" onload="SetWinHeight(this)"></iframe>');
                $(".ajaxpic").html(decodeURIComponent(value.pic));
                $(".ajaximg").attr("src", decodeURIComponent(value.pic));
                $(".ajaxprice1").html(value.price1);
                $(".ajaxprice2").html(value.price2);
                $(".ajaxpnum").html(value.pnum);
                $(".ajaxdanwei").html(value.danwei);

                $("#boxLoading").css("display", "none");
                $("#boxMain").css("display", "");
            }
            else if (oGetName == "GetMemberInfo") {
                $(".ajaxuserName2").html(value.userName);
                $(".ajaxmob2").html(value.mob);
                $(".ajaxbank2").html(value.bank);
                $(".ajaxbankUser2").html(value.bankUser);
                $(".ajaxbankNumber2").html(value.bankNumber);
                $(".ajaxbankAddress2").html(value.bankAddress);
                $(".ajaxalipayNumber2").html(value.alipayNumber);
                $(".ajaxwxid2").html(value.wxid);
            }
            else if (oGetName == "GetUserInfo") {
                //alert("test");

                $(".ajaxjjToday").html(value.jjtoday);

                $(".ajaxuserName").html(value.userName);
                if (value.hege == "0")
                    $(".ajaxuserStatus").html('<span class=\"red\">未激活</span> <a href="#" onclick="activeSelf();">立即激活</a>');
                $(".ajaxjiBie").html(value.jiBie);
                $(".ajaxqianBao").html(value.qianBao);
                $(".ajaxhuobei1").html(value.huobei1);
                $(".ajaxhuobei2").html(value.huobei2);
                $(".ajaxhuobei3").html(value.huobei3);
                $(".ajaxhuobei4").html(value.huobei4);
                $(".ajaxqianBaoDongJie").html(value.qianBaoDongJie);
                $(".ajaxhuobeiChongFu").html(value.huobeiChongFu);
                $(".ajaxhuobeiHelp").html(value.huobeiHelp);
                $(".ajaxhuobeiHelp2").html(value.huobeiHelp2);
                $(".ajaxstockNum").html(value.stockNum);
                $(".ajaxmob").html(value.mob);
                $(".ajaxaddress").html(value.address);
                $(".ajaxaddressAll").html(value.addressAll);
                $(".ajaxqq").html(value.qq);
                $(".ajaxalipayNumber").html(value.alipayNumber);
                $(".ajaxwxid").html(value.wxid);
                $(".ajaxpostCode").html(value.postCode);
                $(".ajaxbank").html(value.bank);
                $(".ajaxbankUser").html(value.bankUser);
                $(".ajaxbankNumber").html(value.bankNumber);
                $(".ajaxbankAddress").html(value.bankAddress);
                $(".ajaxbankAddressAll").html(value.bankAddressAll);
                if (value.tj != "")
                    $(".ajaxtj").html('<a href="memberview.htm?id=' + value.tj_rnd + '">' + value.tj + '</a>'); //查看联系方式
                else
                    $(".ajaxtj").html(value.tj);
                $(".ajaxjd").html(value.jd);
                $(".ajaxservice").html(value.service);
                $('.menuBusiness').attr('href', '/reg.html?tj=' + value.userName);
                $('.menuBusiness').attr('target', '_blank');
                if (value.ifService == "1")
                    $(".ajaxifService").html("是 <span style=\"color:#0066ff;\">(" + value.service_jbName + ")</span>");
                else
                    $(".ajaxifService").html("否");
                if (value.hege == "0")
                    $(".ajaxactive").html(" 未激活");
                // s2 = curUrl + '/reg.html?tj=' + value.userName;
                s2 =  curUrl + '/reg.html?tj=' + value.userName;
                s1 = '<a href="' + s2 + '" target="_blank">' + s2 + '</a>';
                // if (asktype != "1")
                    s1 += ' <input type="hidden" id="copy_value" value="' + s2 + '"/> <input class="copy_btn" type="button" value="复制"/> ';//<a href="' + s2 + '" target="_blank">注册</a>
                $(".ajaxtjLink").html(s1);
                s1 = ' <img src="http://qr.topscan.com/api.php?text=' + s2 + '" style=" margin:5px 0 0 0; width:120px;height:120px;"/>';
                $(".ajaxtjPic").html(s1);
                //alert(s1);
                if (window.clipboardData) {
                    $('.copy_btn').click(function () {
                        window.clipboardData.setData("Text", $(this).prev('input').val());
                        alert('OK！');
                    });
                }
                else if (oActName == "MHome") {
                    //alert('test');
                    $(".copy_btn").zclip({
                        path: '/js/ZeroClipboard/ZeroClipboard.swf',
                        copy: function () { return $('#copy_value').val(); }, //return $(this).prev('input').val(); 
                        afterCopy: function () { alert('OK！'); }
                    });
                  
                }

                $(".ajaxregDate").html(value.regDate);
                $(".ajaxactiveDate").html(value.activeDate);
                $(".ajaxtrueName").html(value.trueName);
                $(".ajaxidCard").html(value.idCard);
                $(".ajaxemail").html(value.email);
                $(".ajaxdateNow").html(value.dateNow);
                $(".ajaxshouXu").html(value.shouXu * 100);
                $(".ajaxstockPrice").html(value.stockPrice);
                if (parseInt(value.netType) < 2)
                    $(".ajaxnetTypeShow").css("display", "none");
                if (parseInt(value.jibieShow) == 0)
                    $(".ajaxjibieShow").css("display", "none");
                if (parseInt(value.financeShow) == 0)
                    $(".ajaxfinanceShow").css("display", "none");
                if (parseInt(value.helpSystemShow) == 0)
                    $(".ajaxhelpSystemShow").css("display", "none");
                if (parseInt(value.stockTradeShow) == 0)
                    $(".ajaxstockTradeShow").css("display", "none");
                $(".ajaxpay_out_no").html(value.pay_out_no);
                $(".ajaxpay_note").html(value.pay_note);
                $(".ajaxtuiJianNum").html(value.tuiJianNum);
                $(".ajaxteamNum_jd").html(value.teamNum_jd);
                $(".ajaxkefuQQ").html(value.kfQQ);
                $(".ajaxkefuQQLink").html('<a href="tencent://message/?uin=' + value.kfQQ + '&site=在线客服&menu=yes" target="_blank"></a>');
                $(".ajaxkefuTel").html(value.kfTel);
                if (value.kefuClose == "0")
                    $(".mn-suspend").css("display", "");
                if (asktype == "1") {
                    $(".ajaxalipay").html('<a href="alipaywap.htm" target="mainFrame">在线充值</a>');
                    $(".ajaxalipay2").html('<a href="alipaywap.htm">在线充值</a>');
                }
                else {
                    $(".ajaxalipay").html('<a href="alipay.htm" target="mainFrame">在线充值</a>');
                    $(".ajaxalipay2").html('<a href="alipay.htm">在线充值</a>');
                }

                // var str1 = "";
                //                str1 += '<li><a href="/Mail/collectlists.htm?para=from_1">收件箱(' + value.mailNew + ')</a></li>';
                //                str1 += '<li><a href="/Mail/message.htm">意见反馈</a></li>';
                //                str1 += '<li><span class="m-icon m-icon-headphones"></span><label>联系热线：' + value.kfTel + '</label></li>';
                //$(".ajaxtopMenu").html(str1);
                $(".ajaxmailNew").html(value.mailNew);
                $(".ajaxkfTel").html(value.kfTel);


                $(".ajaxuserNameInput").val(value.userName);
                $(".ajaxjiBieInput").val(value.jiBie);
                $(".ajaxqianBaoInput").val(value.qianBao);
                $(".ajaxhuobeiChongFuInput").val(value.huobeiChongFu);
                $(".ajaxmobInput").val(value.mob);
                if (value.mob == "")
                    $(".ajaxmobInput").css("display", "");
                $(".ajaxaddressInput").val(value.address);
                $(".ajaxaddressAllInput").val(value.addressAll);
                $(".ajaxqqInput").val(value.qq);
                $(".ajaxalipayNumberInput").val(value.alipayNumber);
                $(".ajaxwxidInput").val(value.wxid);
                $(".ajaxpostCodeInput").val(value.postCode);
                $(".ajaxbankInput").val(value.bank);
                $(".ajaxbankUserInput").val(value.bankUser);
                $(".ajaxbankNumberInput").val(value.bankNumber);
                $(".ajaxbankAddressInput").val(value.bankAddress);
                $(".ajaxbankAddressAllInput").val(value.bankAddressAll);
                $(".ajaxtjInput").val(value.tj);
                $(".ajaxjdInput").val(value.jd);
                $(".ajaxserviceInput").html(value.service);
                $(".ajaxregDateInput").val(value.regDate);
                $(".ajaxactiveDateInput").val(value.activeDate);
                $(".ajaxtrueNameInput").val(value.trueName);
                $(".ajaxidCardInput").val(value.idCard);
                $(".ajaxemailInput").val(value.email);
                if (value.email == "")
                    $(".ajaxemailInput").css("display", "");
                $(".ajaxdateNowInput").val(value.dateNow);
                $(".ajaxshouXuInput").val(value.shouXu * 100);
                $(".ajaxpay_out_noInput").val(value.pay_out_no_pc);
                $(".ajaxpay_noteInput").val(value.pay_note_pc);
                $(".ajaxpay_out_noInput_pc").val(value.pay_out_no_pc);
                $(".ajaxpay_noteInput_pc").val(value.pay_note_pc);
                $(".ajaxpay_out_noInput_mobile").val(value.pay_out_no_mobile);
                $(".ajaxpay_noteInput_mobile").val(value.pay_note_mobile);

                //alert("test");
                sex = value.sex;
                addressProvince = value.addressProvince;
                addressCity = value.addressCity
                addressArea = value.addressArea
                bank = value.bank;
                bankProvince = value.bankProvince;
                bankCity = value.bankCity;
                bankArea = value.bankArea;

                if (value.serviceStatus == "1") {
                    $("#menuService").css("display", "none");
                    $("#menuMyMember2").css("display", "");
                    $("#menuCashManage").css("display", "");
                }
                else {
                    // $("#menuMyMember1").css("display", "none;");
                    $("#menuMyMember2").css("display", "none");
                    $("#menuCashManage").css("display", "none");
                    $("#menuService").css("display", "");
                    // $("#menuMyMember1").html('');
                    // $("#menuMyMember2").html('');
                }

                //alert(value.netType);
                if (value.serviceStatus == "0" && value.netMap_jd_hide == "0") {
                    $("#menuMap").css("display", "");
                 }
                else if (value.serviceStatus == "1" && value.netMap_jd_service_hide == "0") {
                    $("#menuMap").css("display", "");
                }
                else if (value.netType == "2") {
                    $("#menuNetMap1").css("display", "");
                }
                else if (value.netType == "3") {
                    $("#menuNetMap3").css("display", "");
                }
                else if (parseInt(value.netType) > 3) {
                    $("#menuNetMap2").css("display", "");
                }

                if (parseInt(value.teamFenLiShow) == 1) {
                    $("#menuNetMapFenLi").css("display", "");
                }


                if (value.hege == "1") {
                    $("#menuMyinfoModi2").css("display", "none;");
                    $("#menuMyinfoModi2").html('');
                }

                if (oActName == "myInfoModi") {
                    provinceBind("selProvince", "selCity", "selArea", "reg_notice1", addressProvince, addressCity, addressArea);
                    provinceBind("selProvince2", "selCity2", "selArea2", "reg_notice2", bankProvince, bankCity, bankArea);


                    bankBind("selBank", "regBank_notice", bank);
                    $("#selSex").val(sex);
                }
                else if (oActName == "serviceApply") {
                    if (value.serviceStatus == "1") {
                        tbox("您已经是服务中心", "../home/main.htm"); //$("body").html("您已经是服务中心");
                    }
                    else if (value.serviceApply == "1")
                        tbox("正在审核中", "../home/main.htm"); // $("body").html("正在审核中");
                    else
                        provinceBind("selProvince", "selCity", "selArea", "reg_notice1", "", "", "");

                }
                else if (oActName == "huiKuan" || oActName == "cash") {
                    bankBind("selBank", "regBank_notice", bank);
                    if (oActName == "cash")
                        serviceBind("selService", "serviceNotice", "");
                    // alert(oActName);
                }
                else if (oActName == "shengJi" || oActName == "myInfoModi2") {
                    jiBieBind("selJiBie", "regJibienotice", "");
                }

                $("#boxLoading").css("display", "none");
                $("#boxMain").css("display", "");
            }
            else if (oGetName == "GetOrderInfo") {
                $(".ajaxorderNumber").html(value.orderNumber);
                $("#boxList").empty();
                $("#boxList").html(value.list);
                $(".ajaxtotalMoney").html(value.totalMoney);
                $(".ajaxcontactor").html(value.contactor);
                $(".ajaxtel").html(value.tel);
                $(".ajaxaddress").html(value.address);
                $("#boxLoading").css("display", "none");
                $("#boxMain").css("display", "");
            }
            else if (oGetName == "GetNetMap") {
                if (value.result == 'false') {
                    $(".ajaxbianHaoCurInput").html(value.bianHaoCur);
                    $("#boxLoading").css("display", "none");
                    $("#boxMain").css("display", "");
                    return false;
                }
                else {
                    $("#boxList").empty();
                    $("#BoxList").html(value.list);
                    $(".ajaxbianHaoCurInput").val(value.bianHaoCur);
                }
                $("#boxLoading").css("display", "none");
                $("#boxMain").css("display", "");
            }
            else if (oGetName == "GetCanshu") {
                $(".ajaxQQ").html(value.qqList);
                $(".ajaxTel").html(value.telList);
            }
            else if (oGetName == "GetMenuInfo" || oGetName.indexOf('GetMenuInfo') > -1) {
                $(".ajaxmenuAbout").html(value.menuAbout);
                $(".ajaxmenuAboutFrm").html(value.menuAboutFrm);
            }
            else if (oGetName == "GetHelpTradeInfo1") {
                $(".ajaxhelpTradeInfo1").html(value.list);

                if (asktype == "1" || asktype == "2") {
                     var data = getTableContent("ajaxhelpTradeInfo1");
                    console.log("ajaxhelpTradeInfo1:"+data);
                    var tmp = '';
                    var num = 0;
                    for(var i=0,rows=data.length; i<rows; i++){
                      if (i > 0) {
                         tmp = tmp + '<div class="liebiao3 orange">';
                         tmp = tmp + '<div class="liebiao-tit">买入交易匹配订单</div>';
                         tmp = tmp + '<ul>';
                         num = num + 1;
                      }
                      for(var j=0,cells=data[i].length; j<cells; j++){
                        if (i > 0) {
                            if (j == 3) {
                                tmp = tmp + '<li style="height: 96px;">';
                                tmp = tmp + '<span style="width: 86px;height: 86px;">' + data[i][j] + '</span>';
                            } else {
                                tmp = tmp + '<li>';
                                tmp = tmp + '<span>' + data[i][j] + '</span>';
                            }
                            tmp = tmp + data[0][j];
                            tmp = tmp + '</li>';
                        }
                      }
                      if (i > 0) {
                         tmp = tmp + '</ul>';
                         tmp = tmp + '</div>';
                      }
                    }
                    $(".payInfoList").html(tmp);
                    if (num > 0) {
                        $("#payComfirmNum").show();
                        $("#payComfirmNum").html('('+num+')');
                    } else {
                        $("#payComfirmNum").hide();
                        $("#payComfirmNum").html('('+num+')');
                    }
                    
                }
               
            }
            else if (oGetName == "GetHelpTradeInfo2") {
                $(".ajaxhelpTradeInfo2").html(value.list);
               // $(".picSmall").imgbox();
                if (asktype == "1" || asktype == "2") {
                    var data = getTableContent("ajaxhelpTradeInfo2");
                    console.log("ajaxhelpTradeInfo2:"+data);
                    var tmp = '';
                    var num = 0;
                    for(var i=0,rows=data.length; i<rows; i++){
                      if (i > 0) {
                         tmp = tmp + '<div class="liebiao3 orange">';
                         tmp = tmp + '<div class="liebiao-tit">卖出交易匹配订单</div>';
                         tmp = tmp + '<ul>';
                         num = num + 1;
                      }
                      for(var j=0,cells=data[i].length; j<cells; j++){
                        if (i > 0) {
                            if (j == 3) {
                                tmp = tmp + '<li style="height: 96px;">';
                                tmp = tmp + '<span style="width: 86px;height: 86px;">' + data[i][j] + '</span>';
                            } else {
                                tmp = tmp + '<li>';
                                tmp = tmp + '<span>' + data[i][j] + '</span>';
                            }
                            
                            tmp = tmp + data[0][j];
                            tmp = tmp + '</li>';
                        }
                      }
                      if (i > 0) {
                         tmp = tmp + '</ul>';
                         tmp = tmp + '</div>';
                      }
                    }
                    $(".getInfoList").html(tmp);
                    if (num > 0) {
                        $("#getComfirmNum").show();
                        $("#getComfirmNum").html('('+num+')');
                    } else {
                        $("#getComfirmNum").hide();
                        $("#getComfirmNum").html('('+num+')');
                    }
                } 
               
            }
            else {
                $("#BoxList").empty();
                $("#BoxList").html(value.list);
                $("#boxLoading").css("display", "none");
                $("#boxMain").css("display", "");
            }
            return false;
        }
    }
);
}



function loadData(pwd2Status) {
    var oGetName = "";
    var curUrl = encodeURIComponent(location.href);
    var url1 = ajaxUrl + "/WS/WSAccounts.aspx?CheckType=chkComm&jstype=jsonp&callback=?&curUrl=" + curUrl;
    //alert(url1);
    if (typeof (getName) != "undefined")
        oGetName = getName;
    $.getJSON(url1,
     function (value) {
         //if (asktype == 2)
            // document.body.style.backgroundImage = "url(" + value.bgimg + ")";
         if (value.result == "false" && oGetName.indexOf("GetWeb") == -1 && oGetName.indexOf("GetConfigs") == -1) {
             // $("body").html(" " + value.errInfo); //加载失败
             tbox(value.errInfo + "正在跳转中……", "/");
             setTimeout(function () {
                 if (asktype == 1)
                     window.location.href = "/m-login.html";
                 else
                     window.location.href = "/login.htm";
             }, 5000);
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
                     var jd = getUrlParam('jd');
                     var wz = getUrlParam('wz');
                     $("#txtJD").val(jd);
                     $("#selWeiZhi").val(wz);


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

                     // provinceBind("selProvince", "selCity", "selArea", "reg_notice1", "", "", "");
                     provinceBind("selProvince2", "selCity2", "selArea2", "reg_notice2", "", "", "");


                     bankBind("selBank", "regBank_notice", "");
                     // jiBieBind("selJiBie", "regJibienotice", "");

                     $("#boxLoading").css("display", "none");
                     $("#boxMain").css("display", "");
                 }
                 else if (typeof (actName) != "undefined" && actName == "unActiveInfoModi") {
                     $("#txtJD").blur(function () {
                         getUserName("txtJD", "lblJdr", "该会员不存在！", "");
                     });
                     $("#txtService").blur(function () {
                         getUserName("txtService", "lblService", "该会员不存在！", "");
                     });



                     $("#boxLoading").css("display", "none");
                     $("#boxMain").css("display", "");
                 }
                 else if (typeof (actName) != "undefined" && actName == "GetNetMapTJ") {
                     // $("#BoxList").empty();
                     // $("#BoxList").html('<iframe src="' + ajaxUrl + '/ajax/netmaptj.aspx" id="frmNetMapTJ" height="700" width="100%" frameborder="0" scrolling="auto"></iframe>');
                 }
                 else if (typeof (actName) != "undefined" && actName == "GetNetMapJD") {
                     $("#BoxList").empty();
                     $("#BoxList").html('<iframe src="' + ajaxUrl + '/ajax/netmapjd.aspx" id="frmNetMapJD" height="700" width="100%" frameborder="0" scrolling="auto"></iframe>');
                 }
                 else if (typeof (actName) != "undefined" && actName == "GetNetMapTree") {
                     $("#BoxList").empty();
                     $("#BoxList").html('<iframe src="' + ajaxUrl + '/ajax/netmap_tree.aspx" id="frmNetMapJD" height="700" width="100%" frameborder="0" scrolling="auto"></iframe>');
                 }
                 else if (typeof (actName) != "undefined" && actName == "GetNetMapThree") {
                     $("#BoxList").empty();
                     $("#BoxList").html('<iframe src="' + ajaxUrl + '/ajax/netmapwz.aspx" id="frmNetMapJD" height="700" width="100%" frameborder="0" scrolling="auto"></iframe>');
                 }
                 else if (typeof (actName) != "undefined" && actName == "GetNetMapFenLi") {
                     $("#BoxList").empty();
                     $("#BoxList").html('<iframe src="' + ajaxUrl + '/ajax/netmapfenli.aspx" id="frmNetMapFenLi" height="700" width="100%" frameborder="0" scrolling="auto"></iframe>');
                 }
                 else if (typeof (actName) != "undefined" && actName == "GetStockTradeHistory") {
                     $(".boxStockTradeHistory").empty();
                     $(".boxStockTradeHistory").html('<iframe src="' + ajaxUrl + '/ajax/StockTradeHistory.aspx" id="frmStockTradeHistory" height="510" width="100%" frameborder="0" scrolling="auto"></iframe>');
                 }
                 else if (typeof (actName) != "undefined" && actName == "financeAdd") {
                     financeBind("selFinance", "financeNotice", "");
                 }
             }
             else {
//                 if (asktype == 1)
//                     location.href = "pwd2login.html"; //pwd2login.html
//                 else
                     location.href = "../User/authentication.htm";
             }
         }
     }, "json");
}

var ajaxUrl = "";
var ajaxUrlmob = "";
var curUrl = "http://10104.l1ll11.com"; //
if (window.location.href.indexOf("210.16") > -1 || window.location.href.indexOf("local") > -1 || window.location.href.indexOf("1u68") > -1)
    ajaxUrl = "";



$(document).ready(function () {
    $(".ajaxtopMenu").html(str_top);
    $(".ajaxlangSel").html(str_langSel);

//    $("#selLang").onchange(function () {
//        // alert($("#selLang").val());
//        //changeLang("")
//        alert("aaaa");
//    });

    getLang();


    var pwd2Status = 0, oGetType = "", ogetName = "";
    if (typeof (getType) != "undefined")
        oGetType = getType;
    if (typeof (getName) != "undefined")
        ogetName = getName;
    if (oGetType == "info1")
        getInfo(ogetName);
    else if (oGetType == "infoUserIndex") {
        $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=chkComm&jstype=jsonp&callback=?",
    function (value) {
        if (value.result == "success") {
            getInfo("GetMenuInfo");
            getInfo("GetUserInfo");
            getInfo("GetCanshu");
            $("#boxLoading").css("display", "none");
            $("#boxMain").css("display", "");
        }
        else
            location.href = value.curUrl;
        return false;
    }
);
    }
    else if (oGetType != "") {
        $.getJSON(ajaxUrl + "/WS/WSAccounts.aspx?CheckType=chkPwd2Login&jstype=jsonp&callback=?",
    function (value) {
        if (value.result == "success") {
            pwd2Status = 1;
        }
        loadData(pwd2Status);
    }
);
    }
    else {

        $("#boxLoading").css("display", "none");
        $("#boxMain").css("display", "");
    }


//    $(document).bind("contextmenu", function (e) {
//        //alert("sorry! No right-clicking!");
//        return false;
//    });
    // && window.location.href.indexOf("login") == -1
    //    if (top.mainFrame == null && top.mainFrame0 == null && top.BaseFrame == null && window.location.href.indexOf("web") == -1 && window.location.href.indexOf("default") == -1 && window.location.href.indexOf("reg") == -1 && window.location.href.indexOf("mobile") == -1 && window.location.href.indexOf("payOnline") == -1 && window.location.href.indexOf("getpass") == -1) {
    //        location.href = '/err.aspx';
    //    }


});
