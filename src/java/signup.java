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
public class signup extends HttpServlet {
   

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       PrintWriter out = response.getWriter();
       String firstname = request.getParameter("firstname");
       String lastname = request.getParameter("lastname");
       String email = request.getParameter("email");
       String password = request.getParameter("password");
       String password2 = request.getParameter("password2");
       
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/webapplication", "suman", "");
           PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?)");
           ps.setString(1,firstname);
           ps.setString(2,lastname);
           ps.setString(3,email);
           
           if(password.length() >= 8 && password2.length() >=8)
           {
           if(!password.equals(password2))
           {
               HttpSession session = request.getSession();
               session.setAttribute("error", "1");
               RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
               rd.forward(request, response);
               
           }
           else
           {
               ps.setString(4, password);
           }
           }
           else
           {
               HttpSession session = request.getSession();
               session.setAttribute("error", "2");
               RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
               rd.forward(request, response);
           }
           int i = ps.executeUpdate();
           if(i>0)
           {
               RequestDispatcher rd = request.getRequestDispatcher("account.jsp");
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
