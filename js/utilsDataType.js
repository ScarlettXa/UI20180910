function udtIsNumeric(strString)
   //  check for valid numeric strings	
   {
   var strValidChars = "0123456789.-";
   var strChar;
   var blnResult = true;

   if (strString.length == 0) return false;

   //  test strString consists of valid characters listed above
   for (i = 0; i < strString.length && blnResult == true; i++)
      {
      strChar = strString.charAt(i);
      if (strValidChars.indexOf(strChar) == -1)
         {
         blnResult = false;
         }
      }
   return blnResult;
   }

function udtCurrencyToNum(curr) {
    if ( udtTrim(curr) == '' ) { return 0; }
    return parseFloat(curr.replace(",", ""));
}

function udtFormatCurrency(num) {
    num = num.toString().replace(/\$|\,/g,'');
    if(isNaN(num))
    num = "0";
    sign = (num == (num = Math.abs(num)));
    num = Math.floor(num*100+0.50000000001);
    cents = num%100;
    num = Math.floor(num/100).toString();
    if(cents<10)
    cents = "0" + cents;
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
    num = num.substring(0,num.length-(4*i+3))+','+
    num.substring(num.length-(4*i+3));
    return (((sign)?'':'-') + num + '.' + cents);
}


function udtNumbersOnly(myfield, e, dec) {
  var key;
  var keychar;
  if (window.event)
    key = window.event.keyCode;
  else if (e)
    key = e.which;
  else
    return true;
  keychar = String.fromCharCode(key);
  // control keys
  if ((key==null) || (key==0) || (key==8) || (key==9) || (key==13) || (key==27) )
    return true;
  // numbers
  else if ((("0123456789").indexOf(keychar) > -1))
    return true;
  // decimal point jump
else if (dec && (keychar == ".")) {
      myfield.form.elements[dec].focus();
      return false;
  }
  else
    return false;
}

function udtLeftTrim(sString) {
  while (sString.substring(0,1) == ' ')  {
    sString = sString.substring(1, sString.length);
  }
  return sString;
}


function udtRightTrim(sString) {
  while (sString.substring(sString.length-1, sString.length) == ' ')  {
    sString = sString.substring(0,sString.length-1);
  }
  return sString;
}


function udtTrim(sString) {
  while (sString.substring(0,1) == ' ')  {
    sString = sString.substring(1, sString.length);  
  }
  while (sString.substring(sString.length-1, sString.length) == ' ')  {
    sString = sString.substring(0,sString.length-1);
  }
  return sString;
}  