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
<div class="container" style="margin-left:200px;margin-top:100px ">
   <div class="container row col-md-12">
<div class="card col-md-3" style="width:600px">
    <div class="card-body">
      <h5 class="card-title">VIEW MISSING PERSON</h5>
          <img class="card-img-bottom" src="missing_1.jpg" alt="Card image" style="width:100%">
      <p class="card-text"></p><br><br><br>
      <center><a href="ViewMissingPerson.jsp" class="btn btn-danger">Click Here</a></center>
    </div>

  </div>
        &nbsp;      &nbsp;    &nbsp;      &nbsp;

  <div class="card col-md-3" style="width:600px">
    <div class="card-body">
      <h5 class="card-title">VIEW HELP REQUEST</h5><br>
      <img class="card-img-bottom" src="help-request-icon.jpg" alt="Card image" style="width:100%">
      <p class="card-text"></p><br>
      <center><a href="ViewHelpRequest.jsp" class="btn btn-danger">Click Here</a></center>
    </div>
      
  </div>
      &nbsp;      &nbsp;    &nbsp;      &nbsp;

  <div class="card col-md-3" style="width:600px">
    <div class="card-body">
      <h5 class="card-title">VIEW CONTRIBUTIONS</h5>
      <img class="card-img-bottom" src="contributei.jpg" alt="Card image" style="width:100%">
      <p class="card-text"></p>
      <center><a href="ViewContributions.jsp" class="btn btn-danger">Click Here</a></center>
    </div>
  

</body>
</html>