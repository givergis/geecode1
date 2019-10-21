
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

response.addHeader("Cache-Control",
"no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
response.addHeader("Pragma", "no-cache"); 
response.addDateHeader ("Expires", 0);
PrintWriter pout=response.getWriter();

String e=(String)session.getAttribute("usr");
System.out.println("login"+e);
if ((e=="")||(e==null)){
	String message="Session Expired!!";
	request.setAttribute("Message", message);
	
	// forwards to the message page
	getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
	response.sendRedirect("Main.jsp");
}

else{
     session.invalidate();  
      
     String message="You have successfully logged out!";
 	request.setAttribute("Message", message);
 	
 	// forwards to the message page
 	getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
 	response.sendRedirect("Main.jsp");
     
       
	}

%>
</body>
</html>

