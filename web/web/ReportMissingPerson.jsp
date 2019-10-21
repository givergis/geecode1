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
        <a class="navbar-brand" href="#" style="color:greenyellow;">E-Rescue Management System</a>
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
    <form action="">
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" required>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" required>
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
<h1><center>Report Missing Person</center></h1>
<form action="ConnectReportMissingPerson.jsp" method="post">
<div class="container col-md-6">
<div class="form-group">
  <label for="usr">Missing person's name :</label>
  <input type="text" class="form-control" id="usr" name="mname">
</div>
<div class="form-group">
    <label for="address">Description of the person (including identifying features):</label>
    <input type="text" class="form-control" id="addr" name="mdesc">
</div>
    <div class="form-group">
  <label for="mobile">Missing person's age :</label>
  <input type="text" class="form-control" id="mob" name="mage">
</div>
     <div class="form-group">
  <label for="gender">Missing person's gender :</label>
  <select class="form-control" id="gen" name="mgender">
    <option>--</option>
    <option>Male</option>
    <option>Female</option>
    <option>Other</option>
  </select>
</div>
<div class="form-group">
  <label for="district">Father's/Mother's/Guardian's name:</label>
  <input type="text" class="form-control" id="dist" name="mgname">
</div>
       <div class="form-group">
  <label for="notes">Missing person's photo:</label>
  <input type="file" class="form-control" id="note" name="mphoto">
</div>
    <label for="notes">Missing from district:</label>
    <div class="form-check">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" checked>Thiruvanthapuram
      </label>
    </div>
    <div class="form-check">
      <label class="form-check-label" for="radio2">
        <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Kollam
      </label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
          <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">Alappuzha
      </label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
          <input type="radio" class="form-check-input" id="radio4" name="optradio" value="option4">Eranakulam
      </label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
          <input type="radio" class="form-check-input" id="radio5" name="optradio" value="option5">Pathanamttita
      </label>
    </div>
      <div class="form-group">
  <label for="missingdate">Missing from date:</label>
  <input type="text" class="form-control" id="mdate" name="mdate">
</div>
    <div class="form-group">
  <label for="comment">Missing person's address:</label>
  <textarea class="form-control" rows="5" id="comment" name="maddress"></textarea>
</div>
    <div class="form-group">
  <label for="reporter">Reported by (Your name) :</label>
  <input type="text" class="form-control" id="repo" name="rname">
</div>
    <div class="form-group">
  <label for="relativenum">Relatives Mobile no:</label>
  <input type="text" class="form-control" id="rnum" name="rmob">
</div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
</div>
  </form>
 
   
 



</body>
</html>
