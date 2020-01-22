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
<link rel="stylesheet" href="css/del.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!DOCTYPE html>
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
        <table class="table">
            <th>Name</th>
            <th>Email</th>
            <th>College</th>
            <th>Course</th>
            <th>Block  Student</th>
            
            <%
            
            
       String sql = "select * from Login";
   
      
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass);
            Statement st = con.createStatement();
         
            ResultSet rs = st.executeQuery(sql);
            while(rs.next())
            {
                
        %>        
         
            <tr><td id="name"><%=rs.getString(1)%> 
                    <%=rs.getString(2)%> </td>
            
                <td><%=rs.getString(3) %></td>
                 <td><%=rs.getString(5) %></td>
                 <td><%=rs.getString(6) %></td>
                 <td><form  method="post" action="Block.jsp">
              <input type="hidden" name="email" value="<%= rs.getString(3) %>">
              <button id="block" type="submit" >Block</button>
           </form>  </td>
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
