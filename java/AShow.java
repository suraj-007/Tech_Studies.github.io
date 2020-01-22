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
@WebServlet(urlPatterns = {"/AShow"})
public class AShow extends HttpServlet {
    
    
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

        
        String url = "jdbc:mysql://192.168.103.141:3306/student";
        String dname = "root";
        String pass = "IMHsfi13019";
        
        
       String sql = "select * from Admin";
       //String url = "jdbc:mysql://localhost:3306/student";
       //String username = "root";
       //String password = "1234";
       PrintWriter out = response.getWriter();
       out.println("Name      "+"Email");
      
         try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,dname,pass);
     
            Statement st = con.createStatement();
         
            ResultSet rs = st.executeQuery(sql);
            while(rs.next())
            {
                out.println(rs.getString(1)+"      " + rs.getString(2));
            }
            
         }catch(Exception e){ System.out.println(e); }
    }

  
 
}
