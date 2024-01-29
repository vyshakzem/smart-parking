<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>

<head>
<meta charset="UTF-8">
<style>
body{
 font-family:  Georgia;
    background-image: url("images/ss.png");
background-repeat:norepeat;
background-size:cover;
background-attachment: fixed;
}  
ul {
  list-style-type: none;
 allign:center;
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
h1{
color:red;
text-align:center;
margin-top:-10px;
}
.filters{
text-allign:center;
margin-top:250px;
data-inline:true;


}
.filters button {
  text-align: center;  
width: 200px;  
height:50px;  

}  


.filters button  {
  background-color:lightblue;
 background-border: red;
  color: red;
margin-left:100px;

  font-size: 16px;
data-inline:true;
}



.filters  button.active {
  background-color: #333;
  color: #fff;
}

    
      button
      {
           border-color: #3cb371;
        background-color: #c8e6c9;
        color: #3cb371;
      }
      
button:hover {
  background-color:white;
  }
</style>
<title>SMART PARKING SYSTEM</title>
</head>
<body>
<ul>

  <li><a href="Login.jsp" class="link">Login</a></li>
  <li><a href="AboutUs.jsp" class="link">About</a></li>
  <li><a href="Contact.jsp" class="link">Contact</a></li>
  <li><a href="Index.jsp" class="link">Home</a></li>
 
  <h4> SMART PARKING SYSTEM</h4>
</ul>
<h1>LOCATION</h1>
<div class="filters">
  <button onclick="location.href='ParkingSlot2Servlet';" class="link" data-filter="walks">GANDHIPURAM</button> 
   <button  onclick="location.href='ParkingSlot3Servlet';"class="filter-option" data-filter="flies">KARPAGAM</button>
  <button  onclick="location.href='ParkingSlot1Servlet';"class="filter-option" data-filter="swims">OTHAKALMANDABAM</button> 
  <button onclick="location.href='ParkingSlot4Servlet';"class="filter-option" data-filter="*">MALUMICHANPATI</button>
</div>


</body>
</html>