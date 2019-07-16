<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>LOGIN PAGE</title>
</head>

<style>
@CHARSET "UTF-8";
*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
.button{
background-color:green;
border:none;
color:white;
padding:15px 32px;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:16px;
margin:4px 2px;
cursor:pointer;
}
form {
  max-width: 550px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  /*background: orange; */
  border-radius: 50px;
}
label
{
color:purple;
}
input[type="password"],
input[type="text"]
{
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 10px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: auto;
}

input[type="submit"],input[type="button"],a,h3
{
  font-size: 25px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: auto;
}
div{
padding:2px auto;
}

.button:hover {
    opacity: 0.8;
    color:magenta;
}
.imgcontainer{
    text-align: top;
    margin: 24px 0 12px 0;
}
img.avatar{
	width: 8%;
  border-radius: 50%;
}

</style>

<body bgcolor="orange" background="books2.jpg">
<center><h1><font color="Yellow" size="100px">LOGIN PAGE</font></h1>
<p><h2><font color="tomato"><marquee behavior="scroll" scrollamount="10" direction="left" width="500" height="50" 
script='border:solid'>WELCOME, Please LOGIN</marquee> </h2></font></p>

<div class="imgcontainer">
<a href="login.jsp"><img src="books.jpg" alt="LOGO" class="avatar" ></a>
</div>
		<form action="RegisterLogin" method="post">
			<table>
				<tr>
					<td><h3 style="color: red;">${message}</h3>
						<h3 style="color: green;">${successMessage}</h3></td>
					<td></td>
				</tr>
				
				<tr>
					<td><label><h4>Enter EMAIL ID:</h4></label></td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td><label><h4>Enter PASSWORD :</h4></label></td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
				<td colspan="2" align="center">
                   <input type="submit" name="submit" class="button" value="LOG IN">
  				</td>
				</tr>
				<tr>
					<td colspan="2" align="center"> <h3>(OR)</h3></td>
				</tr>
				<tr>
	<td> <h3><font color="red">NEW USER <marquee behavior="alternate" scrollamount="2" direction="left" width="50" height="20" 
script='border:solid'>==></marquee> </font></h3></td>
	<td> <input type="button" name="submit" class="button" value="SIGN UP" onclick="location.href='register.jsp';"></td>
	</tr>
				<!-- <tr>
					<td><center>
							<input type="submit" name="submit" value="LOG IN">
						</center></td>
					<td><a href="register.jsp">Registration</a></td>
				</tr> -->
				
			</table>
		</form>
	</center>
</body>
</html>

