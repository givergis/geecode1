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
String cg=request.getParameter("vname");
String cn=request.getParameter("sel1");
String bh=request.getParameter("vorga");

String em=request.getParameter("vphone");

System.out.println(em);
String yr=request.getParameter("sel2");
String an=request.getParameter("vaddr");

int a=ob.updatesql("INSERT INTO `registervolunteer`(`name`, `district`, `phone`, `organization`, `area`, `address`) VALUES  ('"+cg+"','"+cn+"','"+em+"','"+bh+"','"+yr+"','"+an+"')");
if (a==1){
response.sendRedirect("Main.jsp");
}
%>
       
    </body>
</html>
