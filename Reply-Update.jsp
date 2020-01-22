<%-- 
    Document   : Contact
    Created on : Apr 14, 2018, 10:36:27 AM
    Author     : suraj
--%>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");  //HTTP 1.1
    //response.setHeader("Pragma","no-cache");    //HTTP 1.0
   // response.setHeader("Expires","0");          //Proxy
    if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    }
    
%>


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
            
              String gno = request.getParameter("gid");
              String R="R";
             
      
           
          String sql = "update Contact set status='R' where gid=?";
    
    
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass); 
            PreparedStatement pst = con.prepareStatement(sql);
                   //pst.setString(1,R);
                   pst.setString(1,gno);
                   pst.executeUpdate();
                   response.sendRedirect("Reply.jsp");
               
            
      


        %> 
    </body>
</html>
