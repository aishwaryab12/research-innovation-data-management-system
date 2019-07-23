<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">

	<title>Workshop Organized</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
	
	<script>
		
 			$(document).ready(function() {
   					 var max_fields      = 10; //maximum input boxes allowed
    				 var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    				 var add_button      = $(".add_field_button"); //Add button ID
   
    				var x = 1; //initlal text box count
    
    				$(add_button).click(function(e){ //on add input button click
        			e.preventDefault();
        			if(x < max_fields)
        			{ //max input box allowed
            			x++; //text box increment
            			$(wrapper).append('<div>'+x+'. <input type="text" name="resource" class="form-control" /><a href="#" class="remove_field" >Remove</a></div><br>'); //add input box
        		    }
    });
   
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});



	</script>

	<script src = "./Validation_Files/workshop_verify1.js"></script>



</head>
<body>
 <div class="container">
 <jsp:include page="./headers/subheader.jsp" />

 	<div class="jumbotron">
 		<h2><b>Workshop/Conference/Seminar Organized :</b></h2><br>
 		<form class="form-horizontal" method="post" action="workshopProcess.jsp" name="workshop_form" onsubmit="return validate()">
 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Name of Faculty Coordinator / Co-Coordinator /Convenor<font style="color: red;">*</font></label><br>
 					 <select class="form-control" name="nameOfFaculty" required="required">
            <option disabled selected value> Select</option>
            <option value="Prof. Dr. K. Rajeswari">    Prof. Dr. K. Rajeswari    </option>
            <option value="Prof. Dr. Jayant Umale">    Prof. Dr. Jayant Umale    </option>
            <option value="Prof.Dr. Anuradha Thakare">    Prof.Dr. Anuradha Thakare    </option>
            <option value="Prof.Dr. Pravin Futane">    Prof.Dr. Pravin Futane    </option>
            <option value="Prof. Dr. S. D.Thepade">    Prof. Dr. S. D.Thepade    </option>
            <option value="Mr. Santosh Sambare">    Mr. Santosh Sambare    </option>
            <option value="Dr. Sonali Patil">    Dr. Sonali Patil    </option>
            <option value="Mrs. Reena Kharat">    Mrs. Reena Kharat    </option>
            <option value="Mrs. Sonal Gore">    Mrs. Sonal Gore    </option>
            <option value="Mrs. B. Mahalakshmi">    Mrs. B. Mahalakshmi     </option>
            <option value="Mr. Rahul Patil">    Mr. Rahul Patil    </option>
            <option value="Mrs. Alka Londhe">    Mrs. Alka Londhe    </option>
            <option value="Mrs. Priya Surana">    Mrs. Priya Surana    </option>
            <option value="Mrs. Sushma Vispute">    Mrs. Sushma Vispute    </option>
            <option value="Mrs. Deepa Abin">    Mrs. Deepa Abin    </option>
            <option value="Mrs. Archana Kadam">    Mrs. Archana Kadam    </option>
            <option value="Mr. Anand Birajdar">    Mr. Anand Birajdar    </option>
            <option value="Mrs. Shailaja Pede">    Mrs. Shailaja Pede    </option>
            <option value="Mrs. Harshada Mhaske">    Mrs. Harshada Mhaske    </option>
            <option value="Mr. Shrikant Kokate">    Mr. Shrikant Kokate    </option>
            <option value="Ms. Pallavi Dhade">    Ms. Pallavi Dhade    </option>
            <option value="Mrs. Meghana Lokhande">    Mrs. Meghana Lokhande    </option>
            <option value="Mr. Shailesh Hule">    Mr. Shailesh Hule    </option>
            <option value="Mrs. Santwana Gudadhe">    Mrs. Santwana Gudadhe    </option>
            <option value="Mr. Atul Pawar">    Mr. Atul Pawar    </option>
            <option value="Mr. Ganesh Deshmuk">    Mr. Ganesh Deshmukh      </option>
            <option value="Mr. Sagar Salunke">    Mr. Sagar Salunke    </option>
            <option value="Mrs. Namrata Gawande">    Mrs. Namrata Gawande    </option>
            <option value="Mrs. Smita Khairnar">    Mrs. Smita Khairnar    </option>
            <option value="Mr. Rajesh Lomte">    Mr. Rajesh Lomte    </option>
            <option value="Mr. Kapil Tajane">    Mr. Kapil Tajane    </option>
            <option value="Mr. Ketan Desale">    Mr. Ketan Desale    </option>
            <option value="Mr. Rahul Pitale ">    Mr. Rahul Pitale    </option>
            <option value="Ms. Madhura Kalbhor">    Ms. Madhura Kalbhor    </option>
            <option value="Ms.Swati Chandurkar">    Ms.Swati Chandurkar    </option>
            <option value="Ms.Priya Ithape">    Ms.Priya Ithape    </option>
            <option value="Ms.Rupali Bhondave">    Ms.Rupali Bhondave    </option>

            </select>

 				</div>
 			</div><br>


 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Type Of Programme<font style="color: red;">*</font></label><br>
 					<input type="text" name="typeOfProgramme" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>	


 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Relevance to<font style="color: red;">*</font></label><br>
 					<input type="text" name="relevance" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Sponsoring Authority (if any)<font style="color: red;">*</font></label><br>
 					<input type="text" name="sponsor" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Funds Received (Rs.) (If any)</label><br>
 					<input type="text" name="fundsR" id="fundsR" class="form-control" required="required" placeholder="">
 					<font style="color: red;"><span id="fundsRerror"></span></font>

 				</div>
 			</div><br>	

 			
 			<div class="row content">	
 				<div class="col-md-6" class="form-group required">
 					<label>Funds Utilized (Rs.)</label><br>
 					<input type="text" name="fundsU" id="fundsU" class="form-control" required="required" placeholder="">
					<font style="color: red;"><span id="fundsUerror"></span></font>
 				</div>
 			</div><br>	

 			<div class="row content">	
 				<div class="col-md-6" class="form-group required">
 					<label>Funds Generated(Rs.)</label><br>
 					<input type="text" name="fundsG" id="fundsG" class="form-control" required="required" placeholder="">
					<font style="color: red;"><span id="fundsGerror"></span></font>
 				</div>
 			</div><br>	

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Title of Programme<font style="color: red;">*</font></label><br>
 					<input type="text" name="titleOfProgramme" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>

			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Upload File On Below Link<font style="color: red;">*</font></label><br>
 					
 					 <a>www.googledrive.com</a>
 
					

 				</div>
 			</div><br>
	

 			<div class="row content">	
 				<div class="col-md-6" class="form-group required">
 					<label>Duration<font style="color: red;">*</font></label><br>
					<div class="row content">
					
							<div class="col-md-6 ">
							<label>From</label><br>
								        <input class="form-control" id="date" name="dateFrom" placeholder="MM/DD/YYY" type="text" required="required"/>
							</div>
							
							<div class="col-md-6 ">
							<label>To</label><br>
								        <input class="form-control" id="date" name="dateTo" placeholder="MM/DD/YYY" type="text" required="required"/>
							</div>
					</div>

 				</div>
 			</div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Number of Participants<font style="color: red;">*</font></label><br>
 					<input type="text" name="noOfParticipants" id="noOfParticipants" class="form-control" required="required" placeholder="">
					<font style="color: red;"><span id="noOfParticipantserror"></span></font>
 				</div>
 			</div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Target Audience<font style="color: red;">*</font></label><br>
        						<input type="checkbox" name="audience" value="UG Students"> <b>UG Students</b> <br>
        						<input type="checkbox" name="audience" value="PG Students"> <b>PG Students</b> <br>
        						<input type="checkbox" name="audience" value="PhD Students"> <b>PhD Students</b> <br>
        						<input type="checkbox" name="audience" value="Staff"> <b>Staff</b>
      			</div>
 			</div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Details Of Resource Person(s)<font style="color: red;">*</font></label><br>
 					
 					<div class="input_fields_wrap">
    					<div>1.<input type="text" name="resource" class="form-control" required="required"></div><br>

					</div><br>
					<button class="add_field_button" class="btn btn-primary btn-block" >Add More Resouce Persons</button>

 				
 				</div>
 			</div><br>						

 			 <div class="row content">
				<div class="col-md-3 ">
					<button type="submit" class="btn btn-primary btn-block">Submit</button>
				</div>
				<div class="col-md-3 ">
				<button type="reset" class="btn btn-primary btn-block">Reset</button>
				</div>
			</div>





 			
 		</form>
 	</div>	
 </div>

       <script>
    $(document).ready(function(){
      var date_input1=$('input[name="dateFrom"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input1.datepicker(options);
    })
</script>
    <script>
    $(document).ready(function(){
      var date_input2=$('input[name="dateTo"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input2.datepicker(options);
    })
</script>

</body>
</html>
