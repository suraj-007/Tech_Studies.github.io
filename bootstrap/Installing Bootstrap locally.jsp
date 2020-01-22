

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
        <p id="title">Installing Bootstrap locally</p>  
<iframe width="900" height="500" src="https://www.youtube.com/embed/2W03ZymI46g?rel=0&amp;showinfo=0&amp;start=5" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

        
      </div>
      <div class="Header">
        <p id="p">Bootstrap3</p>
      </div>


       <div class="java">
        <ul>
        <li><a href="Quiz-bootstrap.jsp">Quiz-Bootstrap3</a></li><br>
        <li><a href="Introduction to Bootstrap.jsp">Introduction to Bootstrap </a></li><br>
        <li><a href="Basic forms.jsp">Basic forms</a></li><br>
        <li><a href="Buttons.jsp"> Buttons</a></li><br>
        <li><a href="Dropdowns">Dropdowns</a></li><br>
        <li><a href="Horizontal forms.jsp">Horizontal forms </a></li><br>
        <li><a href="Images.jsp">Images </a></li><br>
        <li><a href="Installing Bootstrap locally.jsp"> Installing Bootstrap locally</a></li><br>
        <li><a href="Installing Bootstrap the CDN way.jsp"> Installing Bootstrap the CDN way</a></li><br>
        <li><a href="Jumbotrons and Wells.jsp">Jumbotrons and Wells </a></li><br>
        <li><a href="List Group.jsp"> List Group</a></li><br>
        <li><a href="Navbar.jsp"> Navbar</a></li><br>
        <li><a href="Navigation.jsp"> Navigation</a></li><br>
        <li><a href="Nesting the grid.jsp"> Nesting the grid</a></li><br>
        <li><a href="Tables.jsp"> Tables</a></li><br>
        <li><a href="The bootstrap grid explained.jsp">The bootstrap grid explained </a></li><br>
        <li><a href="Typography Classes.jsp">Typography Classes </a></li><br>
          <li><a href="Using the grid.jsp">Using the grid </a></li><br>  
            <li><a href="push and pull.jsp">push and pull </a></li><br>
        
        
        
        
      
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
