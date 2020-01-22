
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/JDBC"})
public class JDBC extends HttpServlet {
    
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
       System.out.println(url+" "+dname+" "+pass);
        
      //String url = "jdbc:mysql://localhost:3306/student";
      //String uname = "root";
      //String pass = "1234";
      String query = "insert into Login values(?,?,?,?,?,?,?)";
       
      String Fname=request.getParameter("Fname");
      String Lname=request.getParameter("Lname");
      String email=request.getParameter("email");
      String password=request.getParameter("password");
      String college=request.getParameter("college");
      String course=request.getParameter("course");
 
        try {   
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(JDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
           try(Connection con = DriverManager.getConnection(url,dname,pass))
           {    
          PreparedStatement pst = con.prepareStatement(query);
          pst.setString(1,Fname);
          pst.setString(2,Lname);
          pst.setString(3,email);
          pst.setString(4,password);
          pst.setString(5,college);
          pst.setString(6,course);
          pst.setString(7,"0");
          pst.executeUpdate();
          
          
          HttpSession session=request.getSession();
          session.setAttribute("email",email);
          request.getRequestDispatcher("welcome.jsp").forward(request, response);
          
        }catch(Exception e)
          { System.out.println(e); }
    }
}

       