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
 <link rel="stylesheet"  href="css/contact.css"/>
 <link rel="stylesheet" href="css/profile.css"/>

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
        <li><a href="index.html">Log Out</a></li>
      </ul>
    </nav>
    
  </div>
</div>
    
    <div class="profile">
        
        <div class="details-of-profile">
           <jsp:include page="profile" />
                <h3 style="text-align: center;margin-top: 20px;font-size: 25px;font-style: normal;">General Information</h3>
               <table class="table">
                   <%
                       String fname = (String)session.getAttribute("fname");
                       String lname = (String)session.getAttribute("lname");
                       String email = (String)session.getAttribute("email");
                       String password = (String)session.getAttribute("password");
                   
                   %>
                <tr><th >First Name </th>
                   <td> <%=fname%></td></tr>
                   
                <tr><th>Last name </th>
                   <td> <%=lname%> </td></tr>
                   
                <tr><th>Email  </th>
                   <td> <%=email%></td></tr> 
                   
                <tr><th>Password </th>
                    <td><%=password%></td></tr>
                </table>
            
                
            
             <button style="margin-left: 40%;margin-top: 70px;background-color: orangered;height: 40px;width: 150px;border-radius:10px;font-size: 16px;"> <a style="color: white;"href="changePassword.jsp">Change Password</a></button>
             <form action="delete" method="post">
             <button style="margin-left: 40%;margin-top: 70px;background-color: orangered;height: 40px;width: 150px;border-radius:10px;font-size: 16px;"> Delete Account</button>
             </form>
        </div>
    </div>
    
                
    
      <div class="footer">
  <div class="container1">
    <div class="row">
      <div class="footer-col-1">
        <button class="footer-button" onclick="alert('Your email has been recorded . We will get to you soon ')" type="submit">Subscribe</button>
          <input class="footer-email" type="email"  placeholder="Enter Your Email" required >
        <div class="footer-list">
        <ul class=>
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
  