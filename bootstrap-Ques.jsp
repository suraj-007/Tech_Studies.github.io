<%-- 
    Document   : EditedComment
    Created on : Apr 7, 2018, 12:59:53 PM
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

<%@ page import="java.sql.*" %>
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
            
              String ques = request.getParameter("ques");
              String A = request.getParameter("A");
              String B = request.getParameter("B");
              String C = request.getParameter("C"); 
              String D = request.getParameter("D");
              String correct = request.getParameter("chk");
      
           
       String sql = "insert into bootstrap3(question,A,B,C,D,Correct) values(?,?,?,?,?,?)";
    
       
            Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection(url,dname,pass); 
                   PreparedStatement pst = con.prepareStatement(sql);
                   pst.setString(1,ques);
                   pst.setString(2,A);
                   pst.setString(3,B);
                   pst.setString(4,C);
                   pst.setString(5,D);
                   pst.setString(6,correct);
                   pst.executeUpdate();
                   response.sendRedirect("bootstrapQues.jsp");
               
            
      


        %>
    </body>
</html>
