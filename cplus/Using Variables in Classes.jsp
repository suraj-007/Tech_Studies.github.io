

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
        <p id="title">Using Variables in Classes</p>  

<iframe width="900" height="500" src="https://www.youtube.com/embed/jTS7JTud1qQ?rel=0&amp;showinfo=0&amp;start=5" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


</div>
      <div class="Header">
        <p id="p"> cplus Lectures</p>
      </div>
            
             <div class="java">
        <ul>
        <li><a href="Quiz-c-plus.jsp">Quiz-c-plus</a></li><br>   
        <li><a href="Basic Arithmetic.jsp">  Basic Arithmetic </a></li><br>
        <li><a href="Constructors.jsp"> Constructors  </a></li><br>
        <li><a href="Creating Functions That Use Parameters.jsp">Creating Functions That Use Parameters   </a></li><br>
        <li><a href="Creating a Basic Calculator.jsp"> Creating a Basic Calculator  </a></li><br>
        <li><a href="Functions That Use Multiple Parameters.jsp"> Functions That Use Multiple Parameters  </a></li><br>
        <li><a href="Functions.jsp"> Functions  </a></li><br>
        <li><a href="Introduction to Classes and Objects.jsp"> Introduction to Classes and Objects  </a></li><br>
        <li><a href="More on Printing Text.jsp">  More on Printing Text </a></li><br>
        <li><a href="Simple Program Using a Loop.jsp"> Simple Program Using a Loop  </a></li><br>
        <li><a href="Understanding a Simple C++ Program.jsp">  Understanding a Simple C++ Program </a></li><br>
        <li><a href="Using Variables in Classes.jsp">Using Variables in Classes   </a></li><br>
        <li><a href="Variables Memory Concepts.jsp">Variables Memory Concepts   </a></li><br>
        <li><a href="Variables.jsp">  Variables </a></li><br>
        <li><a href="if Statement.jsp">  if Statement </a></li><br>
        
      
        
        
        
      
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
