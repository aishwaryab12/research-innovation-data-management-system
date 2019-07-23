<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">

<title>Login</title>
</head>
<body>

<div class="container">
<div class="jumbotron">
<h2>Enter your Credentials</h2>

	<form class="form-horizontal" name="forms" method="post" action="loginProcess.jsp">
		
		 <div class="row content">
			<div class="col-md-4 ">
				<label>Username</label><br>
			<input type="text" class="form-control" name="username" required="required" /> <br>
			</div>
		</div>
		
		<div class="row content">
			<div class="col-md-4 ">
				<label>Password</label><br>
			<input type="password" class="form-control" name="password" required="required" /> <br>
			</div>
		</div>
		
		
		 <br>
		 <div class="row content">
			<div class="col-md-2 ">
				<button type="submit" class="btn btn-primary btn-block">Login</button>
			</div>
			<div class="col-md-2 ">
				<button type="reset" class="btn btn-primary btn-block">Reset</button>
		</div>
		</div>
		
	</form>

	<br>
		

</div>
</div>
</body>
</html>