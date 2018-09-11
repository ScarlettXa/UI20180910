function document.oncontextmenu() { 
	return false; 
}
function document.onselectstart() {
	return false;
}
function hideinfo(){ 
	if(event.srcElement.tagName=="A"){
		window.status=event.srcElement.innerText 
	} 
} 
document.onmouseover=hideinfo;
document.onmousemove=hideinfo;
document.onmousedown=hideinfo;
