
<%--
    Document   : Videos
    Created on : Mar 27, 2018, 7:45:52 PM
    Author     : suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
      response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");  //HTTP 1.1
      response.setHeader("Pragma","no-cache");    //HTTP 1.0
      response.setHeader("Expires","0");          //Proxy
    if(session.getAttribute("email") == null )
    {
        response.sendRedirect("login.jsp");
    }
    %>
 
    
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java</title>
        <link rel="stylesheet" href="Videos.css">
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
                <li><form method="post" action = "forum">
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
      <div class="video">
        <p id="title">Java Tutorial | First Code | Hello World</p>
        <iframe width="900" height="500" src="https://www.youtube.com/embed/D0GU-A8XNIA?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
      </div>
      <div class="Header">
        <p id="p">Java Lectures</p>
      </div>
      <div class="java">
        <ul>
        <li><a href="Quiz-Java.jsp">Quiz-Java</a></li><br>    
        <li><a href="First-Code.jsp">First Code | Hello World</a></li><br>
        <li><a href="Variable-in-Java.jsp">Variable in Java</a></li><br>
        <li><a href="Working-with-Variables.jsp">Working with Variables</a></li><br>
        <li><a href="Primtive-Data-Type-in-Java.jsp">Primtive Data Type in Java</a></li><br>
        <li><a href="Naming-Convention-in-Java.jsp">Naming Convention in Java</a></li><br>
        <li><a href="Arithmetic-Operators-in-Java.jsp">Arithmetic Operators in Java</a></li><br>
        <li><a href="Selection-Statement.jsp">If Else | Selection Statement</a></li><br>
        <li><a href="Ternary-and-Switch.jsp">Ternary and Switch Statement</a></li><br>
        <li><a href="Arithmetic-Operators-in-Java.jsp">Arithmetic Operators in Java</a></li><br>
        </ul>
  </div>
            
     </div>       
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
