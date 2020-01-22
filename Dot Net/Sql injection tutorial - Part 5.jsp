

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
        <p id="title">Sql injection tutorial - Part 5</p>  


<iframe width="900" height="500" src="https://www.youtube.com/embed/Zv9i1S_dkTI?rel=0&amp;showinfo=0&amp;start=5" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


</div>
       <div class="Header">
        <p id="p">Asp.Net Lectures</p>
      </div>

       <div class="java">
        <ul>
        <li><a href="Quiz-Asp.jsp">Quiz-Asp.net</a></li><br>    
        <li><a href="What is ADO.NET - Part 1.jsp">What is ADO.NET - Part 1</a></li><br>
        <li><a href="SqlConnection in asp.net - Part 2.jsp">SqlConnection in asp.net - Part 2</a></li><br>
        <li><a href="ConnectionStrings in web.config configuration file - Part 3.jsp">ConnectionStrings in web.config configuration file - Part 3</a></li><br>
        <li><a href="SqlCommand in ado.net - Part 4.jsp">SqlCommand in ado.net - Part 4</a></li><br>
        <li><a href="Sql injection tutorial - Part 5.jsp">Sql injection tutorial - Part 5</a></li><br>
        <li><a href="Sql injection prevention Part 6.jsp">Sql injection prevention Part 6</a></li><br>
        <li><a href="Calling a stored procedure with output parameters Part 7.jsp">Calling a stored procedure with output parameters Part 7</a></li><br>
        <li><a href="SqlDataReader in ADO.NET Part 8.jsp">SqlDataReader in ADO.NET Part 8</a></li><br>
        <li><a href="SqlDataReader object's NextResult method Part 9.jsp">SqlDataReader object's NextResult method Part 9</a></li><br>
        <li><a href="SqlDataAdapter in ADO.NET Part 10.jsp">SqlDataAdapter in ADO.NET Part 10</a></li><br>
        <li><a href="DataSet in asp.net Part 11.jsp">DataSet in asp.net Part 11</a></li><br>
        <li><a href="Caching dataset in asp.net - Part 12.jsp">Caching dataset in asp.net - Part 12</a></li><br>
        <li><a href="Part 13 Sqlcommandbuilder update not working.jsp">Part 13 Sqlcommandbuilder update not working</a></li><br>
        
        
        
      
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
