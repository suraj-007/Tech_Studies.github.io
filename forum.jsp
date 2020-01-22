<%-- 
    Document   : forum1
    Created on : Apr 6, 2018, 6:51:16 PM
    Author     : suraj
--%>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");  //HTTP 1.1
    //response.setHeader("Pragma","no-cache");    //HTTP 1.0
   // response.setHeader("Expires","0");          //Proxy
    if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    }
    

   
%>

<%@ page import="java.sql.*" %>
<%@include file="connection/dbconn.jsp" %>
<%@page import="java.util.logging.Logger"%> 
<link rel="stylesheet" href="css/comment.css">

    
<%
    String email=session.getAttribute("email").toString();
    
     String Chkname = "";
        String query1 = "select Fname,Lname from Login where email=?";
 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1 = DriverManager.getConnection(url,dname,pass);   
        PreparedStatement pst = con1.prepareStatement(query1);
         pst.setString(1,email);
    
      
            ResultSet rs1 = pst.executeQuery();
          
          rs1.next();
          
         String Fname=rs1.getString(1);
         String Lname=rs1.getString(2);
         Fname=Fname + " " + Lname ;
         
    
    %>







<html>
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forum</title>
        <link rel="shortcut icon" type="image/png" href="img/ts.png">
    </head>
    <body>
        
        <header>
        <div id="main">
        <a class="main" href="index.html" class="header-brand"><pre>TECH STUDIES <p id="bar">|</p> </pre></a>
        <nav>
          <ul>
            <li><a href="index.html">About Us</a></li>
            <li><a href="index.html">Contact</a></li>
                <li><a href="#">Admin</a>
                    <ul>
                        <li><a href="AdminReg.jsp">Sign Up</a></li>
                        <li><a href="ALogin.jsp">Login</a></li>
                    </ul>
                </li>
                <li><a href="welcome.jsp">Lectures</a></li>
                <li><form method="post" action="forum">
                        <input type="hidden" name="name" value="${Fname} ${Lname}"> 
                        <button id="Forum" type="submit">Forum</button></form>
                </li>
            </ul>
            <form method="post" action="Logout">            
            <button class="button" href="Logout">Logout</button>
            </form>
        </nav>
        </div>
   </header> 
        
        
        
        
        <div class="wrapper"> 
           
       <% 
  
        String query = "select * from comments";
 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,dname,pass);   
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
          
          while(rs.next())
          {
              
      %>
 
 
     
      <div class="comment-box"> 
      <image id="Cimg" src="img/comment1.jpg">
      
              <% if(Fname.equalsIgnoreCase(rs.getString(2)))
              {
                  
              %>
      
             <form  method="post" action="CommentDelete.jsp">
              <input type="hidden" name="cid" value="<%= rs.getString(1) %>">
         
                  <button id="delete" type="submit" >Delete</button>
              <%
                  }
             %>
           </form> 
           <% if(Fname.equalsIgnoreCase(rs.getString(2)))
            {
                  
              %>
                <form  method="post" action="CommentEdit.jsp">
               <input type="hidden" name="cid" value="<%= rs.getString(1) %>">
               
               <button id="edit" type="submit" >Edit</button>
                 <%
                  }
             %>
           </form>
       
               
          <p id="Comment-name"> <%=  rs.getString(2)%></p>
       
           <p id="Comment-msg"><%=  rs.getString(3)%></p>
             
      </div>        
      <%
          }    
       %>    
          
       <%
         String name = request.getParameter("name");
           
       %>    
       
    <div class="comment">
        <form method="post" action="setcomment">
            <input type="hidden" name="name" value="<%= name %>">
            <textarea  name="message"></textarea><br>
            <button name="CommentSubmit" type="submit">Comment </button>
        </form>
        </div>    
     </div>      
            
      <div id="space">   </div>      
            
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
