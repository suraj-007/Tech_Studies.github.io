
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AChk extends HttpServlet
{
    
    /**
     *
     * @param request
     * @param response
     * @throws java.io.IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        
       String url = Config.dbUrl;
       String dname = Config.database;
       String pass = Config.password;    
        
       String dbname = request.getParameter("dbname");
       String dbpass = request.getParameter("dbpass");
       String Fname=request.getParameter("Fname");
       String Lname=request.getParameter("Lname");
       if((dbname.equalsIgnoreCase("root")) && (dbpass.equalsIgnoreCase("1234")))
       {
        //   String url = "jdbc:mysql://localhost:3306/student";
        //   String uname = "root";
        //   String pass = "1234";
           String query = "insert into Admin values(?,?,?)";
       
           String name=Fname + " " + Lname;
           String email=request.getParameter("Aemail");
           String password=request.getParameter("Apassword");
           
           try {   
            Class.forName("com.mysql.jdbc.Driver");
          } catch (ClassNotFoundException ex) {
            Logger.getLogger(JDBC.class.getName()).log(Level.SEVERE, null, ex);
          }
           try(Connection con = DriverManager.getConnection(url,dname,pass))
           {    
          PreparedStatement pst = con.prepareStatement(query);
          pst.setString(1,name);
          pst.setString(2,email);
          pst.setString(3,password);
          pst.executeUpdate();
          
          response.sendRedirect("Awelcome.jsp");
           
         }catch(Exception e)
          { System.out.println(e); }
       }
       else
       {
           response.sendRedirect("wrongadm.jsp");
       }
        
    }

}
