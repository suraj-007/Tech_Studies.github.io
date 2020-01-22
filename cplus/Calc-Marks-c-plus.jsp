<%-- 
    Document   : Calc-Marks
    Created on : Apr 9, 2018, 12:33:13 AM
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
<%@include file="../connection/dbconn.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="Calc-Marks.css">
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
            <%
                String email = session.getAttribute("email").toString();
                boolean chk=false;
                String sql2 = "Select * from result where subject=? and email=?";
    
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con2 = DriverManager.getConnection(url,dname,pass); 
           
                  PreparedStatement pst2 = con2.prepareStatement(sql2);
                   pst2.setString(1,"c++");
                   pst2.setString(2,email);
                   ResultSet rs2 = pst2.executeQuery();
                   if(rs2.next())
                   {
                       chk=true;
                   }
                
                
                %>
            
            
            
            
            
        <%
            String c = request.getParameter("c");
            
            int k = Integer.parseInt(c);
            String[] q = new String[100];
            String[] Ans = new String[100];
            String[] DAns = new String[100];
            
            int i=1;
            int correct=0;
            int wrong=0;
           
                q[1] = request.getParameter("q1");
                q[2] = request.getParameter("q2");
                q[3] = request.getParameter("q3");
                q[4] = request.getParameter("q4");
                q[5] = request.getParameter("q5");
                q[6] = request.getParameter("q6");
                q[7] = request.getParameter("q7");
                q[8] = request.getParameter("q8");
                q[9] = request.getParameter("q9");
                q[10] = request.getParameter("q10");
                
                Ans[1] = request.getParameter("1");
                Ans[2] = request.getParameter("2");
                Ans[3] = request.getParameter("3");
                Ans[4] = request.getParameter("4");
                Ans[5] = request.getParameter("5");
                Ans[6] = request.getParameter("6");
                Ans[7] = request.getParameter("7");
                Ans[8] = request.getParameter("8");
                Ans[9] = request.getParameter("9");
                Ans[10] = request.getParameter("10");
                
             
       String sql = "Select correct from cplus where qid=?";
    
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass); 
           
                 
                 
                
              for(i=1;i<=10;i++)
              {
                  PreparedStatement pst = con.prepareStatement(sql);
                   pst.setString(1,q[i]);
                   ResultSet rs = pst.executeQuery();
                   rs.next();
                   DAns[i]=rs.getString(1);
             
            %>
            
            <div class="Result">

           <%     
                   
                   
                   if(DAns[i].equals(Ans[i]))
                   {
                       out.println(i+".  Correct");
                       correct++;
          %>
          <br>
          <%
                   }
                   else
                   {
                       out.println(i+".  Wrong");
                       wrong++;
                   }   
              }  

       %>
       <div class="Display-Result">
           <div id="Correct">
        <%   
          out.print("Correct : "+correct);
          
          if(!chk)
          {    
                   
          String corr = String.valueOf(correct*10);
          String sql1 = "Insert into result values(?,?,?)";
          PreparedStatement pst = con.prepareStatement(sql1);
          pst.setString(1,"c++");
          pst.setString(2,corr);
          pst.setString(3,email);
          pst.executeUpdate();
                  
          }
          else
          {
              response.sendRedirect("restricted.jsp");
          }
                 
        %>
         </div>
         
         <div  id="Wrong">
             
          <%     
                   out.print("Wrong : "+wrong );              
        %>           
        
        </div>      
      
       
       </div>            


            
            
            
            
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
