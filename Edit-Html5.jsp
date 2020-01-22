<%-- 
    Document   : CommentEdit
    Created on : Apr 7, 2018, 12:22:26 PM
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
<link rel="stylesheet" href="css/java.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper">  
         <% 
        String qid = request.getParameter("qid");
     
        String query = "select * from Html5 where qid=?";
 
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url,dname,pass);   
         
          PreparedStatement pst = con.prepareStatement(query);
          pst.setString(1,qid);
          ResultSet rs = pst.executeQuery();
          
          rs.next();
              
      %>
      
      <div class="Ques-box" 
             
           <pre id="NewQues">Ques.</pre>
           <form method="post" action="Edited-Html5.jsp">
            <input type="hidden" name="qid" value="<%= rs.getString(1) %>">   
            <textarea name="ques" ><%= rs.getString(2) %></textarea><br>
            <div class="option">
                
            <input type="checkbox" name="chk" value="A">A.<input id="option-box" type="text" name="A" value="<%= rs.getString(3) %>" ><br>
            <input type="checkbox" name="chk" value="B">B.<input id="option-box" type="text" name="B" value="<%= rs.getString(4) %>"><br>
            <input type="checkbox" name="chk" value="C">C.<input id="option-box" type="text" name="C" value="<%= rs.getString(5) %>"><br>
            <input type="checkbox" name="chk" value="D">D.<input id="option-box" type="text" name="D" value="<%= rs.getString(6) %>"><br>
             </div>          
            <input id="ok" type="submit" value="ok">
            </form>
             
        </div>     
      
      
       
      </div>        
    </body>
</html>
