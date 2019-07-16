<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WELCOME page</title>
<link rel="stylesheet" href="welcome.css"/>
</head>
<body style="background-color: orange;">

<% 
if(session.getAttribute("EMAIL")==null)
{
	response.sendRedirect("login.jsp");	
}

%>
	<div id="one"><h1>
		<font color='green'>WELCOME ${EMAIL} to JAVA World !!!</font>
	</h1>
	</div>
	<div class="container">
		<center>
			<h2>Something To Explore</h2>
			<a href="notes.jsp"><h3>Click Here for NOTES</h3></a>
			<h3>Watch This</h3>
			<br>
			<video width="640" height="400" controls>
			<source src="DEEPFAKE.mp4" type="video/mp4"></video>
		</center>
	</div>
</body>
</html>