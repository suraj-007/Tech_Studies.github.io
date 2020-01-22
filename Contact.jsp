<%-- 
    Document   : Contact
    Created on : Apr 14, 2018, 10:36:27 AM
    Author     : suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@include file="connection/dbconn.jsp" %>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            
              String gquery = request.getParameter("gquery");
              String gname = request.getParameter("gname");
              String gemail = request.getParameter("gemail");
             
      
           
                  String sql = "insert into Contact(gques,gname,gemail,status) values(?,?,?,?)";
     
       
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con = DriverManager.getConnection(url,dname,pass); 
                   PreparedStatement pst = con.prepareStatement(sql);
                   pst.setString(1,gquery);
                   pst.setString(2,gname);
                   pst.setString(3,gemail);
                   pst.setString(4,"N");
                   pst.executeUpdate();
                   response.sendRedirect("index.html");
               
            
      


        %> 
    </body>
</html>
