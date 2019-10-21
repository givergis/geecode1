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

<nav class="navbar navbar-expand-sm bg-info navbar-dark ">
  <ul class="navbar-nav">
    <li class="nav-header">
        <a class="navbar-brand" href="AdminMain.jsp" style="color:greenyellow;">E-Rescue Management System</a>
    </li>
    <li class="active">
        <a class="nav-link" href="AddNotification.jsp">Add new notification</a>
    </li>
    <li class="active">
        <a class="nav-link" href="AddCampDetails.jsp">Add rescue camp details</a>
    </li>
    </ul>
    <ul class="navbar-nav navbar-right" style="padding-left: 550px;">
     <li class="nav-item " >
         <a  class="nav-link" href="logout.jsp" style="color: white;"><span class="glyphicon glyphicon-log-in" ></span>Logout</a>
    </li>
    </ul>
</nav>
<br>
<center><h1>Add Camp Details</h1></center>
<form action="ConnectCampDetails.jsp" method="get">
<div class="container col-md-6">
            
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
      <label for="usr">Camp Name:</label>
      <input type="text" class="form-control" id="loc" name="cname" placeholder="Name:">
    </div>
     <div class="form-group">
  <label for="comment">Address:</label>
  <textarea class="form-control" rows="5" id="comment" name="caddr"  placeholder="Address:"></textarea>
</div>
    <div class="form-group">
      <label for="usr1">Phone:</label>
      <input type="text" class="form-control" id="requeste" name="cphone" placeholder="Phone Number:">
    </div>
    <div class="form-group">
      <label for="usr2">Total People:</label>
      <input type="text" class="form-control" id="reqnumb" name="ctpeople" placeholder="Total People:">
    </div>
    
       
    
 <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-star"></span> Submit
  </button>   
</div>
</form>
<%
try{

	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma", "no-cache");
String e=(String)session.getAttribute("usr");
System.out.print(e);
System.out.println("login"+e);
if ((e=="")||(e==null)){
	String message="please Login to continue!!";
	request.setAttribute("Message", message);
	
	// forwards to the message page
	getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);

}

}
catch(Exception e){}
%>
      
        
       


</body>
</html>