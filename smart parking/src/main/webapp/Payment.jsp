<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
  <head>
    <meta charset="UTF-8">
    <title>Smartparking system</title>
    <style>
      ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:black;
}

li {
  float: right;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color:red;
}
h4{
text-align:center;
color:White;}
      /* Style for the QR code container */
      #qr-code {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 300px;
        height: 300px;
        margin: 50px auto;
        border: 2px solid #007bff;
        border-radius: 10px;
      }

      /* Style for the QR code image */
      #qr-code img {
        width: 80%;
        height: 80%;
      }

      /* Style for the text below the QR code */
      #qr-text {
        text-align: center;
        font-size: 24px;
        color: #007bff;
      }
    </style>
  </head>
  <body>
    <ul>
 <li><a href="Login.jsp" class="link">Login</a></li>
  <li><a href="AboutUs.jsp" class="link">About</a></li>
  <li><a href="Contact.jsp" class="link">Contact</a></li>
  <li><a href="Welcome.jsp" class="link">Check Availableslots</a></li>
  <li><a href="Index.jsp" class="link">Home</a></li>
  
  
  <h4> SMART PARKING SYSTEM</h4>
</ul>
    <div id="qr-code">
      <img src="images/qrcode.jpeg" alt="QR Code">
    </div>
    <div id="qr-text">
   !BOOKING SUCCESSFUL!
      Scan this QR code at the time of parking: "!Donot share this scanner"
    </div>
  </body>
</html>