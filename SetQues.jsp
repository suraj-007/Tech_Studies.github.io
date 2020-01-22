<%-- 
    Document   : SetQues
    Created on : Apr 8, 2018, 2:04:53 PM
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/SetQues.css">
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
        
        <table>
        <th>Quiz Topics</th>    
        <tr><td><a href="java.jsp">Core Java</a></td></tr> 
        <tr><td><a href="Html5Ques.jsp">Html5</a></td></tr>
        <tr><td><a href="AspQues.jsp">Asp.net</a></td></tr>
        <tr><td><a href="bootstrapQues.jsp">Bootstrap3</a></td></tr>
        <tr><td><a href="cQues.jsp">C</a></td></tr>
        <tr><td><a href="cplusQues.jsp">C++</a></td></tr>
        <tr><td><a href="css3Ques.jsp">Css3</a></td></tr>
        <tr><td><a href="ajaxQues.jsp">Ajax</a></td></tr>
        <tr><td><a href="jqueryQues.jsp">JQuery</a></td></tr>
        <tr><td><a href="jspQues.jsp">Jsp</a></td></tr>
        <tr><td><a href="angularjsQues.jsp">Angularjs</a></td></tr>
        <tr><td><a href="phpQues.jsp">Php</a></td></tr>
        
        
        
        </table>
        
        
        
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
