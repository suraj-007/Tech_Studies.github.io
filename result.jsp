<%-- 
    Document   : Show
    Created on : Mar 28, 2018, 12:18:04 AM
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




<%@page import="java.sql.*"%>
<%@include file="connection/dbconn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/result.css">
<!DOCTYPE html>
<%
    
       String email=session.getAttribute("email").toString();
       String uname= session.getAttribute("email").toString();

       String sql = "select * from Login where email=?";
     
     
     
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass);
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,uname);
            ResultSet rs = pst.executeQuery();
            rs.next();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <li><form method="post" action = "forum">
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
            
            <div class="intro">
                <p>Name : <%= rs.getString(1) %> <%= rs.getString(2) %></p>
                <p>Email : <%= rs.getString(3) %></p>
                <p>College : <%= rs.getString(5) %></p>
                <P>Qualification : <%= rs.getString(6) %></p>
                
            </div>
            
        <table class="table">
            <th>Subject</th>
            <th>Marks</th>
          
            
            <%
            
            
       String sql1 = "select * from result where email=?";
   
      
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1 = DriverManager.getConnection(url,dname,pass);
              PreparedStatement pst1 = con.prepareStatement(sql1);
              pst1.setString(1,email);
         
            
            ResultSet rs1 = pst1.executeQuery();
            while(rs1.next())
            {
                
        %>        
         
            <tr><td id="name"><%=rs1.getString(1)%> </td>
            
                <td><%=rs1.getString(2) %></td>
         
            </tr>
   
                
            
        <%        
            }
            
  
            
            
            %>
          </table>  
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
