<%-- 
    Document   : Notifications
    Created on : Sep 18, 2018, 2:43:47 PM
    Author     : Gee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>E-Rescue Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark ">
  <ul class="navbar-nav">
    <li class="nav-header">
        <a class="navbar-brand" href="Main.jsp" style="color:greenyellow;">E-Rescue Management System</a>
    </li>
    <li class="active">
      <a class="nav-link" href="Main.jsp">Home</a>
    </li>
    <li class="active">
      <a class="nav-link" href="Notifications.jsp">Announcements</a>
    </li>
    <li class="active">
      <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
    </li>
    
   
  </ul>
    <ul class="navbar-nav navbar-right" style="padding-left: 550px;">
     <li class="nav-item " >
         <a  class="nav-link" href="#" style="color: white;"data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" ></span>Admin Login</a>
    </li>
    </ul>
</nav>
<br>
<!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Admin Login</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           <!-- Admin Login form-->
           <form action="AdminLogin.jsp" method="post">
  <div class="form-group">
    <label for="email">User Name:</label>
    <input type="text" class="form-control" id="email" name="uname" >
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" name="pass" required>
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-default">Login</button>
</form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
                     <!--Cards-->
<div class="container">
  
  <div class="container row col-md-12">
 <div class="card col-md-3" style="width:500px">
    <div class="card-body">
      <h5 class="card-title">REQUEST FOR HELP</h5>
          <img class="card-img-bottom" src="download.jpg" alt="Card image" style="width:100%">
      <p class="card-text"></p>
      <center><a href="RequestHelp.jsp" class="btn btn-primary">Click Here</a></center>
    </div>

  </div>
      &nbsp;      &nbsp;    &nbsp;      &nbsp;

  <div class="card col-md-3" style="width:500px">
    <div class="card-body">
      <h5 class="card-title">FIND MISSING PERSON</h5>
      <img class="card-img-bottom" src="missing.jpg" alt="Card image" style="width:100%">
      <p class="card-text"></p><br>
      <br>
      <center><a href="FindMissingPerson.jsp" class="btn btn-primary">Click Here</a></center>
    </div>
    
  </div>
            &nbsp;      &nbsp;    &nbsp;      &nbsp;

  <div class="card col-md-3" style="width:500px">
    <div class="card-body">
      <h5 class="card-title">REPORT A MISSING PERSON</h5>
       <img class="card-img-bottom" src="reportnew.jpg" alt="Card image" style="width:100%">
      <p class="card-text"></p><br>
      <center> <a href="ReportMissingPerson.jsp" class="btn btn-primary">Click Here</a></center>
    </div>
   
  </div>
  
  </div>
  </br>
  <div class="container row col-md-12">
 <div class="card col-md-3" style="width:500px">
    <div class="card-body">
      <h5 class="card-title">RESCUE CAMP DETAILS</h5>
       <img class="card-img-bottom" src="rcn.png" alt="Card image" style="width:100%">
      <p class="card-text"></p>
      <center><a href="RescueCampDetails.jsp" class="btn btn-primary">Click Here</a></center>
    </div>
  </div>
      &nbsp;      &nbsp;    &nbsp;      &nbsp;

  <div class="card col-md-3" style="width:300px">
    <div class="card-body">
      <h5 class="card-title">VOLUNTEERS</h5>
       <img class="card-img-bottom" src="volunteers.png" alt="Card image" style="width:100%">
      <p class="card-text"></p><br>
      <center><a href="Volunteers.jsp" class="btn btn-primary">Click Here</a></center>
    </div>
  </div>
            &nbsp;      &nbsp;    &nbsp;      &nbsp;

  <div class="card col-md-3" style="width:300px">
    <div class="card-body">
      <h5 class="card-title">TO CONTRIBUTE</h5>
        <img class="card-img-bottom" src="donate1.jpg" alt="Card image" style="width:100%">
      <p class="card-text"></p>
      <center> <a href="ToContribute.jsp" class="btn btn-primary">Click Here</a></center>
    </div>
  
  </div>
  
  </div>
</div>



</body>
</html>
