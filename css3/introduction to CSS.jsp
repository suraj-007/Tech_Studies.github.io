

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
        <p id="title">Introduction to CSS</p>  
<iframe width="900" height="500" src="https://www.youtube.com/embed/qKoajPPWpmo?rel=0&amp;showinfo=0&amp;start=5" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        
      </div>
      <div class="Header">
        <p id="p">CSS3 Lectures</p>
      </div>

            
     <div class="java">
        <ul>
        <li><a href="Quiz-css3.jsp">Quiz-css3</a></li><br>
         <li><a href="introduction to CSS.jsp">introduction to CSS</a></li><br>
        <li><a href="Using an external style sheet.jsp">Using an external style sheet</a></li><br>
        <li><a href="Using inline style.jsp">Using inline style</a></li><br>
        <li><a href="Add a line to header.jsp">Add a line to header</a></li><br>
        <li><a href="CSS Box Model Part 1.jsp">CSS Box Model Part 1</a></li><br>
        <li><a href="CSS Box Model Part 2.jsp">CSS Box Model Part 2</a></li><br>
        <li><a href="Changing Font type, colour  and Size.jsp">Changing Font type, colour  and Size</a></li><br>
        <li><a href="Classes in CSS.jsp">Classes in CSS</a></li><br>
        <li><a href="Font Family.jsp">Font Family</a></li><br>
        <li><a href="Inheritance and overriding.jsp">Inheritance and overriding</a></li><br>
        <li><a href="Italic fonts.jsp">Italic fonts</a></li><br>
        <li><a href="Line height property.jsp">Line height property</a></li><br>
        <li><a href="More on Classes in CSS.jsp">More on Classes in CSS</a></li><br>
        <li><a href="More on Font sizes.jsp">More on Font sizes</a></li><br>
        <li><a href="Multiple Selectors.jsp">Multiple Selectors</a></li><br>
        <li><a href="Text-decoration property.jsp">Text-decoration property</a></li><br>
        <li><a href="The Font Weight Property.jsp">The Font Weight Property</a></li><br>
           <li><a href="Web Colors.jsp">Web Colors</a></li><br>
          
        
        
      
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
