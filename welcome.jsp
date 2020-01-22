
<%--
    Document   : welcome
    Created on : Mar 27, 2018, 4:45:47 PM
    Author     : suraj
--%>

<%
    //response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");  //HTTP 1.1
   // response.setHeader("Pragma","no-cache");    //HTTP 1.0
   // response.setHeader("Expires","0");          //Proxy
    if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    }
    
%>
<%@ page import="java.sql.*" %>
<%@include file="connection/dbconn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");  //HTTP 1.1
   // response.setHeader("Pragma","no-cache");    //HTTP 1.0
   // response.setHeader("Expires","0");          //Proxy
    if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    }
    
%>


<%
    
     
       String uname= session.getAttribute("email").toString();

       String sql = "select * from Login where email=?";
     
     
     
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass);
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,uname);
            ResultSet rs = pst.executeQuery();
            rs.next();
%>


<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <link rel="shortcut icon" type="image/png" href="img/ts.png">
        <link rel="stylesheet" href="css/welcome.css">
    </head>
    <body>
<header>
        <div id="main">
        <a class="main" href="index.html" class="header-brand"><pre>TECH STUDIES <p id="bar">|</p> </pre></a>
        <nav>
          <ul>
            <li><a href="index.html">About Us</a></li>
            <li><a href="index.html">Contact</a></li>
                <li><a href="#">Mentor</a>
                    <ul>
                        <li><a href="AdminReg.jsp">Sign Up</a></li>
                        <li><a href="ALogin.jsp">Login</a></li>
                    </ul>
                </li>
                <li><a href="#">Lectures</a></li>
                <li><form method="post" action = "forum">
                        <input type="hidden" name="name" value="<%= rs.getString(1) %> <%= rs.getString(2) %>"> 
                        <button id="Forum" type="submit">Forum</button></form>
                </li>
               <li><a href="result.jsp">Result</a></li>
            </ul>
            <form method="post" action="Logout">            
            <button class="button" href="Logout">Logout</button>
            </form>
        </nav>
        </div>
   </header>                  
        <main>
           
            <div class="intro">
                <p>Name : <%= rs.getString(1) %> <%= rs.getString(2) %></p>
                <p>Email : <%= rs.getString(3) %></p>
                <p>College : <%= rs.getString(5) %></p>
                <P>Qualification : <%= rs.getString(6) %></p>
              
            </div>
            <div class="wrapper">
                
                <section class="cases-links">
                    
                    <h2>Tech Lectures</h2>                   
                    <a href="java/Core-Java.jsp"><div class="core-java"></div></a>
                    <a href="Html5/Html5.jsp"><div class="html5"></div></a>
                    <a href="css3/introduction to CSS.jsp"><div class="css3"></div></a>
                    <a href="jsp/JSP Introduction.jsp"><div class="jsp"></div></a>
                    <a href="Dot Net/What is ADO.NET - Part 1.jsp"><div class="java-script"></div></a>
                    <a href="angularjs/What is AngularJS.jsp"><div class="angularjs"></div></a>
                    <a href="ajax/How to get started with Ajax.jsp"><div class="ajax"></div></a>
                    <a href="jquery/How to Get Started With  jQuery.jsp"><div class="jquery"></div></a>
                    <a href="bootstrap/Basic forms.jsp"><div class="bootstrap"></div></a>
                    <a href="c/How Computer Programs Work.jsp"><div class="c"></div></a>
                    <a href="cplus/Variables.jsp"><div class="cplus"></div></a>
                    <a href="php/Getting Started and Introduction to PHP.jsp"><div class="php"></div></a>
                            
             
        </section>
                
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
    
</main>
</body>
</html>
