$(document).ready(function(){
	//$(".sec-tabs-title li").click(function(){
//		if ($(".sec-tabs-group").css("display")=="none")
//		  {
//		 	$(".sec-tabs-group").show();
//			$(".shade").show();
//		  }
//		else
//		  {
//		  	$(".sec-tabs-group").hide();
//			$(".shade").hide();
//		  };
//			
//	});

	//$(".sec-tabs-title li").click(function(){
//		  $(".sec-tabs-group").toggle();
//		});
//	
	
	
	$(".shade").hover(function(){
		
		$(".sec-tabs-group").hide();
		$(".shade").hide();
		$(".sec-tabs-title li").removeClass("sec-tabs-now"); 
		$("body").css("position","relative");
		});
		
		
	$(".sec-tabs-title .thisnow").each(function(index){ 
		$(this).hover(function(){ 
			$("body").css("position","fixed");
			$(".shade").show(); 
			$(".sec-tabs-group").show();
			$(".sec-tabs-group>div").hide(); 
			$(".sec-tabs-group>div:eq(" + index + ")").show(); 
			$(".sec-tabs-title li").addClass("thisnow");
			$(this).removeClass("thisnow"); 
			$(".sec-tabs-title li").removeClass("sec-tabs-now"); 
			$(this).addClass("sec-tabs-now");
		});
	});
	
	$(".sec-tabs-title .sec-tabs-now").hover(function(){
		
		$(".sec-tabs-group").hide();
		$(".shade").hide();
		$(".sec-tabs-title li").removeClass("sec-tabs-now"); 
		$("body").css("position","relative");
		});	

	$(".sec-area-left li").each(function(index){ 
		$(this).mouseover(function(){ 
		$(".sec-area-left li").removeClass("sec-left-now"); 
		$(this).addClass("sec-left-now");
		//$(".sec-tabs-group").slideUp();
		$(".sec-area-right").show(); 
		$(".sec-area-right ul").hide(); 
		$(".sec-area-right ul:eq(" + index + ")").show(); 
		
		});
	});

	$(".sec-tabs-price li a").click(function(){
		$(".sec-price").text($(this).text());
		$(".sec-tabs-group").hide();
		$(".shade").hide();
		$("body").css("position","relative");
		$(".sec-tabs-title li").removeClass("sec-tabs-now");
	});
	$(".sec-tabs-type li a").click(function(){
		$(".sec-type").text($(this).text());
		$(".sec-tabs-group").hide();
		$(".shade").hide();
		$("body").css("position","relative");
		$(".sec-tabs-title li").removeClass("sec-tabs-now");
	});
	
	
	$(".sec-tabs-more1 li").each(function(index){ 
		$(this).mouseover(function(){ 
		$(".sec-tabs-more1 li").removeClass("sec-more-now"); 
		$(this).addClass("sec-more-now");
		$(".sec-more-right").animate({right:"0"});
		$(".sec-more-left").animate({left:"-100%"});
		$(".sec-more-right>div").hide(); 
		$(".sec-more-right>div:eq(" + index + ")").show(); 
		
		});
	});
	
	$(".sec-more-btn1").click(function(){
		
		$(".sec-tabs-group").hide();
		$(".shade").hide();
		$(".sec-tabs-title li").removeClass("sec-tabs-now"); 
		$("body").css("position","relative");
		
	});
	
	$(".sec-more-btn2").click(function(){
		
		$(".sec-more-right").animate({right:"-100%"});
		$(".sec-more-left").animate({left:"0"});
		
	});
	$(".sec-more-right ul li a").click(function(){
		
		$(".sec-more-right").animate({right:"-100%"});
		$(".sec-more-left").animate({left:"0"});
		
	});
	
	
	$(".sec-more-r1 li a").click(function(){
		$(".sec-more-fz1 span").text($(this).text());
		
		
	});
	$(".sec-more-r2 li a").click(function(){
		$(".sec-more-fz2 span").text($(this).text());
		
		
	});
	$(".sec-more-r3 li a").click(function(){
		$(".sec-more-fz3 span").text($(this).text());
		
		
	});
	$(".sec-more-r4 li a").click(function(){
		$(".sec-more-fz4 span").text($(this).text());
		
		
	});
	

});