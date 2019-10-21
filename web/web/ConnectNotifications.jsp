<%-- 
    Document   : connect
    Created on : Sep 24, 2018, 4:35:58 PM
    Author     : Networkz
--%>

<%@page import="Dbbean.Dbbean1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Rescue Management System</title>
    </head>
    <body>
        <%
Dbbean1 ob=new Dbbean1();
ob.connect();
String cg=request.getParameter("nname");
String cn=request.getParameter("ncont");
String bh=request.getParameter("ndate");
String em=request.getParameter("ntime");


int a=ob.updatesql("INSERT INTO `notifications`(`heading`, `content`, `date`, `time`) VALUES  ('"+cg+"','"+cn+"','"+bh+"','"+em+"')");
if (a==1){
response.sendRedirect("AdminMain.jsp");
}
%>
       
    </body>
</html>
