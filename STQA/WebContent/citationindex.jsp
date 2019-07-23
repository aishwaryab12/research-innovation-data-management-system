<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">
<script src = "./Validation_Files/citationindex_verify1.js"></script>
<title>Citation Index</title>
</head>
<body>

<div class="container">
<jsp:include page="./headers/subheader.jsp" />
<div class="jumbotron">
<center><h1>Citations</h1></center>

	<form class="form-horizontal" onsubmit = "return validate()" name="forms" method="post" action="citationsProcess.jsp">
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Name Of Department</label><br>
			<select class="form-control" name="department" required="required">
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
			<select class="form-control" name="sigName" required="required">
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
			<select class="form-control" name="acaddemicYear" required="required">
				<option disabled selected value>-----Choose option-----</option>
				<option>2016-17</option>
				<option>2017-18</option>
				<option>2018-19</option>
				<option>2019-20</option>
			</select><br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Number Of Google Citations</label><br>
			<input type="text" class="form-control" name="googleCitations" id="googleCitations" required="required" placeholder="" />
			<font style="color: red;"><span id="googleCitationserror"></span></font>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>h-Index</label><br>
			<input type="text" class="form-control" name="hIndex" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>i10-Index</label><br>
			<input type="text" class="form-control" name="i10Index" required="required" placeholder="" /> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Number of Scopus Papers</label><br>
			<input type="text" class="form-control" name="scopusPapers" id="scopusPapers" required="required" placeholder="" />
			<font style="color: red;"><span id="scopusPaperserror"></span></font>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Scopus Citations Count</label><br>
			<input type="text" class="form-control" name="scopusCitation" id="scopusCitation" required="required" placeholder="" />
			<font style="color: red;"><span id="scopusCitationerror"></span></font>
			</div>
		</div>
		
		
		
		<div class="row content">
			<div class="col-md-6 ">
				<label>Number Of Papers In EBSCO</label><br>
			<input type="text" class="form-control" name="ebosco" id="ebosco" placeholder="" />
			<font style="color: red;"><span id="eboscoerror"></span></font>
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
</div>
</body>
</html>
