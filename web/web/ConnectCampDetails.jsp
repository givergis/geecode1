<%-- 
    Document   : connect
    Created on : Sep 24, 2018, 4:35:58 PM
    Author     : Networkz
--%>

<%@page import="georgy.Dbbean1"%>
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
String cg=request.getParameter("sel1");
String cn=request.getParameter("cname");
String bh=request.getParameter("caddr");
String em=request.getParameter("cphone");
String yr=request.getParameter("ctpeople");


int a=ob.updatesql("INSERT INTO `campdetails`(`District`, `Campname`, `Address`, `Contactnumber`, `Totalpeople`) VALUES  ('"+cg+"','"+cn+"','"+bh+"','"+em+"','"+yr+"')");
if (a==1){
response.sendRedirect("AdminMain.jsp");
}
%>
       
    </body>
</html>
