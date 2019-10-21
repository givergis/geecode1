<%-- 
    Document   : Notifications
    Created on : Sep 18, 2018, 2:43:47 PM
    Author     : Gee
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

<%!Connection con; %>

<%!Statement s; %>

<%!ResultSet rs; %>

<%


try{
         
          Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-rescue","root","");

s=con.createStatement();

rs=s.executeQuery("SELECT * FROM `requestforhelp` ");

}catch(Exception e){ e.printStackTrace(); }

%>

<div id="dt_table"><table border='4' cellpadding='6' cellspacing='3' width="1000px">

<tr bgcolor="29AFCD">
    
<th>District</th>
<th>Location</th>
<th>Requestee</th>
<th>Requestee Phone</th>
<th>Requesting For</th>
<th>Other Needs</th>
</tr>


<% while(rs.next())

{ %>
<tr>

<td><%=rs.getString(1)%></td>

<td><%=rs.getString(2)%></td>

<td><%=rs.getString(3)%></td>

<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
</tr>

<% } %>


</table></div>
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