function validate()
{
	var googleCitations = document.getElementById("googleCitations");
	
	var scopusPapers = document.getElementById("scopusPapers");
	var scopusCitation =  document.getElementById("scopusCitation");
	var ebosco = document.getElementById("ebosco");
	
	var error=0;
	
	//
	if(isNaN(googleCitations.value))
    {
      
    	document.getElementById("googleCitationserror").innerHTML="enter a valid no.";
       error=1;
       
    }
	if(isNaN(scopusPapers.value))
    {
      
    	document.getElementById("scopusPaperserror").innerHTML="enter a valid no.";
       error=1;
       
    }
	if(isNaN(scopusCitation.value))
    {
      
    	document.getElementById("scopusCitationerror").innerHTML="enter a valid count";
       error=1;
       
    }
	if(isNaN(ebosco.value))
    {
      
    	document.getElementById("eboscoerror").innerHTML="enter a valid no. of papers";
       error=1;
       
    }
	if(error==1)
    	return false;
    else
    	return true;

}