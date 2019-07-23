function validate()
{
	var email = document.forms["forms"]["email"];
	var mobileNo=document.getElementById("mobile");
	
    
    var atpos = email.value.indexOf("@");
    var dotpos = email.value.lastIndexOf(".");
    var error=0;
    
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.value.length) {
        //alert("Not a valid e-mail address");
    	document.getElementById("emailerror").innerHTML="enter valid Mail Id";
        //return false;
    	error=1;
    }
    
    if(isNaN(mobileNo.value))
    {
       //alert("Invalid Mobile No.");
    	//document.write(mobileNo.value+"first");
    	document.getElementById("mobileerror").innerHTML="enter valid mobile no.";
       error=1;
       //return false;
    }
    
    if (mobileNo.value.length!=10 || mobileNo.value.length!=13)
    {
       //  alert("Mobile No. should be 10 or 13 digit");
    	//document.write(mobileNo.value);
    	document.getElementById("mobileerror").innerHTML="Mobile No. should be 10 or 13 digit";
        error=1;
        // return false;
    }
    
    if(error==1)
    	return false;
    else
    	return true;


}