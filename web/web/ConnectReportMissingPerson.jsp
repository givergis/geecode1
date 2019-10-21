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
String cg=request.getParameter("mname");
String cn=request.getParameter("mdesc");
String bh=request.getParameter("mage");
String em=request.getParameter("mgender");
String yr=request.getParameter("mgname");
String an=request.getParameter("opradio");
String ae=request.getParameter("mdate");
String ab=request.getParameter("maddress");
String ac=request.getParameter("rname");
String ad=request.getParameter("rmob");
String af=request.getParameter("mphoto");

int a=ob.updatesql("INSERT INTO `reportmissingperson`(`mname`, `mdescription`, `mage`, `gender`, `guardianname`, `mdistrict`, `mdate`, `maddress`, `reportername`, `relmobile`, `image`) VALUES ('"+cg+"','"+cn+"','"+bh+"','"+em+"','"+yr+"','"+an+"','"+ae+"','"+ab+"','"+ac+"','"+ad+"','"+af+"')");
if (a==1){
response.sendRedirect("Main.jsp");
}
%>
       
    </body>
</html>
