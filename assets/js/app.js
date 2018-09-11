(function($) {
  'use strict';

  $(function() {
    var $fullText = $('.admin-fullText');
    $('#admin-fullscreen').on('click', function() {
      $.AMUI.fullscreen.toggle();
    });

    $(document).on($.AMUI.fullscreen.raw.fullscreenchange, function() {
      $fullText.text($.AMUI.fullscreen.isFullscreen ? '退出全屏' : '开启全屏');
    });
  });
})(jQuery);




$(function(){
    function tabs(tabTit,on,tabCon){
	$(tabCon).each(function(){
	  $(this).children().eq(0).show();
	  });
	$(tabTit).each(function(){
	  $(this).children().eq(0).addClass(on);
	  });
     $(tabTit).children().hover(function(){
        $(this).addClass(on).siblings().removeClass(on);
         var index = $(tabTit).children().index(this);
         $(tabCon).children().eq(index).show().siblings().hide();
    });
     }
  tabs(".tab-hd","active",".tab-bd");
});


var i = 0;
$(function () {
    $(".btn-zan").click(function () {
        i++;
        $(".num-zan").text(i);
        $(this).addClass("btn-zan-ok").unbind("click");
    });
});








$(function(){
 $(".map-tab-hd ul li").click(function(){
 $(this).addClass("on").siblings().removeClass("on"); //切换选中的按钮高亮状态
 var index=$(this).index(); //获取被按下按钮的索引值，需要注意index是从0开始的
 $(".map-tab-bd > div").eq(index).show().siblings().hide(); //在按钮选中时在下面显示相应的内容，同时隐藏不需要的框架内容
 });
});




$(function(){
	
	$(".mf-svreen-menu-box1 a").click(function(){
	if($(this).hasClass('mf-svreen-menubg')){
	$(this).removeClass('mf-svreen-menubg');
	}else{
	$(this).addClass('mf-svreen-menubg');
	};
	});


});



$(function(){
 $(".mf-empty-btn").click(function(){
  $(".mf-svreen-menu-box1 a").removeClass("mf-svreen-menubg");
  $(".mf-svreen-menu-box2 input").val("");
   
 });
});

$(function(){
 $(".mf-xg-okbtn").click(function(){
  $(".am-offcanvas").removeClass("am-active");
  $("body").removeClass("am-offcanvas-page");
   $(".am-offcanvas-bar-flip").removeClass("am-offcanvas-bar-active");
 });
});




jQuery(document).ready(function($){
	
		//打开窗口
		$('.cd-popup-trigger1').on('click', function(event){
	    event.preventDefault();
	    $('.cd-popup1').addClass('is-visible2');
	    //$(".dialog-addquxiao").hide()
	    $(this).children("span").addClass("cal-span");
    });
    //关闭窗口
    $('.cd-popup1').on('click', function(event){
        if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup1') ) {
            event.preventDefault();
            $(this).removeClass('is-visible2');
            $(".cd-popup-trigger1").children("span").removeClass("cal-span");
        }
    });
	
		//打开窗口
		$('.cd-popup-trigger2').on('click', function(event){
	    event.preventDefault();
	    $('.cd-popup2').addClass('is-visible2');
	    //$(".dialog-addquxiao").hide()
	    $(this).children("span").addClass("cal-span");
    });
    //关闭窗口
    $('.cd-popup2').on('click', function(event){
        if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2') ) {
            event.preventDefault();
            $(this).removeClass('is-visible2');
            $(".cd-popup-trigger2").children("span").removeClass("cal-span");
        }
    });
    
    //打开窗口
		$('.cd-popup-trigger3').on('click', function(event){
	    event.preventDefault();
	    $('.cd-popup3').addClass('is-visible2');
	    //$(".dialog-addquxiao").hide()
	    $(this).children("span").addClass("cal-span");
	    
    });
    //关闭窗口
    $('.cd-popup3').on('click', function(event){
        if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup3') ) {
            event.preventDefault();
            $(this).removeClass('is-visible2');
            $(".cd-popup-trigger3").children("span").removeClass("cal-span");
        }	
    });
    
    //打开窗口
		$('.cd-popup-trigger4').on('click', function(event){
	    event.preventDefault();
	    $('.cd-popup4').addClass('is-visible2');
	    //$(".dialog-addquxiao").hide()
	    $(this).children("span").addClass("cal-span");
	    
    });
    //关闭窗口
    $('.cd-popup4').on('click', function(event){
        if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup4') ) {
            event.preventDefault();
            $(this).removeClass('is-visible2');
            $(".cd-popup-trigger4").children("span").removeClass("cal-span");
        }	
    });

		//打开窗口
		$('.cd-popup-trigger5').on('click', function(event){
	    event.preventDefault();
	    $('.cd-popup5').addClass('is-visible2');
	    //$(".dialog-addquxiao").hide()
	    $(this).children("span").addClass("cal-span");
	    
    });
    //关闭窗口
    $('.cd-popup5').on('click', function(event){
        if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup5') ) {
            event.preventDefault();
            $(this).removeClass('is-visible2');
            $(".cd-popup-trigger5").children("span").removeClass("cal-span");
        }	
    });
    
    //打开窗口
		$('.cd-popup-trigger6').on('click', function(event){
	    event.preventDefault();
	    $('.cd-popup6').addClass('is-visible2');
	    //$(".dialog-addquxiao").hide()
	    $(this).children("span").addClass("cal-span");
	    
    });
    //关闭窗口
    $('.cd-popup6').on('click', function(event){
        if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup6') ) {
            event.preventDefault();
            $(this).removeClass('is-visible2');
            $(".cd-popup-trigger6").children("span").removeClass("cal-span");
        }	
    });


});


