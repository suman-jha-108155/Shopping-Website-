<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="" href="https://fonts.gstatic.com" />
        <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet" />
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <link rel="stylesheet"  href="css/index.css"/>
        
    
    <style>
            .form-container{
                margin-top: 3%;
            }
            
     </style>
    </head>
    <body>
        <div class="container">
  <div class="navbar">
    <div class="logo">
      <a href="index.html"><h1><span style="color: black;font-size:45px"><b>G</b></span>ranger<span style="color: black;font-size:45px;margin-left: 15px"><b>S</b></span>tore</h1></a>
    </div>
    <nav>
      <ul id="MenuItems">
        <li><a href="index.html">Home</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="contact.html">Contact</a></li>
      </ul>
    </nav>
    
  </div>
</div>
        <%
            
            String error;
            if(session.getAttribute("error") != null)
            {
              error = (String)session.getAttribute("error");   
              if(error.equals("1"))
              {
                  out.println("<h3 style='color:red;text-align:center;margin-top:2%'>Please type same password </h3>");
              }
              if(error.equals("2"))
              {
                  out.println("<h3 style='color:red;text-align:center;margin-top:2%' >Incorrect Old Password</h3>");
              }
            }
        %>
        
        <form action="changePass" method="post" class="form-container">
            <label> Old Password </label>
            <input type="text" name="password1" required>
            <label>New Password</label>
            <input type="text" name="password2" required>
            <label>Re-Type New Password</label>
            <input type="text" name="password3" required>
            <input type="submit" placeholder="Submit">
        </form>
        
        
        <div class="footer">
  <div class="container1">
    <div class="row">
      <div class="footer-col-1">
        <button class="footer-button" onclick="alert('Your email has been recorded . We will get to you soon ')" type="submit">Subscribe</button>
          <input class="footer-email" type="email"  placeholder="Enter Your Email" required >
        <div class="footer-list">
        <ul>
            <li>Terms of Use</li>        
            <li>Privacy Policy</li>        
            <li>Cookies Consent</li>        
        </ul>
        
        </div>
      </div>

      <div class="footer-col-2">
          <a href="index.html"><h1><span style="color: black;font-size:45px"><b>G</b></span>ranger<span style="color: black;font-size:45px;margin-left: 15px"><b>S</b></span>tore</h1></a>
        <p>
          Our Purpose Is To Sustainably Make the Pleasure and Benefits of
          Clothes Accessible to the Many.
        </p>
      </div>

      <div class="footer-col-3">
        <h3>Useful Links</h3>
        <ul>
          <li><a href="">Coupons</a></li>
            <li><a href="">Blog Post</a></li>
          <li><a href="">Return Policy</a></li>
          <li><a href="">Join Affiliate</a></li>
        </ul>
      </div>

      <div class="footer-col-4">
        <h3>Follow us</h3>
        <ul>
          <li><a href="https://www.facebook.com" target="_blank">Facebook</a></li>
          <li><a href="https://www.twitter.com" target="_blank">Twitter</a></li>
          <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>
          <li><a href="https://www.youtube.com" target="_blank">You Tubes</a></li>
        </ul>
      </div>
    </div>
    <hr />
    <p class="copyright">Copyright &copy; 2021 - Suman jha</p>
  </div>
</div>
    </body>
</html>
