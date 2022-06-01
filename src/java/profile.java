/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author suman jha
 */
public class profile extends HttpServlet {

   
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
    {
         PrintWriter out = res.getWriter();
         
        try
        {
            String fname = null;
            String lname = null;
            String email = null;
            String password = null;
            
            res.setContentType("text/html");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/webapplication", "suman", ""); 
            
            HttpSession session = req.getSession();
            String EMAIL = (String) session.getAttribute("email");
            
            
            PreparedStatement stmt = con.prepareStatement("select * from user where email = ?; ");
            stmt.setString(1,EMAIL);
            
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next())
            {
                 fname = rs.getString(1);
                 lname = rs.getString(2);
                 email = rs.getString(3);
                 password = rs.getString(4);
            }
            session.setAttribute("fname", fname);
            
            
            
            session.setAttribute("lname", lname);
            session.setAttribute("email", email);
            session.setAttribute("password", password);
        }
        catch(Exception e)
                {
                   out.println(" "+e); 
                }
       
    }
  

}
