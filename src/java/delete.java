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

/**
 *
 * @author suman jha
 */
public class delete extends HttpServlet {
   

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       PrintWriter out = response.getWriter();
       
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/webapplication", "suman", "");
           PreparedStatement ps = con.prepareStatement("delete from user where email  = ? ");
 
           HttpSession session = request.getSession();
           String email = (String) session.getAttribute("email");
               
           ps.setString(1, email);
           
           int i = ps.executeUpdate();
           if(i>0)
           {
               RequestDispatcher rds = request.getRequestDispatcher("index.html");
               rds.forward(request, response);
           }
           con.close();
       }
       catch(Exception e)
       {
           out.println("Oops something weird happened : ");
       }
       
    }

  
}
