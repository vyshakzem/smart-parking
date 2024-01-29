<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">body 
{
background-image : url("images/login.jpg");
  font-family:Georgia; 
  background-size:cover;
}


h2{
    margin-left:-850px;
    color : white;
    position : relative;
    top:20px;
}


form{
    width:20rem;
    margin-left:center;
    position : relative;
    top:60px;
    color:whitesmoke;
    backdrop-filter: blur(16px) saturate(180%);
    -webkit-backdrop-filter: blur(16px) saturate(180%);
    background-color: rgba(11, 15, 13, 0.582);
    border-radius: 18px;
    border: 1px solid rgba(255, 255, 255, 0.125);
    padding: 20px 25px;
}

input[type=text], input[type=password]{
    width: 100%;
    margin: 10px 0;
    border-radius: 5px;
    padding: 15px 18px;
    box-sizing: border-box;
  }

button {
    background-color: #030804;
    color: red;
    padding: 14px 20px;
    border-radius: 5px;
    margin: 7px 0;
    width: 100%;
    font-size: 18px;
  }

button:hover {
    opacity:0.8;
    cursor: pointer;
}

.headingsContainer{
    text-align: center;
}

.headingsContainer p{
    color: red;
}
.mainContainer{
    padding: 14px;
}


.subcontainer{
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
}

.subcontainer a{
    font-size: 16px;
    margin-bottom: 12px;
}

span.forgotpsd a {
    float: right;
    color: whitesmoke;
    padding-top: 16px;
  }

.forgotpsd a{
    color: rgb(74, 146, 235);
  }
  
.forgotpsd a:link{
    text-decoration: none;
  }

  .register{
    color: white;
    text-align: center;
  }
  
  .register a{
    color: rgb(74, 146, 235);
  }
  
  .register a:link{
    text-decoration: none;
  }
  .btn:hover{
  padding :5px;
  width : 80px;
  font-weight:bold;
  color :white;
  background-color:green;
  opasity:0.8;
  
  }
  .link{
  font-weight:bold;
  color: White;
  }
  

  /* Media queries for the responsiveness of the page */
  @media screen and (max-width: 600px) {
    form{
      width: 25rem;
    }
  }
  
  @media screen and (max-width: 400px) {
    form{
      width: 20rem;
    }
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
<title>SMART PARKING SYSTEM</title>
</head>
<body>

<div align=center>

 <ul>
  <li><a href="Welcome.jsp" class="link">Check Availablity</a></li>
  <li><a href="AboutUs.jsp" class="link">About</a></li>
  <li><a href="Contact.jsp" class="link">Contact</a></li>
  <li><a href="Index.jsp" class="link">Home</a></li>
  <h4>SMART PARKING SYSTEM</h4>
</ul>
<form action=" LoginServlet " method="post" >
<h5>LOGIN</h5>
Enter Userid:<input type="text" name="username"><br><br>
Enter Password:<input type="password" name="password"><br>
<br><input type="submit" value = "Submit" class ="btn">
<a href="Registration.jsp" class = "link">SignUp</a>
</form>
</div>
</body>
</html>