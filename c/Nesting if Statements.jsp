

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
        <p id="title">Nesting if Statements</p>  

<iframe width="900" height="500" src="https://www.youtube.com/embed/FtZ1YgSFqs0?rel=0&amp;showinfo=0&amp;start=5" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


</div>
      <div class="Header">
        <p id="p"> C Lectures</p>
      </div>
            
             <div class="java">
        <ul>
        <li><a href="Quiz-c.jsp">Quiz-c</a></li><br>   
        <li><a href="Arrays and Pointers.jsp">  Arrays and Pointers </a></li><br>
        <li><a href="Comments.jsp">Comments</a></li><br><li>
        <li><a href="Conversion Characters.jsp">Conversion Characters</a></li><br>
        <li><a href="Creating a Header File.jsp">Creating a Header File   </a></li><br>
        <li><a href="Functions.jsp">  Functions </a></li><br>
        <li><a href="Getting Input with scanf.jsp"> Getting Input with scanf  </a></li><br>
        <li><a href="Global vs Local Variables.jsp"> Global vs Local Variables  </a></li><br>
        <li><a href="How Computer Programs Work.jsp">  How Computer Programs Work </a></li><br>
        <li><a href="Increment Operator.jsp"> Increment Operator  </a></li><br>
        <li><a href="Making Decisions Using if Statements.jsp">Making Decisions Using if Statements   </a></li><br>
        <li><a href="Math Operators.jsp"> Math Operators  </a></li><br>
        <li><a href="Nesting if Statements.jsp">  Nesting if Statements </a></li><br>
        <li><a href="Passing Arguments to Functions.jsp"> Passing Arguments to Functions  </a></li><br>
        <li><a href="Print Text on the Screen.jsp"> Print Text on the Screen  </a></li><br>
        <li><a href="Return Values.jsp"> Return Values  </a></li><br>
        <li><a href="Structures.jsp"> Structures  </a></li><br>
        <li><a href="Typecasting.jsp">Typecasting   </a></li><br>
        <li><a href="Variables.jsp"> Variables  </a></li><br>
        <li><a href="do while Loops.jsp"> do while Loops  </a></li><br>
        <li><a href="for Loop.jsp"> for Loop  </a></li><br>
        <li><a href="if else.jsp"> if else  </a></li><br>
        <li><a href="strcat and strcpy.jsp"> strcat and strcpy  </a></li><br>
        <li><a href="while Loops.jsp"> while Loops  </a></li><br>
        
        
        
      
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
