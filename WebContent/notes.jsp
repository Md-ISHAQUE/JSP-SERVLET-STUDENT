<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NOTES PAGE</title>
</head>
<body>
<style>

	/* body
	{
		display: flex;
		justify-content: center;
		align-items: left;
	 } */ 
	/* .nav
	{
		background-color:yellow;
		list-style-type:none;
		text-align:center;
		margin:0;
		padding:0;
	}
	.nav li
	{
		display: inline-block;
		font-size: 20px;
		padding:20px;
	} */
	h1
	{
		display:flex;
		justify-content:center;
		text-align:center;
	} 
	#one
	{
	 	max-width: 1050px; 
  		margin: 60px auto 60px auto;
  		background-color: #abc;
	}
	
	#two
	{
	  display: table;
	  width: auto;
	  height:auto;
	  table-layout: fixed;
	}
	 
	.one
	{
	  display: table-cell;
	  vertical-align: top;
	  width: 50%;
	}
	img 
	{
	  max-width: 100%;
	  height: 600px;
	} 
	
</style>
<% 
if(session.getAttribute("EMAIL")==null)
{
	response.sendRedirect("login.jsp");	
}

%>




<!-- <div id="one" align="center"><h1>NOTES Section</h1>
	<ul class="nav">
	<li><a href="thinkpython2.pdf">
		<img id="python" src="LOGO.JPG" style="margin-bottom:570px; margin-top:20px;"></a>
	</li>
	<li><a href="CN.pdf">
		<img id="CN" src="vtu-5th-sem-cse-computer-networks-cbsc-notes-1-638.jpg" style="margin-bottom:570px; margin-top:20px; height:300px;"></a>
	</ul>
	</div> -->
	
	<h1>NOTES Section</h1>
	<div id="one">
		<div id="two">
			<div class="one">
				<a href="thinkpython2.pdf">
				<img id="python" src="LOGO.JPG"/>
				</a>
			</div>
			<div class="one">
				<a href="CN.pdf">
				<img id="CN" src="vtu-5th-sem-cse-computer-networks-cbsc-notes-1-638.jpg"/>
				</a>
			</div>
		</div>	
	</div>	
</body>
</html>