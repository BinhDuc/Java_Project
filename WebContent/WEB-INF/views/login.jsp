<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng nhập</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<script src="js/icon.js"></script>
	<style>
		body, html {
		  	height: 100%;
		  	font-family: Arial, Helvetica, sans-serif;
		  	color: white;
		}

		* {
		  	box-sizing: border-box;
		}

		.bg-img {
		  /* The image used */
		  	background-image: url("img/Restaurant2sec1bg1.jpg");
		 	min-height:100%;

		  /* Center and scale the image nicely */
		  	background-position: center;
		  	background-repeat: no-repeat;
		  	background-size: cover;
		  	position: relative;
		}

		/* Add styles to the form container */
		.container {
		  	position: absolute;
		  	right:0;
		  	margin: 120px;
		  	margin-right: 20px;
		  	max-width: 300px;
		  	padding: 16px;
		  	background-color: rgba(0,0,0,0.5);
		  	border-radius:15px;
		}

		/* Full-width input fields 
		input[type=text], input[type=password] {
		  	width: 100%;
		  	padding: 15px;
		  	margin: 5px 0 22px 0;
		  	border: none;
		  	background: rgba(0,0,0,0);
		  	border-bottom:2px solid #00EE00;
		  	color: white;
		}

		input[type=text]:focus, input[type=password]:focus {
		  	background-color: rgba(0,0,0,0.1);
		  	outline: none;
		}*/
		.input-container {
		  display: -ms-flexbox; /* IE10 */
		  display: flex;
		  width: 100%;
		  margin-bottom: 30px;
		  border-bottom:1px solid white;
		  
		}
		
		.icon {
		  
		  background: rgba(0,0,0,0);
		  color: white;
		  min-width: 50px;
		}
		
		.input-field {
		  width: 100%;
		  padding: 10px;
		  outline: none;
		  border:none;	  
		  background: rgba(0,0,0,0);
		}
		
		
		/* Set a style for the submit button */
		.btn {
		  background-color: rgba(0,0,0,0.1);
		  color: white;
		  padding: 15px 20px;
		  border: 1px solid rgba(0,0,0,0.1);
		  cursor: pointer;
		  width: 100%;
		  opacity: 0.9;
		  border-radius:15px;
		  margin-bottom:20px;
		  box-shadow: 0 10px 20px grey;
		  transition: 0.5s;		
		  }
		
		.btn:hover {
		  opacity: 1;
		  color:#ffb702;
		  box-shadow: none;
		  border:1px solid white;
		}

		::-webkit-input-placeholder { /* Edge */
		  	color: white;
		}

		:-ms-input-placeholder { /* Internet Explorer */
		  	color: white;
		}

		::placeholder {
		  	color: white;
		}
		#btn{
			display: block;
		  	position: fixed;
		  	top: 10px;
		  	left: 20px;
		  	margin-bottom:50px;
		  	z-index: 99;
		  	font-size: 20px;
		  	border: none;
		  	outline: none;
		  	background-color: rgba(0,0,0,0);
		  	text-decoration: none;
		  	column-rule:-webkit-linear-gradient(left, #9933cc, #6633cc);
		  	column-rule:-o-linear-gradient(left, #9933cc, #6633cc);
		  	column-rule:linear-gradient(to right, #9933cc, #6633cc);
		  	cursor: pointer;
		  	color: black;
		  	-webkit-animation: btntop 1s ease-in-out infinite alternate;
		  	-moz-animation: btntop 1s ease-in-out infinite alternate;
		  	animation: btntop 1s ease-in-out infinite alternate;
		}@-webkit-keyframes btntop {
		  from {
		    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #ffb702, 0 0 40px #ffb702, 0 0 50px #ffb702, 0 0 60px #ffb702, 0 0 70px #ffb702;
		  }
		  
		  to {
		    text-shadow: 0 0 20px #fff, 0 0 30px #fff, 0 0 40px #fff, 0 0 50px #fff, 0 0 60px v, 0 0 70px #fff, 0 0 80px #fff;
		  }
		}
	</style>
</head>
<body>
	 
	<div class="bg-img">
		<a href="${pageContext.request.contextPath}" title="" id="btn"><img src="icon/left-arrow-in-circular-button-black-symbol.svg" style="width: 36px;height: 36px"> Quay Lại</a>
		
	  	<form method="POST" action="${pageContext.request.contextPath}/login" class="container">
	    	<h1 style="margin-bottom:30px;">Đăng Nhập</h1>
			<p style="color:#FF3333"><strong>${errorString}</strong></p>
		
	    	<div class="input-container">
			    <i data-feather="user" class="icon"></i>
			    <input class="input-field" type="text" name="userName" placeholder="Username" value= "${user.userName}" />
			</div>

	    	<div class="input-container">
			    <i  data-feather="lock" class="icon"></i>
			    <input class="input-field" type="password" placeholder="Password" name="password" value= "${user.password}" />
			</div>
	    	
	    	<label>
	    		<input type="checkbox" name="rememberMe" value= "Y" /> Nhớ tài khoản
	    	</label>
			
			<input type="submit" class="btn" value="Đăng nhập" />
				
	    	
	  	</form>
	  
	    	
	</div>
	<script>
		feather.replace()
	</script>
</body>
</html>