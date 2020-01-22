

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@pageimport java.io.IOException%>
<%@pageimport javax.servlet.annotation.WebServlet%>
<%@pageimport javax.servlet.http.HttpServlet%>
<%@pageimport javax.servlet.http.HttpServletRequest%>
<%@pageimport javax.servlet.http.HttpServletResponse%>
<%@pageimport javax.servlet.http.HttpSession%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        HttpSession session=request.getSession();    
        session.removeAttribute("email");
        session.invalidate();
        response.sendRedirect("login.jsp");  
            
            
            
        %>    
    </body>
</html>
