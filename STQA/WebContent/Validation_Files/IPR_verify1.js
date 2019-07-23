function validate()
{
	var appnumber= document.getElementById("appnumber");
	
	
	var error=0;
	
	//
	if(isNaN(appnumber.value))
    {
      
    	document.getElementById("appnumbererror").innerHTML="enter a valid number";
       error=1;
       
    }

	if(error==1)
    	return false;
    else
    	return true;

}