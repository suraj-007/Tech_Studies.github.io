<%-- 
    Document   : Reply
    Created on : Apr 15, 2018, 10:27:22 PM
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

<%@include file="connection/dbconn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<link rel="stylesheet" href="css/Reply.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
         <header>
        <div id="main">
        <a class="main" href="index.html" class="header-brand"><pre>TECH STUDIES <p id="bar">|</p> </pre></a>
        <nav>
          <ul>
            <li><a href="index.html">About Us</a></li>
            <li><a href="index.html">Contact</a></li>
                <li><a href="#">Admin</a>
                    <ul>
                        <li><a href="AdminReg.jsp">Sign Up</a></li>
                        <li><a href="ALogin.jsp">Login</a></li>
                    </ul>
                </li>
                <li><a href="welcome.jsp">Lectures</a></li>
                <li><form method="post" action = "forum">
                        <input type="hidden" name="name" value="${Fname} ${Lname}"> 
                        <button id="Forum" type="submit">Forum</button></form>
                </li>
            </ul>
           <form method="post" action="Logout">            
            <button class="button" href="Logout">Logout</button>
            </form>
        </nav>
        </div>
   </header>           
        
        
        
        
        
               <div class="wrapper">
                     <form method="post" action="Reply-Resolved.jsp">
               
                <button id="Resolved-Queries-button" type="submit" >Show All  Resolved Queries</button>  
                     <div class="Non-Resolved">
                         
                         
                
        
      <%      
       String sql = "select * from Contact";
  
      
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass);
            Statement st = con.createStatement();
         
            ResultSet rs = st.executeQuery(sql);
            while(rs.next())
            {
                
                if(rs.getString(5).equalsIgnoreCase("N"))
                {
                
        %>        
         
        <div class="N-box">
            <p>Name : <%=rs.getString(3)%></p> 
            <p>Email : <%=rs.getString(4) %></p>
            <p>Query : <%=rs.getString(2) %></p>
            <br>
            <form method="post" action="Reply-Update.jsp">
                <input type="hidden" name="gid" value="<%=rs.getString(1) %>">
                <button class="button" type="submit" >Resolved</button>
            </form>
        </div>  
                
            
                
         <%
               }
         
           
         %>
         
        
        
          
       
          
  
                         
                     
                     
                     
             
   
                
            
        <%        
            }
            
  
            
            
            %>
             
            
               
                
             </div>
            
                          
                     
                     
                 
               </div>      
                 
                 
    
                 
                 
                 
                 
            <div id="space">   </div>               
                        
      <footer id="footer">
       <ul class="footer-links-main">
           <li><a href="index.html">Home</li>
           <li><a href="index.html">About us</li>
           <li><a href="index.html">Contact</li>
      </ul>

    <div class="footer-sm">

      <a href="https://www.facebook.com"><img src="img/Facebook-icon.png" alt="fb icon"></a>
      <a href="https://www.youtube.com"><img src="img/youtube1.png" alt="fb icon"></a>

    </div>


    </footer>
                 
                 
                 
                 
    </body>
</html>
