
<%--
    Document   : AdminReg
    Created on : Mar 27, 2018, 8:25:35 PM
    Author     : suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mentor Registration</title>
        <link rel="shortcut icon" type="image/png" href="img/ts.png">
        <link rel="stylesheet" href="css/AdminReg.css">
    </head>s
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
            <li><a href="#">Mentor</a>
              <ul>
                 <li><a href="AdminReg.jsp">Sign Up</a></li>
                 <li><a href="ALogin.jsp">Login</a></li>
              </ul>
          </li>
          </ul>
        </nav>
      </header>
   </div>  
         <main>
            <section>
            <div class="box">
            <p id="pe">Register</p>
            <form action="AChk" method="post">
            <div class="name">
            <input type="text" name="Fname" placeholder="First Name" required>
            <input type="text" name="Lname" placeholder="Last Name" required> <br>
            </div>
            <div class="email">
            <input type="email" name="Aemail" placeholder="Your Email" required> <br>
            <input type="password" name="Apassword" placeholder="Create Password" required> <br>
            <input type="text" name="dbname" placeholder="Your Database Name" required> <br>
            <input type="password" name="dbpass" placeholder="Your Database Password" required> <br><br>
            </div>
            <div class="submit">
            <br><input type="submit" value="Create Account">
            </div>
            <div class="last">
              <p id="last1">Already a member?</p><a href="ALogin.jsp" id="last2">Sign in</a>
            </div>
            </form>
          </div>
          </section>
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
