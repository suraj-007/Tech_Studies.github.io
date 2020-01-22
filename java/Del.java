import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(urlPatterns = {"/Del"})
public class Del extends HttpServlet {
    
    
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

       String url = Config.dbUrl;
       String dname = Config.database;
       String pass = Config.password;    
        
       String sql = "Delete from Login where uname=?";
       //String url = "jdbc:mysql://localhost:3306/student";
       //String username = "root";
       //String password = "1234";
       String name = request.getParameter("name");
            
         try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass);
    
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,name);
            pst.executeUpdate();
            
            PrintWriter out = response.getWriter();
            out.println(name+" is blocked");
         }catch(Exception e){ System.out.println(e); }
    }

  
 
}
