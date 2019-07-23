function validate()
{
	var citationCount= document.getElementById("citationCount");
	//
	var fromPage= document.getElementById("fromPage");
	var toPage= document.getElementById("toPage");
	
	
	var error=0;
	
	//
	if(isNaN(toPage.value))
    {
      
    	document.getElementById("toPageerror").innerHTML="enter a valid page number";
       error=1;
       
    }
	if(isNaN(fromPage.value))
    {
      
    	document.getElementById("fromPageerror").innerHTML="enter a valid page number";
       error=1;
       
    }
	if(isNaN(citationCount.value))
    {
      
    	document.getElementById("citationCounterror").innerHTML="enter a valid count";
       error=1;
       
    }

	if(error==1)
    	return false;
    else
    	return true;

}