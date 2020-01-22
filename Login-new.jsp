<%--
    Document   : login
    Created on : Mar 27, 2018, 4:08:09 PM
    Author     : suraj
--%>

    
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
     <header>
        <div id="main">
        <a class="main" href="index.html" class="header-brand"><pre>TECH STUDIES <p id="bar">|</p> </pre></a>
        <nav>
          <ul>
            <li><a href="index.html">About Us</a></li>
            <li><a href="index.html">Contact</a></li>
            <li><a href="register.jsp">Sign Up</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="#">Admin</a>
              <ul>
                 <li><a href="AdminReg.jsp">Sign Up</a></li>
                 <li><a href="ALogin.jsp">Login</a></li>
              </ul>
          </li>
          </ul>
        </nav>
      </header>
   </div>  
    </div>
      <main>
          <h1 id="login">You are Registered ! Please Login</h1>    
     <div class="wrapper">    
      <div class="box">
           <p id="pe">Login</p>
          <div class="email">
          <form action="Login" method="post">
             <input type="text" name="email" placeholder="Enter Your Email"><br>
             <input type="password" name="password" placeholder="Enter Your Password">
          </div>
        <div class="submit">
            <input type="submit" value="Login">
        </div>
        </form>
        <div class="last">
        <p id="last1">Not a member?</p><a id="last2" href="register.jsp"> Sign up now</a>
      </div>
      </div>
  </div>       
  </main>
    
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
