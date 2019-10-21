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
String cg=request.getParameter("cname");
String cn=request.getParameter("sel1");
String bh=request.getParameter("cphone");
String em=request.getParameter("caddr");
String ab=request.getParameter("sel2");
String bc=request.getParameter("cdet");



int a=ob.updatesql("INSERT INTO `contributions`(`name`, `district`, `phone`, `address`, `type`, `details`) VALUES   ('"+cg+"','"+cn+"','"+bh+"','"+em+"','"+ab+"','"+bc+"')");
if (a==1){
response.sendRedirect("Main.jsp");
}
%>
       
    </body>
</html>
