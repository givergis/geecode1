<%@page import="java.text.SimpleDateFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="javax.servlet.*" %>

<%@page import="javax.servlet.http.*" %>

<%@page import="java.util.*,java.sql.*,java.io.*" %>

 

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>E-Rescue Management System</title>

</head>

<body>

<%!Connection con; %>

<%!Statement s; %>

<%!ResultSet rs; %>

<% String dist=request.getParameter("q");

try{
         
          Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-rescue","root","");

s=con.createStatement();

rs=s.executeQuery("SELECT * FROM `campdetails` where district='"+dist+"'");

}catch(Exception e){ e.printStackTrace(); }

%>

<div id="dt_table"><table border='4' cellpadding='6' cellspacing='3' width="1000px">

<tr bgcolor="66FF00">

<th>District</th>

<th>Camp Name</th>

<th>Address</th>

<th>Phone Number</th>
<th>Total People</th>

</tr>



<% while(rs.next())

{ %>
<tr>

<td><%=rs.getString(1)%></td>

<td><%=rs.getString(2)%></td>

<td><%=rs.getString(3)%></td>

<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>

<% } %>

</tr>

</table></div>

</body>

</html>