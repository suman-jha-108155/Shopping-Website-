<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet" />
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
 <link rel="stylesheet"  href="css/index.css"/>
 <link rel="stylesheet" href="css/Signup.css"/>


    <title>Granger Store</title>
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
        <li><a href="account.jsp">Account</a></li>
      </ul>
    </nav>
  </div>
</div>
     <h1 class="headerloginform">Update Password</h1>
    <div class="accountpage">
        <%
         String s;
         if(session.getAttribute("error") != null)
         {
             s = (String)session.getAttribute("error");
             if(s.equals("1"))
             {
                 out.println("<h3 style='color:black;position:absolute;margin-left:30%;padding-top:2%;'>Same password is required </h3>");
             }
             if(s.equals("2"))
             {
                 out.println("<h3 style='color:black;position:absolute;margin-left:30%;padding-top:2%;'>Password should be minimum of 8 characters </h3>");
             }
         }
        
        %>
        <form action="update" method="post" class="logindiv">
        
             <input type="email" placeholder="Email Address " name="email" class="emailaddress" required>
             <input type="password" placeholder="Password " name="password" class="passwordforemail" required>
             <input type="password" placeholder="Retype - Password " name="password2" class="passwordforemail2" required>
             <button type="submit" class="buttonforlogin" >Update Password</button>
        
        </form>
    </div>
    <div class="footer">
  <div class="container1">
    <div class="row">
      <div class="footer-col-1">
        <button class="footer-button" onclick="alert('Your email has been recorded . We will get to you soon ')" type="submit">Subscribe</button>
          <input class="footer-email" type="email"  placeholder="Enter Your Email" required >
        <div class="footer-list">
        <ul >
            <li>Terms of Use</li>        
            <li>Privacy Policy</li>        
            <li>Cookies Consent</li>        
        </ul>
        <h1></h1>
        <h1></h1>
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