
<%--
    Document   : register
    Created on : Mar 26, 2018, 9:10:32 PM
    Author     : suraj
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="shortcut icon" type="image/png" href="img/ts.png">
        <link rel="stylesheet" href="css/register.css">
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
            <li><a href="#">Mentor</a>
              <ul>
                 <li><a href="AdminReg.jsp">Sign Up</a></li>
                 <li><a href="ALogin.jsp">Login</a></li>
              </ul>
          </li>
          </ul>
        </nav>
   
   </div>
             </header>
     <main>
     <div class="wrapper">
      <div class="box">  
        <section class="form">

          <div class="reg">

              <p id="register">Register</p>

          </div>

         <div class="layout">
           <form action="JDBC" method="post">
             <div class="name">
                 <input type="text" name="Fname" placeholder="First Name" required>
              <input type="text" name="Lname" placeholder="Last Name" required
             </div>
              <br>
              <div class="email">
              <input type="email" name="email" placeholder="Your Email" required><br>
              <input type="password" name="password" placeholder="Create Password" required><br>
              <input type="text" name="college" placeholder="Enter Your College Name" required>
              </div>
              <br>
              <div class="course">
                <pre>Qualification :</pre>
                <select name="course">
                <option>Engineering</option>
                <option>Medical</option>
                <option>MBA</option>
                <option>Other</option>
                </select>
              </div>
              <br><input id="sub" type="submit" value="Create Account">
              <p id="mem">Already a member?</p>
              <a  href="login.jsp"><p id="hr">Sign in</p></a>
          </form>
          </div>
      </section>
     </div>
         
    </div>     
         
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
