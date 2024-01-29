<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body{
    font-family:  Georgia;
    background-image: url("images/booking.jpg");
    height: 130vh;
    background-repeat:no-repeat;
    background-size: cover;
    background-position:center ;
    
}

h1{
    font-size: center;
    font-weight: bold;
    color:black;
    position:relative;
}
.es{

    color:black;
    font-family: georgia;
    
    margin-left:350px;
    
}
form label,button{
    display: block;
     backdrop-filter: blur(16px) saturate(180%);
     
    
}
.frm{
margin-left:-400px;
	height :700px
	position : relative;
   margin-top:50px;
	background-color:whitesmoke;
    box-shadow:black 3px 2px 8px 0px;
    padding: 5px;
    width: 600px;
    
}
.frm input[type="text"],.frm input[type="number"],.frm input[type="email"],.frm input[type="password"],.frm input[type="button"], .frm select{
      height: 30px;
    display: block;
    font-family:20px;
    margin-bottom:15px;
    width: 300px;
    
}
.btn:hover{
  padding :5px;
  width : 80px;
  font-weight:bold;
  color :white;
  background-color:green;
    opacity: 0.8;
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
<title>Insert title here</title>
</head>
<body>
<ul>
   <li><a href="Login.jsp" class="link">Login</a></li>
  <li><a href="AboutUs.jsp" class="link">About</a></li>
  <li><a href="Contact.jsp" class="link">Contact</a></li>
  <li><a href="Index.jsp" class="link">Home</a></li>
  <h4>SMART PARKING SYSTEM</h4>
  </ul>
<div class="es">
<div align=center>

<form action="Malumichanpati" method="post" >
<% String Slotno = request.getParameter("slot"); %>
<div class=frm>
<h2>Booking</h2>
<%String Location = "MALUMICHANPATI";%>
Location :<select name = "Location">
<option><%=Location %></option>
</select>

Name:<select name = "Username">
<%String User= (String)session.getAttribute("Username"); %>
<option><%=User %></option>
</select><br>
HOURS FOR PARKING<select name = "HOP">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
</select><br>
<label> VEHICLE TYPE</label>
<select name="Vehicletype">
<option value="Two Wheeler">Two Wheeler</option>
<option value="Four Wheeler">Four Wheeler</option>
</select><br>
<label> VEHICLE NUMBER</label>
<input type = "text" name = "VechicleNumber">
Enter phonenumber:<input type="number" name="number"><br>
SlotNo:<select name = "Slotno">
<option name = "slotnumber"><%=Slotno%></option>
<input type="submit" value = "Submit" class ="btn" onclick="location.href='slotbookjsp.jsp';">
</div>
</form>
</div>
</div>

</body>
</html>