$(function(){
	$(".cal-way>a").click(function(){
 		
 		$(".cal-span .cal-text").text($(this).html());
 		$(".cd-popup1").removeClass('is-visible2');
 		$(".cd-popup2").removeClass('is-visible2');
 		$(".cd-popup3").removeClass('is-visible2');
 		$(".cd-popup4").removeClass('is-visible2');
 		$(".cd-popup5").removeClass('is-visible2');
 		$(".cd-popup6").removeClass('is-visible2');
 		$(".cd-popup-trigger1 span").removeClass('cal-span');
 		$(".cd-popup-trigger2 span").removeClass('cal-span');
 		$(".cd-popup-trigger3 span").removeClass('cal-span');
 		$(".cd-popup-trigger4 span").removeClass('cal-span');
 		$(".cd-popup-trigger5 span").removeClass('cal-span');
 		$(".cd-popup-trigger6 span").removeClass('cal-span');
 	});
 	
	
});


$(function(){
	$(".cal-pop-rate-btn").click(function(){
		
		$(".cal-percentage").text($(this).parent(".cal-pop-rate").find(".cal-input-val").val()+"%");
	});

});

$(function(){
	$(".cal-pop-rate-btn2").click(function(){
		
		$(".cal-percentage2").text($(this).parent(".cal-pop-rate").find(".cal-input-val2").val()+"%");
	
	});

});

$(function(){
	$(".cal-pop-rate-btn3").click(function(){
		$(".cal-percentage3").text($(this).parent(".cal-pop-rate").find(".cal-input-val3").val()+"%");
	
	});

});

$(function(){
	$(".cal-pop-rate-btn4").click(function(){
		
		$(".cal-percentage4").text($(this).parent(".cal-pop-rate").find(".cal-input-val4").val()+"%");
	
	});

});





$(document).ready(function(){
	$(".moretdl").click(function(){
		if(this.id=="m1"){
		$("#more-left").animate({width:"0"});
		$("#moret1").css("display","block");
		$("#moret2").css("display","none");
		// $("#more-right").css("display","block");
		$("#more-right").animate({width:"100%"});}

		if(this.id=="m2"){
		$("#more-left").animate({width:"0"});
		$("#moret2").css("display","block");
		$("#moret1").css("display","none");
		// $("#more-right").css("display","block");
		$("#more-right").animate({width:"100%"});}
	
	});

	$(".moretdr,.backbutton").click(function(){
		
		$("#more-left").animate({width:"100%"});
		$("#moret1").css("display","none");
		// $("#more-right").css("display","block");
		$("#more-right").animate({width:"0%"});
	
	});

});


$(function(){
	$(".peo-m2-btn").click(function(){
		
		if ($(this).children("span").text()=="查看全部"){
			$(this).children("span").html("收起信息");
			$(this).siblings("div.peo-m2-text").css('height','auto');
			$(this).children(".am-icon").removeClass("am-icon-angle-down").addClass("am-icon-angle-up");
		} else{
			$(this).children("span").html("查看全部");
			$(this).siblings("div.peo-m2-text").css('height','100px');
			$(this).children(".am-icon").removeClass("am-icon-angle-up").addClass("am-icon-angle-down");
			
		};
		

		
	});
});





















































