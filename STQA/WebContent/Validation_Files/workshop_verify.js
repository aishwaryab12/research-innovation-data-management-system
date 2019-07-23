function validate()
{
	var fundsR= document.forms["workshop_form"]["fundsR"];
	var fundsU= document.forms["workshop_form"]["fundsU"];
	var fundsG= document.forms["workshop_form"]["fundsG"];
	var noOfParticipants= document.forms["workshop_form"]["noOfParticipants"];

	
	
	var error=0;
	
	//
	if(isNaN(fundsR.value))
    {
      
    	document.getElementById("fundsRerror").innerHTML="enter a valid amount";
       error=1;
       
    }
	if(isNaN(fundsU.value))
    {
      
    	document.getElementById("fundsUerror").innerHTML="enter a valid amount";
       error=1;
       
    }
	if(isNaN(fundsG.value))
    {
      
    	document.getElementById("fundsGerror").innerHTML="enter a valid amount";
       error=1;
       
    }
	if(isNaN(noOfParticipants.value))
    {
      
    	document.getElementById("noOfParticipantserror").innerHTML="enter a valid number";
       error=1;
       
    }

	if(error==1)
    	return false;
    else
    	return true;

}