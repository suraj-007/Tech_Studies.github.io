
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
        <p id="title">Graphics Canvas part 1</p>
        <iframe width="900" height="500" src="https://www.youtube.com/embed/pTo2BS9O6Bw?rel=0&amp;showinfo=0&amp;start=5" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> </div>
      <div class="Header">
          <p id="p">Html5 Lectures</p>
      </div>
   <div class="java">
        <ul>
        <li><a href="Quiz-Html5.jsp">Quiz-Html5</a></li><br>    
        <li><a href="Introduction-to-Html5.jsp">Introduction to Html5</a></li><br>
        <li><a href="Semantics-in-Html5.jsp">Semantics in Html5</a></li><br>
        <li><a href="Inline-in-Html5.jsp">Inline in Html5</a></li><br>
        <li><a href="Html5-input-types.jsp">Html5 Input Types</a></li><br>
        <li><a href="Form-Attributes.jsp">Form Attributes</a></li><br>
        <li><a href="input-Attributes.jsp">Input Attributes</a></li><br>
        <li><a href="Forms-2.jsp">Forms 2.0</a></li><br>
        <li><a href="Graphics- Canvas part1.jsp">Graphics Canvas Part 1</a></li><br>
        <li><a href="Graphics-Canvas part 2.jsp">Graphics Canvas Part 2</a></li><br>
        <li><a href="Graphics-Canvas part 3.jsp">Graphics Canvas Part 3</a></li><br>
        <li><a href="HTML-Multimedia Part 1.jsp">HTML Multimedia Part 1</a></li><br>
        <li><a href="HTML-Multimrdia Part 2.jsp">HTML Multimedia Part 2</a></li><br>
        <li><a href="Introduction- to SVG.jsp">Introduction to SVG</a></li><br>
        <li><a href="Mathematical- Markup Language.jsp">Mathematical Markup Language</a></li><br>
        
        
      
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
