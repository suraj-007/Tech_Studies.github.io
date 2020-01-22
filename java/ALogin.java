import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author suraj
 */
@WebServlet(urlPatterns = {"/ALogin"})
public class ALogin extends HttpServlet {
    
    public boolean check(String uname,String pass)
    {
       
       String url = Config.dbUrl;
       String dname = Config.database;
       String password = Config.password;    
        
        
       String sql = "select * from Admin where email=? and pass=?";
    // String url = "jdbc:mysql://localhost:3306/student";
    //   String username = "root";
    //   String password = "1234";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,password);
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,uname);
            pst.setString(2,pass);
            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
                return true;
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
            response.sendRedirect("Awelcome.jsp");
        }
        else
        {
            response.sendRedirect("wrongAlogin.jsp");
        }   
    }

  
 
}
