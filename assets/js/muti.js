

$(function(){
	var cc="";
	
	$(".table-f .table-td1").each(function(index){ 
		$(this).mouseover(function(){ 
		$(".table-f .table-td1").removeClass("selected"); 
		$(this).addClass("selected"); 
		$(".menu-box-s").show();
		$(".menu-box-f").css("width","40%");
		$(".menu-box-s table").hide(); 
		$(".menu-box-s table:eq(" + index + ")").show(); 
		$("#cli").text($(this).text());
		cc=$(this).text();
		});
	});


	$(".menu-r-td").click(function(){
		$("#cli").text(cc+"-"+$(this).text());
		$("#menu").css("display","none");
		$("#shade").css("display","none");
		$("body").css("position","relative");
	});
	
	
	
	
	
});
function show(){
		document.getElementById('menu').style.display="block";
		document.getElementById('shade').style.display="block";
		if(document.getElementById('menu').style.display=="block"){
			// document.html.style.overflow="hidden";
			document.body.style.position="fixed";
			};
	};

function shade(){
	document.getElementById('menu').style.display="none";
	document.getElementById('shade').style.display="none";
	if(document.getElementById('menu').style.display=="none"){
		// document.html.style.overflow="hidden";
		document.body.style.position="relative";
		};
};





