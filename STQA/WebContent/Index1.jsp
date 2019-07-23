<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Research and innovation</title>
<style>

div.polaroid {
  width: 250px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
 
}

.heading_h1 {
	font-family: Raleway, sans-serif;
	font-weight: 700;
	font-size: 22px;
	color: #005bab;
	text-align: center;
}

.border1 {
	width: 30%;
	border-bottom: 1px solid #61cae8;
	float: left;
}

.border2 {
	width: 70%;
	border-bottom: 1px solid #f6c815;
	float: left;
}

#loginf {
	margin-left: 0px;
	margin-right: auto;
	width: 100%;
	border-radius: 5px;
	padding: 20px;	
}

input[type=text],select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	
	box-sizing: border-box;
	 border: none;
    border-bottom: 2px solid blue;
}

input[type=email],input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	 border: none;
    border-bottom: 2px solid blue;
}

input[type=submit] {
	width: 100%;
	background-color: #000033;
	/* background-image: linear-gradient(to bottom right, blue, purple); */
	background-image: linear-gradient(to bottom right, red, #cc0000);
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 18px;
	font-weight: bold;
}

input[type=submit]:hover {
	background-color: #ff4d4d;
	
}

#formDiv,#info
{
/* background-image: linear-gradient(to bottom right,#4d4dff, #66a3ff,#cc33ff); */
background-image: linear-gradient(to bottom right,#595959,#808080,#cccccc,#f2f2f2);
}

#maindiv
{
background-color:#f2f2f2;
}
</style>
<script
	src="./bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">
</head>
<body>

	<div class="container-fluid" id="maindiv">
		<div class="row">
			<div class="col-md-1">
				<img src="./headers/logo.png" height="100px" width="100px" />
			</div>
			<div class="col-md-11">
				<h4
					style="text-align: left; font-size: 20px; font-weight: 100; letter-spacing: 0; line-height: 22px; color: black; font-family: Raleway, sans-serif;">PIMPRI
					CHINCHWAD EDUCATION TRUST'S</h4>

				<h3
					style="text-align: left; color: black; font-weight: 700; letter-spacing: 0; line-height: 22px; font-size: 28px; font-family: Raleway, sans-serif;">PIMPRI
					CHINCHWAD COLLEGE OF ENGINEERING</h3>

				<h5
					style="text-align: left; color: black; font-size: 13px; font-weight: 100; font-family: Raleway, sans-serif;">Permanently
					Affiliated To Savitribai Phule Pune University (SPPU), Approved By
					AICTE, An ISO 9001:2015 Certified College.</h5>
			</div>
			<br>
		</div>
		<h3><center>Research and Innovation</center></h3>
		<div class="border1"></div>
		<div class="border2"></div>
		<br>
		
		
		<div class="row">
			<div class="col-md-4">
				<div class="row">
				
					<div class="col-md-12" id="loginf">
					 <div class="panel panel-primary" id="formDiv">
					 
					  <div class="panel-body" style="color: #000033;">
					  
						<form action="home1.jsp" method="post" class="form-horizontal" >
						<div class="form-group">
							<label class="control-label col-sm-3" style="font-size:16px; color:white; font-weight: bold;">Username: </label>
							 <div class="col-sm-9">
							<input type="text" name="username" class="form-control"></div>
							</div>
							<div class="form-group"> 
							<label class="control-label col-sm-3" style="font-size:16px; color:white; font-weight: bold;">Password: </label>
							<div class="col-sm-9">
							<input type="password" name="password" class="form-control"><br> 
							<input type="submit" value="Sign In"></div>
							
								</div>
							<!-- on login page should redirect to Home.html -->
						</form>
						</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
					<div class="panel panel-primary" id="info">
					<div class="panel-body" style="color: #000033;">
						<p align="justify">Research and innovation go hand in hand and
							it can be a great strength of Indian economy. We have the
							necessary intellect and mind; we just have to change our mindset.
							We at PCCOE are inculcating the culture of Research and
							Innovation among students and faculty and there are some glimpses
							of success also. Faculty of PCCOE have published more than 700
							research papers in last three years and Students plus faculty
							have filed more than 80 patents in last two years. A long road to
							go and we at PCCOE are committed to contribute for the further
							growth of Research and innovation.</p>
							</div>
							</div>
					</div>
				</div>
			</div>
			<div class="col-md-8">
			<br>
			<div class="container gallery-container">

   
    
    

        <div class="row">
        <div class="col-md-4" style=" height: 200px; width: 250px; margin: 20px;">
	        <div class="polaroid">
			  <img src="./thumbnail/health.jfif" alt="Norway" style=" height: 200px; width: 250px; ">
			  <div class="container">
			   Health & Hygiene
			  </div>
			</div>
		</div>
		<div class="col-md-4" style=" height: 200px; width: 250px; margin: 20px;">
	        <div class="polaroid">
			  <img src="./thumbnail/agriculture.jfif" alt="Norway" style=" height: 200px; width: 250px; ">
			  <div class="container">
			    Agriculture
			  </div>
			</div>
		</div>
		<div class="col-md-4" style=" height: 200px; width: 250px; margin: 20px;">
	        <div class="polaroid">
			  <img src="./thumbnail/road.jfif" alt="Norway" style=" height: 200px; width: 250px; ">
			  <div class="container">
			    Transportation,Road safety,<br>Infrastrcture,Public safety
			  </div>
			</div>
		</div>
		  </div>
        <div class="row">
		<div class="col-md-4" style=" height: 200px; width: 250px; margin: 20px;">
	        <div class="polaroid">
			  <img src="./thumbnail/e-gov.png" alt="Norway" style=" height: 200px; width: 250px; ">
			  <div class="container">
			   Quality Education & E-Governance
			  </div>
			</div>
		</div>
		<div class="col-md-4" style=" height: 200px; width: 250px; margin: 20px;">
	        <div class="polaroid">
			  <img src="./thumbnail/energy.jfif" alt="Norway" style=" height: 200px; width: 250px; ">
			  <div class="container">
			   Energy
			  </div>
			</div>
		</div>
		<div class="col-md-4" style=" height: 200px; width: 250px; margin: 20px;">
	        <div class="polaroid">
			  <img src="./thumbnail/networking.jfif" alt="Norway" style=" height: 200px; width: 250px; ">
			  <div class="container">
			   Communication & Networking
			  </div>
			</div>
		</div>
      
         
        </div>

   

</div>
			</div>
		</div>
	</div>
	
</body>
</html>