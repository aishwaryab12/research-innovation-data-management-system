function validate()
{
	var receivedAmount = document.forms["forms"]["receivedAmount"];
	
	var utilizedAmount = document.forms["forms"]["utilizedAmount"];
	var sanctionedAmount = document.forms["forms"]["sanctionedAmount"];
	var numberOfResearchPaper = document.forms["forms"]["numberOfResearchPaper"];
	
	var error=0;
	
	//
	if(isNaN(receivedAmount.value))
    {
      
    	document.getElementById("receivedAmounterror").innerHTML="enter a valid amount";
       error=1;
       
    }
	if(isNaN(utilizedAmount.value))
    {
      
    	document.getElementById("utilizedAmounterror").innerHTML="enter a valid amount";
       error=1;
       
    }
	if(isNaN(sanctionedAmount.value))
    {
      
    	document.getElementById("sanctionedAmounterror").innerHTML="enter a valid amount";
       error=1;
       
    }
	if(isNaN(numberOfResearchPaper.value))
    {
      
    	document.getElementById("numberOfResearchPapererror").innerHTML="enter a valid no. of research papers";
       error=1;
       
    }
	if(error==1)
    	return false;
    else
    	return true;

}