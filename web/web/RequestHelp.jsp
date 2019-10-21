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
  <script type="text/javascript">
      function validate(){
          var pass=document.requestform.box2.value;
          var dist=document.getElementById("sel1").value;
          if(dist=="--"){
              alert("Select district");
              document.requestform.sel1.focus();
              return false;
          }
              
          if((pass.length<10)||(pass.length>10)){
              alert("Invalid Phone Number");
              document.requestform.box2.focus();
              return false;
          }
          else  if(!/^[0-9]+$/.test(pass)){
              alert("Enter valid phone number");
              document.requestform.box2.focus();
              return false;
          }
          
      }
      </script>
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
  <button type="submit" class="btn btn-default" >Login</button>
</form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
<h1><center>Request For Help</center></h1>
<div class="container col-md-6">
    <form name="requestform" action="ConnectRequest4Help.jsp" method="post">
<div class="form-group">
  <label for="sel1">Select District:</label>
  <select class="form-control" id="sel1" name="sel1" >
    <option>--</option>
    <option>Alappuzha</option>
    <option>Eranakulam</option>
    <option>Pattanamtitta</option>
  </select>
</div>
    <div class="form-group">
      <label for="usr">Location:</label>
      <input type="text" class="form-control" id="loc" name="username" placeholder="Location:" required>
    </div>
     <div class="form-group">
      <label for="usr1">Requestee:</label>
      <input type="text" class="form-control" id="requeste" name="box1" placeholder="Requestee:" required>
    </div>
    <div class="form-group">
      <label for="usr2">Requestee Phone:</label>
      <input type="text" class="form-control" id="reqnumb" name="box2" placeholder="Requestee Phone:" required>
    </div>
    
      <div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="Need Rescue" name="op1">Need Rescue
  </label>
</div>
      <div class="form-check">
  <label class="form-check-label">
      <input type="checkbox" class="form-check-input" value="Food" name="op1">Food
  </label>
</div>
      <div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="Water" name="op1">Water
  </label>
</div>
      <div class="form-check">
  <label class="form-check-label">
      <input type="checkbox" class="form-check-input" value="Medicine" name="op1">Medicine
  </label>
</div>
     <div class="form-group">
      <label for="needs">Other needs:</label>
      <input type="text" class="form-control" id="oneeds" name="box3" placeholder="Other needs:" required>
    </div>
        <button type="submit" class="btn btn-primary" onClick="return validate();">Submit
  </button>
    </form>
    
</div>



</body>
</html>