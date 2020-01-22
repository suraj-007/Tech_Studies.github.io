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
            
              String qid= request.getParameter("qid");            
              String ques = request.getParameter("ques");
              String A = request.getParameter("A");
              String B = request.getParameter("B");
              String C = request.getParameter("C"); 
              String D = request.getParameter("D");
              String correct = request.getParameter("chk");
      
           
       String sql = "update angularjs set question=?,A=?,B=?,C=?,D=?,Correct=? where qid=?";
   
       
            Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection(url,dname,pass); 
                   PreparedStatement pst = con.prepareStatement(sql);
                   pst.setString(1,ques);
                   pst.setString(2,A);
                   pst.setString(3,B);
                   pst.setString(4,C);
                   pst.setString(5,D);
                   pst.setString(6,correct);
                   pst.setString(7,qid);
                   pst.executeUpdate();
                   response.sendRedirect("angularjsQues.jsp");
    %>