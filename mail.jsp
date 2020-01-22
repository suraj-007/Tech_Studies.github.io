
<%@ page import="java.sql.*" %>
<%@include file="connection/dbconn.jsp" %>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>




<%
    
    
    if(request.getParameter("submit")==null){
        
    } 
    else
    {
       String query = request.getParameter("query");
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String submit = request.getParameter("submit");
       String reset = request.getParameter("reset");
       
       boolean errorEmpty=false;
       boolean errorEmail=false;
       if( name==null || email==null || query==null )
       {
        
     %>
     
     <span class="form-error">Fill in all fields!</span>
     <%
     
       errorEmpty=true;    
           
       }
else {
    %>
    <span class="form-success">Your Query Registered!</span>
<%
    
} 
     

    }




%>

<script>
    $("mail-name,#mail-email,#mail-query").removeClass("input-error");
    var errorEmpty m