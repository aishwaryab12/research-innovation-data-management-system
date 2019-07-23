<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">
<script src = "./Validation_Files/IPR_verify1.js"></script>
<title>Intellectual Property Rights</title>
</head>
<body>

<div class="container">

<div class="jumbotron">
<center><h1>Intellectual Property Rights</h1></center>

	<form class="form-horizontal" onsubmit = "return validate()"  name="forms" method="post" action="IPRProcess.jsp">
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Name Of Department</label><br>
			<select class="form-control" name="nameofdepartment" required="required">
			<option disabled selected value>----Choose Option----</option>
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
			<select class="form-control" name="nameoffaculty" required="required">
			<option disabled selected value>----Choose Option----</option>
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
			<select class="form-control" name="sigofdep" required="required">
			<option disabled selected value>----Choose Option----</option>
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
			<select class="form-control" name="acadyear" required="required">
			<option disabled selected value>----Choose Option----</option>
				
				<option>2016-17</option>
				<option>2017-18</option>
				<option>2018-19</option>
				<option>2019-20</option>
			</select><br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Type of IPR:</label><br>
			<select class="form-control" name="typeofipr" required="required">
			<option disabled selected value>----Choose Option----</option>
			<option>Patents</option>
			<option>Copyrights</option>
			</select> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Title</label><br>
				<textarea class="form-horizontal" name="titleofipr"rows=3 placeholder="" required="required"></textarea>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Application Filed Date</label><br>
			<input type="date" class="form-control" name="filingdate" required="required" placeholder="" /> <br>
			</div>
		</div>
		
			
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Status</label><br>
					<select class="form-control" name="statusofipr" required="required">
					<option disabled selected value>----Choose Option----</option>
						<option>Filed</option>
						<option>Granted</option>
						<option>Published</option>
					</select> <br>
				
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Granted/Published Filed Date</label><br>
			<input type="date" class="form-control" name="grant_pub_date" required="required" placeholder="" /> <br>
			</div>
		</div>
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Application Number:</label><br>
			<input type="text" class="form-control" name="appnumber" id="appnumber"  required="required" placeholder="" />
			<font style="color: red;"><span id="appnumbererror"></span></font>
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
