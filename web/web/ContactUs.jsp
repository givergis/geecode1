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
  <title>Contacts Us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script>

function getcontactdetails(string1)

{

var xRequest1;

if(string1=="")

{

document.getElementById("Show_update").innerHTML="";

return;

}

if(window.XMLHttpRequest)

{

xRequest1=new XMLHttpRequest();

}

else

{

xRequest1=new ActiveXObject("Microsoft.XMLHTTP");

}

xRequest1.onreadystatechange=function ()

{

if((xRequest1.readyState==4) && (xRequest1.status==200))

{

document.getElementById("Show_update").innerHTML=xRequest1.responseText;

}

}

xRequest1.open("get","ViewContacts.jsp?q="+string1,"true");

xRequest1.send();

}

</script>
<script src="jquery.js"></script>
  
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
<div class="container">
  <div class="jumbotron">
   <h1 style=" font-family: fantasy">CONTACT US: </h1>  
   <div class="container">
  <p></p>
  <form action="">
 <div class="form-group">
  <label for="sel1">Select District:</label>
  <select class="form-control" id="sel1"  onchange="getcontactdetails(this.value)">
    <option>--</option>
      <option>Alappuzha</option>
    <option>Eranakulam</option>
    <option>Pathanamthitta</option>
   <!-- <option>Select4</option>-->
  </select>
</div>
  </form>
    <div id="Show_update">  
</div>

   </div>
    
  </div>




</body>
</html>
