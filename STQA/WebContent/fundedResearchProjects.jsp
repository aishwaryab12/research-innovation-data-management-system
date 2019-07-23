<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">
<script src = "./Validation_Files/fundedResearchProjects_verify1.js"></script>
<title>Funded Research Project</title>
</head>
<body>

<div class="container">

<div class="jumbotron">
<center><h1>Funded Research Project</h1></center>

	<form class="form-horizontal" onsubmit = "return validate()" name="forms" method="post" action="FundedResearchProjectsProcess.jsp">
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Name Of Department</label><br>
			<select class="form-control" name="nameOfDept" required="required">
				<option value="" disabled selected hidden> Select Name of Department </option>
				<option>Computer</option>
				<option>EnTC</option>
				<option>IT</option>
				<option>Mechanical</option>
				<option>Civil</option>
			</select><br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Name of Faculty</label><br>
			<select class="form-control" name="nameOfFaculty" required="required">
			<option value="" disabled selected hidden>Select Name</option>
			<option>	Prof. Dr. K. Rajeswari	</option>
<option>	Prof. Dr. Jayant Umale	</option>
<option>	Prof.Dr. Anuradha Thakare	</option>
<option>	Prof.Dr. Pravin Futane	</option>
<option>	Prof. Dr. S. D.Thepade	</option>
<option>	Mr. Santosh Sambare	</option>
<option>	Dr. Sonali Patil	</option>
<option>	Mrs. Reena Kharat	</option>
<option>	Mrs. Sonal Gore	</option>
<option>	Mrs. B. Mahalakshmi 	</option>
<option>	Mr. Rahul Patil	</option>
<option>	Mrs. Alka Londhe	</option>
<option>	Mrs. Priya Surana	</option>
<option>	Mrs. Sushma Vispute	</option>
<option>	Mrs. Deepa Abin	</option>
<option>	Mrs. Archana Kadam	</option>
<option>	Mr. Anand Birajdar	</option>
<option>	Mrs. Shailaja Pede	</option>
<option>	Mrs. Harshada Mhaske	</option>
<option>	Mr. Shrikant Kokate	</option>
<option>	Ms. Pallavi Dhade	</option>
<option>	Mrs. Meghana Lokhande	</option>
<option>	Mr. Shailesh Hule	</option>
<option>	Mrs. Santwana Gudadhe	</option>
<option>	Mr. Atul Pawar	</option>
<option>	Mr. Ganesh Deshmukh  	</option>
<option>	Mr. Sagar Salunke	</option>
<option>	Mrs. Namrata Gawande	</option>
<option>	Mrs. Smita Khairnar	</option>
<option>	Mr. Rajesh Lomte	</option>
<option>	Mr. Kapil Tajane	</option>
<option>	Mr. Ketan Desale	</option>
<option>	Mr. Rahul Pitale	</option>
<option>	Ms. Madhura Kalbhor	</option>
<option>	Ms.Swati Chandurkar	</option>
<option>	Ms.Priya Ithape	</option>
<option>	Ms.Rupali Bhondave	</option>

			</select><br><br>
			</div>
		</div>
		
		 <div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Name of SIG</label><br>
			<select class="form-control" name="sigOfDept" required="required">
				<option value="" disabled selected hidden>Select SIG</option>
				<option>Visual Computing (VC)</option>
				<option>Communication and Networking(CN)</option>
				<option>Smart Systems(SS)</option>
				<option>Data Science and Knowledge Engineering</option>
			</select><br>
			</div>
		</div>
		
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Type of Proposal</label><br>
			<select class="form-control" name="typeOfProposal" required="required">
				<option value="" disabled selected hidden>Select type of proposal</option>
				<option>Research Project</option>
				<option>QIP</option>
				<option>other</option>
			</select><br>
			</div>
		</div>
		
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Role</label><br>
			<select class="form-control" name="role" required="required">
				<option value="" disabled selected hidden>Select your role</option>
				<option>Co-Investigator</option>
				<option>Principle Investigator</option>
			</select><br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Sanctioned Amount</label><br>
				<input type="text" class="form-control" name="sanctionedAmount" id="sanctionedAmount" required="required" placeholder="Enter Sanctioned Amount " />
				<font style="color: red;"><span id="sanctionedAmounterror"></span></font>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Received Amount</label><br>
				<input type="text" class="form-control" name="receivedAmount" id="receivedAmount" required="required" placeholder="Enter Received Amount " />
				<font style="color: red;"><span id="receivedAmounterror"></span></font>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Utilized Amount</label><br>
				<input type="text" class="form-control" name="utilizedAmount" id="utilizedAmount" required="required" placeholder="Enter Utilized Amount " />
				<font style="color: red;"><span id="utilizedAmounterror"></span></font>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Sponsoring Agency</label><br>
			<select class="form-control" name="sponsoringAgency" required="required">
			<option value="" disabled selected hidden = "hidden">select sponsoring Agency</option>
			<option>BCUD</option>
			<option>AICTE</option>
			<option>Any other</option>
			</select> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Title of Research Project</label><br>
				<textarea class="form-horizontal" name="titleofproject"rows=3 placeholder="Write Title of Your Project" required="required"></textarea>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>From Date</label><br>
			<input type="date" class="form-control" name="fromDate" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>To Date</label><br>
			<input type="date" class="form-control" name="toDate" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Academic Year</label><br>
			<input type="date" class="form-control" name="academicYear" required="required" placeholder="Academic Year" /> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>In Collaboration With</label><br>
			<input type="date" class="form-control" name="collaborationWith" required="required" placeholder="Collaboration With..." /> <br>
			</div>
		</div>	
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Status</label><br>
					<select class="form-control" name="status" required="required">
						<option value="" disabled selected hidden>Select Status of Your Project</option>
						<option>Completed</option>
						<option>Not Completed</option>
					</select> <br>
				
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Outcome (Number of Research Papers)</label><br>
			<input type="text" class="form-control" name="numberOfResearchPaper" id="numberOfResearchPaper" required="required" placeholder="Enter Number of Research Papers" /> 
			<font style="color: red;"><span id="numberOfResearchPapererror"></span></font>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Outcome (IPR)</label><br>
			<input type="text" class="form-control" name="ipr" required="required" placeholder="IPR" /> <br>
			</div>
		</div>
	
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Outcome (Books)</label><br>
			<input type="text" class="form-control" name="books" required="required" placeholder="Books" /> <br>
			</div>
		</div>
		
		
		 <br>
		 <div class="row content">
			<div class="col-md-3 ">
				<button type="submit" class="btn btn-primary btn-block">Submit</button>
			</div>
			<div class="col-md-3 ">
				<button type="reset" class="btn btn-primary btn-block">Reset</button>
		</div>
		
	</form>
</div>
</div>
</body>
</html>