var mobile = false;
	
var ua = navigator.userAgent.toLowerCase();
var mobiles = new Array("comFront", "iPhone", "MIDP-2.0", "Opera Mini", "UCWEB", "Android", "Windows CE", "SymbianOS");

for (var i = 0; i < mobiles.length; i ++) {
	if (ua.indexOf(mobiles[i].toLowerCase()) > -1) {
		mobile = true;
	}
}

var s1 = '<style type="text/css">';
if (mobile == true) {
	s1 += '.p-top-warp{ height:30px;background: url(../../New_themes/images/navigation-bg.png) repeat; width:238%;}';
} else {
	s1 += '.p-top-warp{ height:30px;background: url(../../New_themes/images/navigation-bg.png) repeat; width:100%;}';
}
s1 += '</style>';
document.write(s1);