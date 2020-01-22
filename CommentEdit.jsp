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
<link rel="stylesheet" href="css/comment.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
        String cid = request.getParameter("cid");
      
        String query = "select * from comments where cid=?";
 
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url,dname,pass);   
         
          PreparedStatement pst = con.prepareStatement(query);
          pst.setString(1,cid);
          ResultSet rs = pst.executeQuery();
          
          rs.next();
              
      %>
        <div class="comment-box">
          <image id="Cimg" src="img/comment1.jpg">
          <p id="Comment-name"> <%=  rs.getString(2)%></p>
           <form method="post" action="EditedComment.jsp">
               <input type="hidden" name="cid" value="<%= rs.getString(1) %>">
               <textarea name="editedcomment" ><%=  rs.getString(3)%></textarea>
               <button type="submit" >Comment</button>
           </form>
      </div>        
    </body>
</html>
