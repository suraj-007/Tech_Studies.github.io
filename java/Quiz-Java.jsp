<%-- 
    Document   : Quiz-Java
    Created on : Apr 9, 2018, 12:12:36 AM
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
<%@include file="../connection/dbconn.jsp" %>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<link rel="stylesheet" href="Quiz-Java.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
        <div id="main">
        <a class="main" href="../index.html" class="header-brand"><pre>TECH STUDIES <p id="bar">|</p> </pre></a>
        <nav>
          <ul>
            <li><a href="../index.html">About Us</a></li>
            <li><a href="../index.html">Contact</a></li>
                <li><a href="#">Admin</a>
                    <ul>
                        <li><a href="../AdminReg.jsp">Sign Up</a></li>
                        <li><a href="../ALogin.jsp">Login</a></li>
                    </ul>
                </li>
                <li><a href="../welcome.jsp">Lectures</a></li>
                <li><form method="post" action = "../forum">
                        <input type="hidden" name="name" value="${Fname} ${Lname}"> 
                        <button id="Forum" type="submit">Forum</button></form>
                </li>
            </ul>
            <form method="post" action="../Logout">            
            <button class="button" href="../Logout">Logout</button>
            </form>
        </nav>
        </div>
   </header>                  
        
        
        
        
        
         <div class="wrapper">
        <form method="post" action="Calc-Marks.jsp">    
         <% 
        int c=1;
   
        String query = "select * from java";
 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,dname,pass);   
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
          
          while(rs.next())
          {
              
      %>
      
            
          Q.<% out.print(c);
          %>
          <p id="Ques"> <%=  rs.getString(2)%></p>
            
            <div class="option">
            <input type="hidden" name="q<%= c%>" value=" <%=  rs.getString(1)%>">
            <input type="checkbox" name="<%= c %>" value="A"><p id="option">A.   <%=  rs.getString(3)%></p><br>
            <input type="checkbox" name="<%= c %>" value="B"><p id="option">B.   <%=  rs.getString(4)%></p><br>
            <input type="checkbox" name="<%= c %>" value="C"><p id="option">C.   <%=  rs.getString(5)%></p><br>
            <input type="checkbox" name="<%= c++ %>" value="D"><p id="option">D.   <%=  rs.getString(6)%></p><br>
            </div>
            <%
                }
                %>
            
            <input type="hidden" name="c" value="<%= c %>">     
            <input id="ok" type="submit" value="Submit">
            </form>
            
            
            
             <div id="space">   </div>
    
    <footer id="footer">
       <ul class="footer-links-main">
           <li><a href="../index.html">Home</li>
           <li><a href="../index.html">About us</li>
           <li><a href="../index.html">Contact</li>
      </ul>

    <div class="footer-sm">

      <a href="https://www.facebook.com"><img src="img/Facebook-icon.png" alt="fb icon"></a>
      <a href="https://www.youtube.com"><img src="img/youtube1.png" alt="fb icon"></a>

    </div>


    </footer>
           
    </body>
</html>
