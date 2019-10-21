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
<center><h1>To Contribute Materials</h1></center>
<form action="ConnectContributions.jsp" method="get">
<div class="container col-md-6">
            <div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" class="form-control" id="loc" name="cname" placeholder="Name:">
    </div>
<div class="form-group">
  <label for="sel1">Select District:</label>
  <select class="form-control" id="sel1" name="sel1">
    <option>--</option>
    <option>Alappuzha</option>
    <option>Eranakulam</option>
    <option>Pattanamtitta</option>
  </select>
</div>
    
     <div class="form-group">
      <label for="usr1">Phone:</label>
      <input type="text" class="form-control" id="requeste" name="cphone" placeholder="Phone Number:">
    </div>
 <div class="form-group">
  <label for="comment">Address:</label>
  <textarea class="form-control" rows="5" id="comment" name="caddr"></textarea>
</div>
    <div class="form-group">
  <label for="sel1">Contribution Type:</label>
  <select class="form-control" id="sel1" name="sel2">
    <option>--</option>
    <option>Food</option>
    <option>Medicine</option>
    <option>Clothing</option>
    <option>Other</option>
  </select>
</div>
     <div class="form-group">
  <label for="comment">Details of contribution (Eg: 10 shirts)</label>
  <textarea class="form-control" rows="5" id="comment" name="cdet"></textarea>
</div>
    
 <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-star"></span> Submit
  </button>   
</div>
</form>



</body>
</html>
