

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author suraj
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {
     
    
    String Fname="";
    String Lname="";
    String college="";
    String course="";
    String marks="";
   
    public boolean check(String uname,String pass) throws IOException
    {

       String url = Config.dbUrl;
       String dname = Config.database;
       String password = Config.password;    
      
        
       String sql = "select * from Login where email=? and pass=?";
       //String url = "jdbc:mysql://localhost:3306/student";
       //String username = "root";
       //String password = "1234";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,password);
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,uname);
            pst.setString(2,pass);
            ResultSet rs = pst.executeQuery();
            if(rs.next())
            { 
                Fname=rs.getString(1);
                Lname=rs.getString(2);
                college=rs.getString(5);
                course=rs.getString(6);
                marks=rs.getString(7);
                return true;
            }
            else
            {
                
            }
        }catch(ClassNotFoundException | SQLException e){ System.out.println(e); }
        
        return false;
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String email = request.getParameter("email");
        String pass  = request.getParameter("password");
      
        if(check(email,pass))
        {
            HttpSession session = request.getSession();
            session.setAttribute("email",email);
            request.setAttribute("pass",pass);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
          
        }
        else
        {
            response.sendRedirect("wrong.jsp");
        }   
    }
 
}
