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
<h1><center>Find Missing Person</center>></h1>
<div class="container col-md-6">
<div class="form-group">
  <label for="usr">Name:</label>
  <input type="text" class="form-control" id="usr">
</div>
<div class="form-group">
    <label for="address">Address:</label>
  <input type="text" class="form-control" id="addr">
</div>
    <div class="form-group">
  <label for="mobile">Mobile:</label>
  <input type="text" class="form-control" id="mob">
</div>
<div class="form-group">
  <label for="district">District:</label>
  <input type="password" class="form-control" id="dist">
</div>
       <div class="form-group">
  <label for="notes">Notes:</label>
  <input type="text" class="form-control" id="note">
</div>
    <div class="form-group">
  <label for="gender">Gender:</label>
  <select class="form-control" id="gen">
    <option>--</option>
    <option>Male</option>
    <option>Female</option>
    <option>Other</option>
  </select>
</div>
     <div class="form-group">
  <label for="camp">Camp Name:</label>
  <select class="form-control" id="camp">
    <option>--</option>
    <option>Camp1</option>
    <option>Camp2</option>
    <option>Camp3</option>
  </select>
</div>
     <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-star"></span>Search
  </button>
    
</div>


</body>
</html>
