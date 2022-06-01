/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import jakarta.servlet.RequestDispatcher;
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
public class login extends HttpServlet {

    public static boolean databaseconnectivity(String email, String password)
    {
        boolean status = false;
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/webapplication", "suman", "");
            PreparedStatement ps = con.prepareStatement("select * from user where email= ? and password = ? ");
            ps.setString(1,email);
            ps.setString(2,password);
            
            ResultSet rs = ps.executeQuery();
            status = rs.next();
        }
        catch(Exception e)
        {
            e.printStackTrace();
                    
        }
          
          return status;
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        
        // for database connectivity 
       boolean b = databaseconnectivity(email, password);
      if(b == true)
          {
              HttpSession session = req.getSession();
              session.setAttribute("error", "0");
              session.setAttribute("email", email);
          RequestDispatcher rd = req.getRequestDispatcher("profileView.jsp");  
          rd.forward(req,res);
      }
      else
      {
          HttpSession session = req.getSession();
          session.setAttribute("error", "1");
          RequestDispatcher rd=req.getRequestDispatcher("account.jsp"); 
          rd.include(req,res);
      }
      out.close();

}
}
