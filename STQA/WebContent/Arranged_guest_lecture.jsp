<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">
<title>Arranged Guest Lecture</title>
<script src = "./Validation_Files/guest_lecture_verify1.js"></script> 
</head>
<body>


<div class="container">
<jsp:include page="./headers/subheader.jsp" />
<div class="jumbotron">
<center><h1>Arranged Guest Lecture</h1></center><br><br>

	<form  class="form-horizontal" onsubmit = "return validate()" name="forms" method="post" action="Arranged_guest_lecture_Process.jsp">
		
	
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Name Of Department</label><br>
			<select class="form-control" name="dept_name" required="required" id = "dept">
			<option disabled selected value >-----Choose option-----</option>
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
			<select class="form-control" name="nameoffaculty" required="required" id = "faculty_name">
			<option disabled selected value>-----Choose option-----</option>
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
			<select class="form-control" name="sigofdep" required="required" id = "sig">
			<option disabled selected value>-----Choose option-----</option>
				<option>Visual Computing (VC)</option>
				<option>Communication and Networking(CN)</option>
				<option>Smart Systems(SS)</option>
				<option>Data Science and Knowledge Engineering</option>
			</select><br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Academic Year</label><br>
			<select class="form-control" name="acadyear" required="required" id = "year">
				<option disabled selected value>-----Choose option-----</option>
				<option>2016-17</option>
				<option>2017-18</option>
				<option>2018-19</option>
				<option>2019-20</option>
			</select><br>
			</div>
		</div>

		
		
		
		<!-- topic or subject -->
		
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Topic or Subject</label><br>
			<input type="text" class="form-control" name="Topic" required="required" id = "topic" placeholder="" /> <br>
			</div>
		</div>
		
		
		<!-- Attended or organized -->
		
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Attended or Organized the guest lecture on research</label><br>
			<select class="form-control" name="attendororganize" required="required" id = "ator">
			<option disabled selected value>-----Choose option-----</option>
				<option>Attended</option>
				<option>Organized</option>
			</select>
			</div>
		</div>
		
		<!-- Target audience -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Target audience</label><br>
			<input type="text" class="form-control" name="audience" id = "audience" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		
		<!-- Number of participants -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Number of participants</label><br>
			<input type="number" class="form-control" name="participents" id = "participent_no" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		
		
		<!-- Date of organized or attended guest lecture -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Date of organized or attended guest lecture</label><br>
			<input type="Date" class="form-control" name="date_of_organize" id = "date_id" required="required" placeholder="" /> <br>
			</div>
		</div>
		
			
			
		<!-- Name of the resource person -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Name of the resource person</label><br>
			<input type="text" class="form-control" name="resource_person_name" id = "r_name" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		
		<!-- Designation of the resource person -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Designation of the resource person</label><br>
			<input type="text" class="form-control" name="designation" required="required" placeholder="" /> <br>
			</div>
		</div>
		
	
		
		
		<!-- Organization of the resource person -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Organization of the resource person</label><br>
			<input type="text" class="form-control" name="organization" id = "organization_id" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		
		
		
		<!-- Mobile number of the resource person -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Mobile number of the resource person</label><br>
			<input type="text" class="form-control" name="Mob_no" id = "mobile" required="required" placeholder="" />
			<font style="color: red;"><span id="mobileerror"></span></font>
			</div>
		</div>
		
		
		
		<!-- Email ID of the resource person -->
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Email ID of the resource person</label><br>
			<input type="text" class="form-control" name="email" id = "email_id" required="required" placeholder="" />
			<font style="color: red;"><span id="emailerror"></span></font>
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
