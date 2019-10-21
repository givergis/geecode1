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
String cn=request.getParameter("username");
String bh=request.getParameter("box1");
String em=request.getParameter("box2");
String an=request.getParameter("box3");
String requestf="";
String req[]=request.getParameterValues("opt1");
for(int i=0;i<req.length;i++){
    requestf+=req[i]+" ,";
}
int a=ob.updatesql("INSERT INTO `requestforhelp`(`district`, `location`, `requestee`, `requesteephone`, `requestingfor`, `otherneeds`) VALUES ('"+cg+"','"+cn+"','"+bh+"','"+em+"','"+requestf+"','"+an+"')");
if (a==1){
response.sendRedirect("Main.jsp");
}
%>
       
    </body>
</html>
