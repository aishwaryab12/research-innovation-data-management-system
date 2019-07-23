<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<title>Research Publications</title>
	


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	
		<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

	<script src = "./Validation_Files/publications_verify1.js"></script>



</head>
<body>
 <div class="container">
 <jsp:include page="./headers/subheader.jsp" />

 	<div class="jumbotron">
 		<h2><b>Research Publications :</b></h2><br>
 		<form class="form-horizontal" method="post" action="publicationProcess.jsp" name="publication_form" onsubmit="return validate()">
 		
      <div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>SIG Name<font style="color: red;">*</font></label><br>
 					 <select class="form-control" name="sigName" required="required" >
				<option disabled selected value>-----Choose option-----</option>                
				<option value="High Performance & Scientific Computing">High Performance & Scientific Computing</option>
                <option value="Communication & Networking">Communication & Networking</option>
                <option value="Visual Computing">Visual Computing</option>
                <option value="Data Science & Knowledge Engineering">Data Science & Knowledge Engineering</option>
                <option value="Smart System">Smart System</option>
            </select>
 		    </div>
 			</div><br>


 			 <div class="row content">
            <div class="col-md-6 ">
                <label><font style="color: red;">*</font>Name of Faculty</label><br>

            <select class="form-control" name="nameOfFaculty" required="required">
            <option disabled selected value>-----Choose option-----</option>
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
 					<label>Name of Authors'<font style="color: red;">*</font></label><br>
 					<input type="text" name="authorName" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Weather the Students were involved in Publication?<font style="color: red;">*</font></label><br>
              <div class="radio">
                  <label><input type="radio" name="radio" value="Yes">Yes</label>
                  <label><input type="radio" name="radio" value="No">No</label>

              </div>
 				</div>
 			</div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Publication Type</label><br>
					<select class="form-control" name="publicationType" required="required">
							<option disabled selected value>-----Choose option-----</option>
							<option value="National">National</option>
							<option value="International">International</option>
					</select>
 				</div>
 			</div><br>	

 			
 			<div class="row content">	
 				<div class="col-md-6" class="form-group required">
 					<label>Title of Paper</label><br>
 					<input type="text" name="paperTitle" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>	

 			<div class="row content">	
 				<div class="col-md-6" class="form-group required">
 					<label>Name of Journal / Conference</label><br>
 					<input type="text" name="journalName" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>	

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Link<font style="color: red;">*</font></label><br>
 					<input type="text" name="link" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>	

      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>Name of Publisher / Organizer<font style="color: red;">*</font></label><br>
          <input type="text" name="nameOfPublisher" class="form-control" required="required" placeholder="">

        </div>
      </div><br> 


      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>Venue with Address<font style="color: red;">*</font></label><br>
          <input type="text" name="venue" class="form-control" required="required" placeholder="">

        </div>
      </div><br>  

      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>ISSN / ISBN / DOI Number<font style="color: red;">*</font></label><br>
          <input type="text" name="issnNumber" class="form-control" required="required" placeholder="">

        </div>
      </div><br>

      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>Volume and Issue Number<font style="color: red;">*</font></label><br>
          <input type="text" name="volumeNumber" class="form-control" required="required" placeholder="">

        </div>
      </div><br>

      <div class="row content"> 
        <div class="col-md-6" class="form-group required">
          <label>Page Number<font style="color: red;">*</font></label><br>
          <div class="row content">
          
              <div class="col-md-6 ">
              <label>From</label><br>
                <input type="text" class="form-control" name="fromPage" id="fromPage" required="required" placeholder="" />
                <font style="color: red;"><span id="fromPageerror"></span></font>
              </div>
              
              <div class="col-md-6 ">
              <label>To</label><br>
                <input type="text" class="form-control" name="toPage" id="toPage" required="required" placeholder="" />
                <font style="color: red;"><span id="toPageerror"></span></font>
              </div>
          </div>

        </div>
      </div><br>      


       <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>Month and Year of Publication<font style="color: red;">*</font></label><br>
          <input type="text" name="yearOfPublication" class="form-control" required="required" placeholder="">

        </div>
      </div><br>




 			<div class="row content"> 
        <div class="col-md-6" class="form-group required">
          <label>Duration<font style="color: red;">*</font></label><br>
          <div class="row content">
          
              <div class="col-md-6 ">
              <label>From</label><br>
                        <input class="form-control" id="date" name="dateFrom" required="required"  placeholder="MM/DD/YYY" type="text"/>
              </div>
              
              <div class="col-md-6 ">
              <label>To</label><br>
                        <input class="form-control" id="date" name="dateTo" required="required"  placeholder="MM/DD/YYY" type="text"/>
              </div>
          </div>

        </div>
      </div><br>

 			<div class="row content">
 				<div class="col-md-6" class="form-group required">
 					<label>Impact Factor<font style="color: red;">*</font></label><br>
 					<input type="text" name="impactFactor" class="form-control" required="required" placeholder="">

 				</div>
 			</div><br>

       <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>Citation Count<font style="color: red;">*</font></label><br>
          <input type="text" name="citationCount" id="citationCount" class="form-control" required="required" placeholder="">
           <font style="color: red;"><span id="citationCounterror"></span></font>

        </div>
      </div><br>

      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>Scopus Index<font style="color: red;">*</font></label><br>
          <input type="text" name="scopusIndex" class="form-control" required="required" placeholder="">

        </div>
      </div><br>

      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>SNIP<font style="color: red;">*</font></label><br>
          <input type="text" name="snip" class="form-control" required="required" placeholder="">

        </div>
      </div><br>


      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>SJR Rank<font style="color: red;">*</font></label><br>
          <input type="text" name="sjrRank" class="form-control" required="required" placeholder="">

        </div>
      </div><br>


      <div class="row content">
        <div class="col-md-6" class="form-group required">
          <label>Indexed by (any other)<font style="color: red;">*</font></label><br>
          <input type="text" name="indexby" class="form-control" required="required" placeholder="">

        </div>
      </div><br>

      <div class="row content">
			<div class="col-md-6 ">
				<label><font style="color: red;">*</font>Academic Year</label><br>
			<select class="form-control" name="academicYear" required="required">
				<option disabled selected value>-----Choose option-----</option>
				<option>2016-17</option>
				<option>2017-18</option>
				<option>2018-19</option>
				<option>2019-20</option>
			</select><br>
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
    });
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
    });
</script>


</body>
</html>
