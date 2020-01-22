

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
      <div class="video">
        <p id="title">PHP Foreach Loop</p>  
<iframe width="900" height="500" src="https://www.youtube.com/embed/3f0efM27ajg?rel=0&amp;showinfo=0&amp;start=5" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>



</div>
       <div class="Header">
        <p id="p">php Lectures</p>
      </div>

             <div class="java">
        <ul>
        <li><a href="Quiz-php.jsp">Quiz-php</a></li><br>   
        <li><a href="Getting Started and Introduction to PHP.jsp">Getting Started and Introduction to PHP</a></li><br>
        <li><a href="First PHP Script and Hello World.jsp">First PHP Script and Hello World</a></li><br>
        <li><a href="Arithmetic operation.jsp">Arithmetic operation</a></li><br>
        <li><a href="Arrays in PHP.jsp">Arrays in PHP</a></li><br>
        <li><a href="Associative Arrays in PHP.jsp">Associative Arrays in PHP</a></li><br>
        <li><a href="Comparison operators and Logical operators.jsp">Comparison operators and Logical operators</a></li><br>
        <li><a href="Concatenation Operator and Escape sequences.jsp">Concatenation Operator and Escape sequences</a></li><br>
        <li><a href="For Loop in PHP.jsp">For Loop in PHP</a></li><br>
        <li><a href="How to Install Notepad++ as PHP Editor.jsp">How to Install Notepad++ as PHP Editor</a></li><br>
        <li><a href="How to Install XAMPP.jsp">How to Install XAMPP</a></li><br>
        <li><a href="If, else and nested ifelse Statements.jsp">If, else and nested ifelse Statements</a></li><br>
        <li><a href="Multidimensional Arrays in PHP.jsp">Multidimensional Arrays in PHP</a></li><br>
        <li><a href="PHP Foreach Loop.jsp">PHP Foreach Loop</a></li><br>
        <li><a href="PHP Variables and Echo Function.jsp">PHP Variables and Echo Function</a></li><br>
        <li><a href="Switch Statement.jsp">Switch Statement</a></li><br>
        <li><a href="Using $_GET Variables in PHP.jsp">Using $_GET Variables in PHP</a></li><br>
        <li><a href="Using $_POST Variables in PHP.jsp">Using $_POST Variables in PHP</a></li><br>
        <li><a href="While and Do While Loop in PHP.jsp">While and Do While Loop in PHP</a></li><br>
        
        
        
      
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
