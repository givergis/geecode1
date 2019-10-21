<%-- 
    Document   : AdminLogin
    Created on : Sep 18, 2018, 2:44:43 PM
    Author     : Networkz
--%>

<%@page import="georgy.Dbbean1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

       String userid=request.getParameter("uname");
       String pwd=request.getParameter("pass");
       
 

    ResultSet rs;
    rs = st.executeQuery("select * from login where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("AdminMain.jsp");
    } else {
        out.println("Invalid password <a href='Main.jsp'>try again</a>");
    }
      
       
     //  if(usern.equals("admin") && upass.equals("pass123")){
      //     session.setAttribute("usr", usern);
       //    response.sendRedirect("AdminMain.jsp");
     //  }
      // else{
         //  
        //  <script>alert("Invalid username or password");
       //    </script><%
         //  out.print("<a href='Main.jsp'>Try logging in again..Click here </a>");
          // response.sendRedirect("Main.jsp");
       }
       
       %>
    </body>
</html>
