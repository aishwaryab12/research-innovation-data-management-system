function validate()
{
	var noOfPages = document.getElementById("noofpages");
	var error=0;
	
	//
	if(isNaN(noOfPages.value))
    {
      
    	document.getElementById("noofpageserror").innerHTML="enter a valid page no.";
       error=1;
       
    }
	if(error==1)
    	return false;
    else
    	return true;

}