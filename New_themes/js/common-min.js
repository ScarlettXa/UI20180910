// JavaScript Document

$(function(){
	
	$(".dropdown").hover(function(){
		$(".dropdown-menu").hide();  
		$(".jhdfjh li").removeClass("sj"); 
		$(this).addClass("sj");   
		$(this).children(".dropdown-menu").show();
	}, function() {
		$(this).children(".dropdown-menu").hide();
		$(this).removeClass("sj");
	});
});


