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
public class changePass extends HttpServlet {
   

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       PrintWriter out = response.getWriter();
       
       String password = request.getParameter("password1");
       String password2 = request.getParameter("password2");
       String password3 = request.getParameter("password3");
       
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/webapplication", "suman", "");
           PreparedStatement ps = con.prepareStatement("select * from user where email = ? and password = ? ");
          HttpSession session = request.getSession();
          String email = (String)session.getAttribute("email");
           ps.setString(1,email);
           ps.setString(2,password);
           
           ResultSet i = ps.executeQuery();
           
           
           if(i.next())
           {
              PreparedStatement ps1 = con.prepareStatement("update user set password = ? where email = ? "); 
             
                if(password2.equals(password3))
                {
                    ps1.setString(1,password2);
                    ps1.setString(2, email);
                    ps1.executeUpdate();
                    RequestDispatcher rd = request.getRequestDispatcher("account.jsp");
                    rd.include(request, response);
                } 
                else
                {
                    
                    session.setAttribute("error", "1");
                    RequestDispatcher rd = request.getRequestDispatcher("changePassword.jsp");
                    rd.forward(request, response);
           
                }
           
               }
           else
           {
               session.setAttribute("error", "2");
               RequestDispatcher rd = request.getRequestDispatcher("changePassword.jsp");
               rd.forward(request, response);
           }
          
           con.close();
       }
       catch(Exception e)
       {
           out.println("Oops something weird happened : ");
       }
       
    }

  
}
