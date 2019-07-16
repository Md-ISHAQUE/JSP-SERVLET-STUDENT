<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>REGISTRATION Page</title>

<script type="text/javascript">
		function formValidation()
		{
		if(document.myform.id.value=="")
			{
			alert("Please enter ID!");
			document.myform.id.focus();
			return false;
			}
		if(document.myform.name.value=="")
		{
		alert("Name can't be empty !!!");
		document.myform.name.focus();
		return false;
		}
		if(document.myform.email.value=="")
			{
			alert("Please Provide Your EMAIL!");
			document.myform.email.focus();
			return false;
			}
		if(document.myform.phone.value==""|| isNaN(document.myform.phone.value))
			{
				alert("Please Provide Your PHONE No!");
				document.myform.email.focus();
				return false;
			}
		return true;
		}
	</script>
	<style>
@CHARSET "UTF-8";
*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
body{
background-width:75%;
background-height:75%;
background-image: url("books3.jpg");
}
form {
  max-width: 550px;
  margin: 10px auto;
  padding: 10px 20px;
  /* background: #f4f7f8; */
  background: black;
  border-radius: 20px;
}
table{
	border-spacing:5px;
}
label
{
color:red;
}
input[type="password"],
input[type="text"],
input[type="tel"]
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
  /* color: #8a97a0; */
  color: magenta;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: auto;
}
.bt{
background-color:orange;
border:circle;
color:green;
padding:15px 32px;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:25px;
margin:4px 2px;
cursor:pointer;
}
</style>
	
<!-- <script type="text/javascript" src="register.js"></script> -->
</head>

<body>
<center><h1><font color="Green" size="100px">REGISTRATION PAGE</font></h1></center>
	<center><form action="RegisterLogin" method="post" name="myform" onsubmit="return formValidation()">
		<table>		<!-- style="background-color: skyblue; margin-left: 20px; margin-top: 20px" -->
			<tr>
				<!-- <td><h3 style="color: black">REGISTRATION PAGE</h3></td> -->
				<td></td>
			</tr>
			<tr>
				<td><label><h2>ID </h2></label></td>
				<td><input type="text" name="id" ></td>
			</tr>
			<tr>
				<td><label><h2>Name </h2></label></td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><label><h2>EMAIL </h2></label></td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td><label><h2>Password </h2></label></td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td><label><h2>Confirm Password </h2></label></td>
				<td><input type="password" name="password2"></td>
			</tr>
			<tr>
				<td><label><h2>PHONE No </h2></label></td>
				<td><input type="text" name="phone" ></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
                   <input type="submit" name="submit" class="bt" value="REGISTER NOW" >
  				</td>
				</tr>
		</table>
	</form>
	</center>
	</center>
	
</body>
</html>