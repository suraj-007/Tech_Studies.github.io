/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author suraj
 */
public class CommentEdit extends HttpServlet {




    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String cid = request.getParameter("cid");
       String message = request.getParameter("editedcomment");

       String url = Config.dbUrl;
       String dname = Config.database;
       String pass = Config.password;    
       
       
       
       String sql = "update comments set message=? where cid=?";
       //String url = "jdbc:mysql://localhost:3306/student";
       //String username = "root";
       //String password = "1234";
        try{
            Class.forName("com.mysql.jdbc.Driver");
               try (Connection con = DriverManager.getConnection(url,dname,pass)) {
                   PreparedStatement pst = con.prepareStatement(sql);
                   pst.setString(1,message);
                   pst.setString(2,cid);
                   pst.executeUpdate();
                   response.sendRedirect("forum1.jsp");
               }
            
        }catch(ClassNotFoundException | SQLException e){ System.out.println(e); }
        
    }



}
