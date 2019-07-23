<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Research and innovation</title>


<script src="./bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">

<style>
div.polaroid {
  width: 280px;
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

#maindiv {
	background-color: #f2f2f2;
}

.sidenav {
	height: 80%;
	width: 250px;
	position:absolute;
	z-index: 1;
	top: 120;
	left: 30;
	background-color: #000033;
	/* background-image: linear-gradient(to bottom right, #000066,#4d4dff, #66a3ff,#cc33ff); */
	background-image: linear-gradient(to bottom right,#595959,#808080,#cccccc);
	color: white; overflow-x : hidden;
	padding-top: 20px;
	overflow-x: hidden;
	font-size: 18px;
}

.sidenav a {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	color: white;
	display: block;
}

.sidenav a:hover {
	color: black;
}

.main {
	margin-left: 250px; /* Same as the width of the sidenav */
	background-color: #f2f2f2;
	padding: 0px 10px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
</style>
</head>
<body>
	<div class="container-fluid" id="maindiv">
		<div class="row">
			<div class="col-md-1">
				<img src="./headers/logo.png" height="100px" width="100px" />
			</div>
			<div class="col-md-11">
			<!--  #005bab -->
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
		<div>
			<h3><center>Research and Innovation</center></h3>
		</div>
		<div class="row">
			<div class="border1"></div>
			<div class="border2"></div>
			
		</div>


		<div class="sidenav">
			<a href="publications.jsp">Research Publications</a> <a
				href="fundedResearchProjects.jsp">Funded Research Projects</a> <a
				href="workshop.jsp">Workshop Organized</a> <a
				href="collaboration.jsp">Collaborations</a> <a href="IPR.jsp">IPR</a>
			<a href="Arranged_guest_lecture.jsp">Arranged Guest lectures</a> <a
				href="citationindex.jsp">Citation index</a> <a
				href="bookchapterpublished.jsp">Book Chapter Published</a> <a
				href="bookspublished.jsp">Books Published</a> <a
				href="researchawards.jsp">Research Awards</a> <a
				href="recognitions.jsp">Recognition received</a> <a
				href="professionalmembership.jsp">Professional membership</a>
		</div>
		<div class="main">
			<div class="container gallery-container">
				<div class="row">
					<div class="col-md-4"
						style="height: 200px; width: 280px; margin: 20px;">
						<div class="polaroid">
							<img src="./thumbnail/hpc.jfif" alt="Norway"
								style="height: 200px; width: 280px;">
							<div class="container">High Performance & Scientific Computing</div>
						</div>
					</div>
					<div class="col-md-4"
						style="height: 200px; width: 280px; margin: 20px;">
						<div class="polaroid">
							<img src="./thumbnail/networking.jfif" alt="Norway"
								style="height: 200px; width: 280px;">
							<div class="container">Communication & Networking</div>
						</div>
					</div>
					<div class="col-md-4"
						style="height: 200px; width: 280px; margin: 20px;">
						<div class="polaroid">
							<img src="./thumbnail/visual.jfif" alt="Norway"
								style="height: 200px; width: 280px;">
							<div class="container">Visual Computing</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-4"
						style="height: 200px; width: 280px; margin: 20px;">
						<div class="polaroid">
							<img src="./thumbnail/data.jfif" alt="Norway"
								style="height: 200px; width: 280px;">
							<div class="container">Data Science & Knowledge Engineering</div>
						</div>
					</div>
					<div class="col-md-4"
						style="height: 200px; width: 280px; margin: 20px;">
						<div class="polaroid">
							<img src="./thumbnail/integrated-smart-system.jpg" alt="Norway"
								style="height: 200px; width: 280px;">
							<div class="container">Smart System</div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>



			</div>
		</div>

	</div>

</body>
</html>