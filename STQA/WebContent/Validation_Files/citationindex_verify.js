function validate()
{
	var googleCitations = document.forms["forms"]["googleCitations"];
	
	var scopusPapers = document.forms["forms"]["scopusPapers"];
	var scopusCitation = document.forms["forms"]["scopusCitation"];
	var ebosco = document.forms["forms"]["ebosco"];
	
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