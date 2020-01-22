
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author suraj
 */
@WebServlet(urlPatterns = {"/setcomment"})
public class setcomment extends HttpServlet {
    
    /**
     *
     * @param request
     * @param response
     */
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
    {
       String url = Config.dbUrl;
       String dname = Config.database;
       String pass = Config.password;    
        
      //String url = "jdbc:mysql://localhost:3306/student";
      //String dname = "root";
      //String pass = "1234";
      String query = "insert into comments(uname,message) values(?,?)";
       
      String name=request.getParameter("name");
      String message=request.getParameter("message");
 
        try {   
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(setcomment.class.getName()).log(Level.SEVERE, null, ex);
        }
           try(Connection con = DriverManager.getConnection(url,dname,pass))
           {    
          PreparedStatement pst = con.prepareStatement(query);
          pst.setString(1,name);
          pst.setString(2,message);
          pst.executeUpdate();
          
         request.setAttribute("name",name);
         request.getRequestDispatcher("forum.jsp").forward(request, response);
        
         // response.sendRedirect("forum1.jsp");
           
        }catch(Exception e)
          { System.out.println(e); }
    }
}

       