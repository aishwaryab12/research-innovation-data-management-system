function validate()
{
	var membershipnumber= document.forms["forms"]["membershipnumber"];
	
	
	var error=0;
	
	//
	if(isNaN(membershipnumber.value))
    {
      
    	document.getElementById("membershipnumbererror").innerHTML="enter a valid number";
       error=1;
       
    }

	if(error==1)
    	return false;
    else
    	return true;

}