<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title> Smart Parking System</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f2f2f2;
         background-image: url("images/aboutus3.jpg");
    background-repeat:norepeat;
   background-size:cover;
background-attachment: fixed;
      }
      }
      h1 {
        font-size: 36px;
        margin-bottom: 20px;
        color: #333;
      }
      form {
        width: 60%;
    margin-left:280px;
    position : relative;
    top:60px;
    color:whitesmoke
        text-align: left;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 10px #ccc;
      }
      input[type="text"],
      input[type="email"],
      textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        font-size: 18px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }
      input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #333;
        color: #fff;
        font-size: 18px;
        border: 0;
        border-radius: 5px;
        cursor: pointer;
      }
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
color:White;
}
    </style>
  </head>
  <body>
   <ul>
 <li><a href="Login.jsp" class="link">Login</a></li>
  <li><a href="AboutUs.jsp" class="link">About</a></li>
  <li><a href="Contact.jsp" class="link">Contact</a></li>
  <li><a href="Index.jsp" class="link">Home</a></li>
  <h4> SMART PARKING SYSTEM</h4>
</ul>
    <form>
    <h3>Contact Us</h3>
         <input type="text" placeholder="Name">
      <input type="email" placeholder="Email">
      <textarea placeholder="Message"></textarea>
      <input type="submit" value="Submit">
    </form>
  </body>
</html>