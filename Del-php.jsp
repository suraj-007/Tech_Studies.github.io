<%-- 
    Document   : CommentDelete
    Created on : Apr 7, 2018, 1:17:05 PM
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

<%@page import="java.sql.*" %>
<%@include file="connection/dbconn.jsp" %>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%
            
       String qid = request.getParameter("qid");
           
       String sql = "delete from php where qid=?";
    
       
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection(url,dname,pass); 
                   PreparedStatement pst = con.prepareStatement(sql);
                   pst.setString(1,qid);
                   pst.executeUpdate();
                   response.sendRedirect("phpQues.jsp");

        %>
    </body>
</html>
