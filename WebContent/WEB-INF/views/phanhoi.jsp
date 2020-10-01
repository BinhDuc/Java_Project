<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Giới Thiệu</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<script src='js/a076d05399.js'></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Arizonia' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Great Vibes' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Timmana' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Lora' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Kotta One' rel='stylesheet'>
	<script>
		$(document).ready(function(){
  			$("a,button").on('click', function(event) {
   				if (this.hash !== "") {
      				event.preventDefault();
      				var hash = this.hash;
      				$('html, body').animate({
        				scrollTop: $(hash).offset().top
      				}, 900, function(){
        			window.location.hash = hash;
      				});
    			}
  			});
		});
	</script>
	<style>
		* {box-sizing: border-box;}
		body{
			margin:0;
			background-image:url(img/Restaurant2sliderbg.jpg);
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-size: cover;
			font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
		}
		html {
		  	scroll-behavior: smooth;
		}
		hr {
  			color: #ffb702;
  			background: #ffb702;
  			border: 0;
  			height: 2px;
  			width:100px;
  		}
	</style>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
    
    
	<!-----------------------body------------------------------------------------------------------------------->

	
	
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '{2638724179551860}',
	      cookie     : true,
	      xfbml      : true,
	      version    : '{v5.0}'
	    });
	      
	    FB.AppEvents.logPageView();   
	      
	  };
	
	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "https://connect.facebook.net/en_US/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
	</script>

	<div class="container-fluid bg-grey text-center">
		<h2 style="font-family:'Great Vibes';color: #ffb702;font-weight: normal;font-size: 45px">Meet Our <div style="color:#222222;font-weight: 300;font-size: 55px;font-family:'Raleway' ">
					Awesome Members
				</div>
		</h2>
		<hr align="center">

	  	<div class="row" style="margin-top: 70px">
		  	<div class="column" style="border-bottom: 16px">
		    	<div class="card">
		      		<img src="img/2.jpg" style="width:100%">
		      		<div class="otex text-center">
		        		<h2>Vương Huy Giang</h2>
		        		<p class="titlet">CT2A</p>
		        		<div id="container-fluid" style="font-size: 15px;text-align:center;">
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-facebook-f"></i></a>
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-facebook-messenger"></i></a>
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-snapchat-ghost"></i></a>
						</div>
		      		</div>
		    	</div>
		  	</div>
		  	<div class="column" style="border-bottom: 16px">
		    	<div class="card">
		      		<img src="img/1.jpg" alt="Jane" style="width:100%">
		      		<div class="otex text-center">
		        		<h2>Tạ Thị Ánh</h2>
		        		<p class="titlet">CT2A</p>
		        		<div id="container-fluid" style="font-size: 15px;text-align:center;">
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-facebook-f"></i></a>
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-google-plus-g"></i></a>
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-skype"></i></a>
						</div>
		      		</div>
		    	</div>
		  	</div>
		  	<div class="column" style="border-bottom: 16px" >
		    	<div class="card">
		      		<img src="img/6.jpg" alt="Jane" style="width:100%;">
		      		<div class="otex text-center">
		        		<h2>NBDuc</h2>
		        		<p class="titlet">CT2A</p>
		        		<div id="container-fluid" style="font-size: 15px;text-align:center;">
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-facebook-f"></i></a>
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-skype"></i></a>
							<a href="#" style="margin-right:10px;color: gray"><i class="fab fa-git"></i></a>
						</div>
		      		</div>
		    	</div>
		  	</div>
		</div>
		<a href="https://www.facebook.com/dialog/oauth?client_id=359123991240252&redirect_uri=http://localhost:8080/team4web/phanhoi">Login Facebook</a>
	</div>




<!-----------------------footer----------------------------------------------------------------------------->



	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>