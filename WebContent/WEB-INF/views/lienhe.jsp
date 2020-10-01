<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Liên Hệ</title>
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
	<script src="js/icon.js"></script>
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






	<div style="background-color:black">
		<div class="row">
			<div class="col-sm-8">
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d8125.049886639841!2d105.79793784297927!3d20.978530617418976!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc508f938fd%3A0x883e474806a2d1f2!2zSOG7jWMgdmnhu4duIEvhu7kgdGh14bqtdCBN4bqtdCBtw6M!5e0!3m2!1svi!2s!4v1574587465180!5m2!1svi!2s" width="100%" height="544" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			</div>
			<div class="col-sm-4" style="background-color:black">
				<h2 style="font-family:'Great Vibes';color: #ffb702;margin-left: 30px;font-weight: normal;font-size: 45px">Visit Our<div style="color:#ffffff;font-weight: 300;font-size: 60px;font-family:Raleway ">
					Restaurant
				</div></h2>
				<hr width="100px" align="left" style="margin-left: 30px;margin-bottom: 50px">
				<p style="margin-left: 30px;color:#ffffff;font-style: italic;font-family: 'Lora'">
					<br>
					Địa Chỉ :<br>
					123 Hollywood Street,<br>
					HaDong,HaNoi,VietNam<br>
					+84 123456789
				</p>
				<p style="margin-left: 30px;color:#ffffff;font-style: italic;font-family: 'Lora'">
					<br>
					Giờ Mở Cửa :<br>
					Thứ 2 – <br>
					Thứ 4………………………………………. 9:00am – 10:00pm <br>
					<br>
					Thứ 5 – <br>
					Chủ Nhật………………………………………… 10:00am – 11:00pm
				</p>
			</div>
		</div>
	</div>


<!-----------------------footer----------------------------------------------------------------------------->




    <jsp:include page="_tienich.jsp"></jsp:include>
    <jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>