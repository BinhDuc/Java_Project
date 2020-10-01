<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Trang Chủ</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<script src='js/a076d05399.js'></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="css/icon.css">
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
    
    <!--nút quay lại đầu trang->
	<button onclick="topFunction()" id="btntop" title="Go to top"><i class="fas fa-caret-square-up"></i></button>
	<script>
		function topFunction() {
	  		document.body.scrollTop =0;
	  		document.documentElement.scrollTop =0;
		}
	</script-->
<!--thanh menu phụ-->
	<div id="thanhmenu" class="text-center">
		<div class="row">
	 		<div class="col-sm-3">
	 			<a href="${pageContext.request.contextPath}" style="font-family: Alex Brush" id="logo-s">Team4<br>Restaurant</a>
	 		</div>
	 		<div class="col-sm-6">
				<a href="${pageContext.request.contextPath}" class="active"><i data-feather="home" style="width: 19px;height: 19px;"></i> Trang Chủ</a>
				<a href="${pageContext.request.contextPath}/CreateBookTable">Đặt Bàn</a>
				<a href="${pageContext.request.contextPath}/thucdon">Thực Đơn</a>
				<a href="${pageContext.request.contextPath}/gioithieu">Giới Thiệu</a>
				<a href="${pageContext.request.contextPath}/lienhe">Liên Hệ</a>
	 		</div>
			<div class="col-sm-3">
				<div id="thanhmenu-right">
		  			<a href="${pageContext.request.contextPath}/login" id="login" style="padding-top:15px"><i data-feather="log-in" title="Login"></i></a>
		  		</div>
	 		</div>
	 	</div> 
		
		
	</div>
	<script>
		//khi kéo xuống 200px thì thanh menu phụ và nút quay lại đầu trang sẽ xuất hiện
		window.onscroll = function() {scrollFunction()};
		function scrollFunction() {
		  	if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
		  		document.getElementById("thanhmenu").style.top = "0";
		  		//document.getElementById("btntop").style.display ="block";
		  	} else {
		    	document.getElementById("thanhmenu").style.top = "-150px";
		    	//document.getElementById("btntop").style.display ="none";
		  	}
		  	if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80){
		  		document.getElementById("animatezoom2").style.animationPlayState = "running";
		  		
		  	}
		  	if (document.body.scrollTop > 1000 || document.documentElement.scrollTop > 1000){
		  		document.getElementById("animate-bottom3a1").style.animationPlayState = "running";
		  		document.getElementById("animate-bottom3b1").style.animationPlayState = "running";
		  		document.getElementById("animate-bottom3c1").style.animationPlayState = "running";
		  		document.getElementById("animate-bottom3d1").style.animationPlayState = "running";
		  	}
		  	if (document.body.scrollTop > 1340 || document.documentElement.scrollTop > 1340){
		  		document.getElementById("animate-bottom3a2").style.animationPlayState = "running";
		  		document.getElementById("animate-bottom3b2").style.animationPlayState = "running";
		  		document.getElementById("animate-bottom3c2").style.animationPlayState = "running";
		  		document.getElementById("animate-bottom3d2").style.animationPlayState = "running";
		  		document.getElementById("animatezoom3").style.animationPlayState = "running";
		  	}
		  	if (document.body.scrollTop > 2000 || document.documentElement.scrollTop > 2000) {
		  		document.getElementById("animate-left4").style.animationPlayState = "running";
		  		document.getElementById("animatezoom4").style.animationPlayState = "running";
		  		document.getElementById("animate-right4").style.animationPlayState = "running";
		  	}
		}
	</script>
<!-----------------------body------------------------------------------------------------------------------->




<!--Slogan của Nhà hàng-->
	<div class="jumbotron text-center">
		<div class="jumbotron text-center">
			<div class="animate-left1">
				<h2>Welcome to our restaurant</h2>
			</div>
			<div class="animate-right1">
				<h1 style="color:rgb(255,183,2);font-size: 80px;font-family: 'Great Vibes'">Enjoy Our Delicious Foods</h1>
			</div>
			<div class="animate-zoom1">
				<a href="${pageContext.request.contextPath}/CreateBookTable" style="font-size:17px;font-family:'Lora';line-height: 17px;font-weight: 700;" class="btndatban"><span>Đặt Bàn</span></a>
			</div>
		</div>
		<div class="animate-bottom1">
			<button onclick="downFunction()" id="mybtndown">
		  		<img src="img/slidedown.png" width="50%">
		  	</button>
		</div>
	  	<script>
	  		//khi click vao sẽ tự động lăn xuông vị trí cách vị trí trên cùng 600px
			function downFunction() {
			  	document.body.scrollTop = 670;
			  	document.documentElement.scrollTop = 670;
			}
		</script>
	</div>
<!--gioi thieu =))-->
	<div style="background-color: #ffb702;">
	  	<div class="row text-center">
	  		<div class="col-sm-4" id="animatezoom2">
	  			<h2 style="font-family:'Great Vibes';color: #ffffff;font-weight: normal;font-size: 60px;">Team4 Restaurant</h2>
	  			<p style="color: #ffffff;font-size: 20px">Tinh hoa 5 vị lẩu Châu Á</p>
	  			<hr style="color: #ffffff;background-color: #ffffff">
	  			<br>
	  			<br>
	  			<p style="text-align:left;margin-left: 30px;font-family: Lora;font-size:18px;color: #ffffff">Gói trọn tinh hoa 5 vị lẩu quốc tế từ Thái – Trung – Nhật – Hàn, thực khách thỏa sức đắm chìm trong hương vị lẩu ngăn đôi đậm đà, ngất ngây cùng đồ ăn kèm đặc sắc và quầy line không giới hạn. Bạn có thể thưởng thức một bữa ăn TRỌN VẸN từ khai vị – món chính (lẩu) – món ăn kèm – món tráng miệng. Tất cả đều có tại một nhà hàng – Team4 Restaunt!!! <br>Đặc biệt, nhà hàng luôn chú trọng nguồn nguyên liệu XANH – SẠCH, chất lượng thịt bò Mỹ hảo hạng, rau củ tươi nhập từ các trang trại Đà Lạt đảm bảo mọi bữa ăn ngon cho thực khách. Team4 Restaunt mong muốn mang đến trải nghiệm tuyệt vời, tạo nên cuộc vui hết ý cho nhiều thực khách.</p>
	  		</div>
	  		<div class="col-sm-8">
	  			<img src="img/mon_an.jpg" width="100%">
	  		</div>
	  	</div>
	</div>
<!--MENU Món ăn -->
	<div class="container-fluid text-center" style="background-image: url(img/Restaurant2sec4bg.jpg);background-attachment: fixed;background-size: cover;color: white">
		<h2 style="font-family:'Great Vibes';color: #ffb702;font-weight: normal;font-size: 45px">Team4Restaunt's<div style="color:#ffffff;font-weight: 300;font-size: 55px;font-family:'Raleway' ">
					Special Menu
				</div></h2>
		<hr>
		<div class="row text-center" style="font-family:'Lora';color:#ffffff">
			<div class="column4" id="animate-bottom3a1">
				<div class="content4">
					<img src="img/menu/1.png" width="100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
					<h4>Bò Núi Lửa</h4>
				</div>
			</div>
			<div class="column4" id="animate-bottom3b1">
				<div class="content4">
					<img src="img/menu/2.png" width="100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
					<h4>Đậu Hũ Hải Sản Phô Mai </h4>
				</div>
			</div>
			<div class="column4" id="animate-bottom3d1">
				<div class="content4">
					<img src="img/menu/3.png" width="100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
					<h4>Sổ Tay Nước Chấm</h4>
				</div>
			</div>
			<div class="column4" id="animate-bottom3c1">
				<div class="content4">
					<img src="img/menu/4.png" width="100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
					<h4>Tôm Tươi Ngọt</h4>
				</div>
			</div>
			<div class="column4" id="animate-bottom3a2">
				<div class="content4">
					<img src="img/menu/5.png" width="100%" onclick="openModal();currentSlide(5)" class="hover-shadow cursor">
					<h4>Mai Ghẹ Hoàng Bào</h4>
				</div>
			</div>
			<div class="column4" id="animate-bottom3b2">
				<div class="content4">
					<img src="img/menu/6.png" width="100%" onclick="openModal();currentSlide(6)" class="hover-shadow cursor">
					<h4>Sườn Bò Mỹ Không Xương</h4>
				</div>
			</div>
			<div class="column4" id="animate-bottom3d2">
				<div class="content4">
					<img src="img/menu/7.png" width="100%" onclick="openModal();currentSlide(7)" class="hover-shadow cursor">
					<h4>Thịt Nướng Tảng</h4>
				</div>
			</div>
			<div class="column4" id="animate-bottom3c2">
				<div class="content4">
					<img src="img/menu/8.jpg" width="100%" onclick="openModal();currentSlide(8)" class="hover-shadow cursor">
					<h4>Lõi Nạc Vai Thượng Hạng</h4>
				</div>
			</div>
		</div>
		<div id="myModal" class="modal ">
		  	<span class="close cursor" onclick="closeModal()">&times;</span>

		  	<div class="modal-content animate-zoom">

		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6 ">
			      			<div class="numbertext">1 / 8</div>
			      			<img src="img/menu/1.png" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Bò Núi Lửa</h2>
			      			<br>
			      			<p style="font-size: 18px;text-align:left;">
			      				Bò Núi Lửa là phần thịt được lấy từ sườn bò đã rút bỏ phần xương. Phần thịt này có vân mỡ xen lẫn giữa các thớ thịt nên có độ mềm, thơm ngon và giàu dinh dưỡng. Sườn bò Mỹ không xương thường được dùng để nướng BBQ, chiên, xào, rán, nhúng lẩu … đều rất ngon. Đồng thời được trang trí theo tạo hình núi lửa rất thích hợp với những bạn đam mê mạo hiểm.
			      			</p>
			      		</div>
		      		</div>
		    	</div>

		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6 ">
			      			<div class="numbertext">2 / 8</div>
			      			<img src="img/menu/2.png" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Đậu Hũ Hải Sản Phô Mai</h2>
			      			<br>
			      			<p style="font-size: 18px;text-align:left;">Đậu hũ nhân phô mai Hải Sản là món ăn được nhiều người yêu thích bởi hương vị thơm ngon, nhân phô mai béo ngậy hấp dẫn.Khi ăn bạn sẽ cảm thấy như mọi thứ đều tan chảy ngay trong miệng của bạn mọi giác quan được đẩy lên đỉnh điểm giúp bạn thỏa mãn và thư dãn sau những ngày học tập và lầm việc mệ mỏi =)) <br><br>
							Đậu hũ phô mai thường được dùng để chế biến trong các món chiên, xào, thả lẩu... đều rất ngon.</p>

			      		</div>
		      		</div>
		    	</div>

		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6">
			      			<div class="numbertext">3 / 8</div>
			      			<img src="img/menu/3.png" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Sổ Tay Nước Chấm</h2>
			      			<div class="row">
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/1.jpg" width="100%" class="hover-shadow cursor">
										<h4>Nước chấm chả giò </h4>
			      					</div>
			      				</div>
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/3.jpg" width="100%" class="hover-shadow cursor">
										<h4>Nước chấm cho món thịt nướng </h4>
			      					</div>
			      				</div>
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/5.jpg" width="100%" class="hover-shadow cursor">
										<h4>Nước mắm tỏi ớt cho các món </h4>
			      					</div>
			      				</div>
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/6.jpg" width="100%" class="hover-shadow cursor">
										<h4>Nước mắm chấm món bánh bột lọc </h4>
			      					</div>
			      				</div>
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/7.jpg" width="100%" class="hover-shadow cursor">
										<h4>Nước mắm gừng chấm thịt vịt </h4>
			      					</div>
			      				</div>
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/8.jpg" width="100%" class="hover-shadow cursor">
										<h4>Nước chấm bò bía</h4>
			      					</div>
			      				</div>
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/10.jpg" width="100%" class="hover-shadow cursor">
										<h4>Nước chấm tắc cho món cua, ghẹ </h4>
			      					</div>
			      				</div>
			      				<div class="column4">
			      					<div class="content4">
			      						<img src="img/nuoccham/11.jpg" width="100%" class="hover-shadow cursor">
										<h4>Mắm tôm - chanh - ớt </h4>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
		      		</div>
		    	</div>
		    
		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6">
			      			<div class="numbertext">4 / 8</div>
			      			<img src="img/menu/4.png" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Tôm Tươi Ngọt</h2>
			      			<br>
			      			<p style="font-size: 18px;text-align:left;">Tôm tươi ngọt là một món ăn vừa ngon miệng lại không hề có giác ngấy. Với vị ngọt tự nhiên từ thịt tôm hùm kết hợp với vị thanh của một số loại rau củ quả xen lẫn gia vị tổng hợp chua chua, cay cay,… sẽ khiến bạn muốn ăn mãi không thôi. Cách làm tôm hùm Sashimi cũng khá đơn giản, quan trọng là bạn phải biết kết hợp hài hòa giữa các nguyên liệu và nêm nếm gia vị vừa phải để phù hợp với khẩu vị của từng người.</p>
			      		</div>
		      		</div>
		    	</div>

		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6">
			      			<div class="numbertext">5 / 8</div>
			      			<img src="img/menu/5.png" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Mai Ghẹ Hoàng Bào</h2>
			      			<br>
			      			<p style="font-size: 18px;text-align:left;"> Mai ghẹ hoàng bào là món nhúng xuất sắc trong menu mới tại Team4Restaurant “vừa mãn nhãn, vừa mãn vị" cho mọi tín đồ.<br><br>
			      				Với vẻ ngoài là những chiếc mai ghẹ vàng óng, kích thích vị giác và cuốn hút ngay từ cái nhìn đầu tiên.<br><br>
			      				Tiếp đến là vị ngọt thanh tự nhiên của lớp nhân bên trong:<br><br>
			      					Hương vị nguyên chất của ghẹ xay nhuyễn, điểm thêm những thớ thịt ghẹ ngọt đậm. Khi cắn, chạm vào miếng thịt ghẹ, thực khách sẽcảm nhận được độ giòn, chắc thịt, hương vị không thể nào quên.</p>	
			      		</div>
		      		</div>
		    	</div>

		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6">
			      			<div class="numbertext">6 / 8</div>
			      			<img src="img/menu/6.png" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Sườn Bò Mỹ Không Xương</h2>
			      			<br>
			      			<p style="font-size: 18px;text-align:left;">Sườn bò rút xương Mỹ là phần thịt sườn đã lọc sạch xương (rút xương), trong Tiếng Anh gọi là Short rib Boneless, sườn non rút xương cùng với thăn nội ( Tenderloin) là một trong hai phần thịt ngon nhất con bò. Phần thịt này đặc trưng là mềm, thơm, ngọt, tan trong miệng của thực khách. Với công nghệ hiện đại của Mỹ, ngay sau khi cắt thịt sườn đã rút phần xương bằng máy móc hiện đại nên không làm thớ thịt bị mất mô liên kết, chính vì vậy thịt sườn rút xương vẫn luôn giữ được độ đậm đà đặc trưng của thịt bò trong bất kỳ món ăn nào. Bạn có muốn thưởng thức những món ăn hảo hạng chỉ có tại nhà hàng, khách sạn 5 sao tại nhà? Hãy liên hệ ngay với chúng tôi để được tư vấn và phục vụ tận tình nhất.</p>
			      		</div>
		      		</div>
		    	</div>

		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6">
			      			<div class="numbertext">7 / 8</div>
			      			<img src="img/menu/7.png" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Thịt Nướng Tảng</h2>
			      			<br>
			      			<p style="font-size: 18px;text-align:left;">Thịt nướng nguyên tảng bao giờ cũng ngon nhất, ngon hơn thịt cắt dây nhỏ rất nhiều, vì giữ được độ ngọt và thơm của thịt. Thịt bắp giò heo có lẽ là phần thịt theo mọi người chỉ dùng để luộc, hầm....Nhưng ướp nướng kiểu Nhật này mùi vị đậm đà và rất đơn giản để thực hiện, đặc biệt là rất ngon nhé.</p>
			      		</div>
		      		</div>
		    	</div>
		    
		    	<div class="mySlides">
		      		<div class="row">
		      			<div class="col-sm-6">
			      			<div class="numbertext">8 / 8</div>
			      			<img src="img/menu/8.jpg" style="width:100%;border-radius: 16px 0 0 16px">
			      		</div>
			      		<div class="col-sm-6 caption-container">
			      			<h2>Lõi Nạc Vai Thượng Hạng</h2>
			      			<br>
			      			<p style="font-size: 18px;text-align:left;">Lõi nạc vai bò MỸ là phần thịt cắt từ vai của con bò, mô mỡ toả ra các phía từ trung tâm miếng thịt nhìn như hoa và rất đẹp mắt. Lõi nạc vai rất thích hợp để nướng cũng như làm bit tết</p>
			      		</div>
		      		</div>
		    	</div>
		    
		    	<a class="prev1" onclick="plusSlides(-1)">&#10094;</a>
		    	<a class="next1" onclick="plusSlides(1)">&#10095;</a>

		  	</div>
		</div>
		<a href="${pageContext.request.contextPath}/thucdon" class="btn btn-3" style="font-family:'Lora'" id="animatezoom3">
          Xem Tất Cả
        </a>
        <script>
			function openModal() {
		  		document.getElementById("myModal").style.display = "block";
			}

			function closeModal() {
		  		document.getElementById("myModal").style.display = "none";
			}

			var slideIndex = 1;
			showSlides(slideIndex);

			function plusSlides(n) {
		  		showSlides(slideIndex += n);
			}

			function currentSlide(n) {
		  		showSlides(slideIndex = n);
			}

			function showSlides(n) {
		  		var i;
		  		var slides = document.getElementsByClassName("mySlides");
		 	 	var dots = document.getElementsByClassName("demo");
		  		var captionText = document.getElementById("caption");
		  		if (n > slides.length) {slideIndex = 1}
		  		if (n < 1) {slideIndex = slides.length}
		  		for (i = 0; i < slides.length; i++) {
		      		slides[i].style.display = "none";
		  		}
		  		for (i = 0; i < dots.length; i++) {
		      		dots[i].className = dots[i].className.replace(" active", "");
		  		}
		  		slides[slideIndex-1].style.display = "block";
		  		dots[slideIndex-1].className += " active";
		  		captionText.innerHTML = dots[slideIndex-1].alt;
			}
		</script>
	</div>

<!--Giới Thiệu Team-->
	<div class="container-fluid bg-grey text-center">
		<h2 style="font-family:'Great Vibes';color: #ffb702;font-weight: normal;font-size: 45px">Meet Our<div style="color:#222222;font-weight: 300;font-size: 55px;font-family:'Raleway' ">
					Awesome Members
				</div>
		</h2>
		<hr align="center">

	  	<div class="row" style="margin-top: 70px">
		  	<div class="column" style="border-bottom: 16px" id="animate-left4">
		    	<div class="card">
		      		<img src="img/2.jpg" alt="Jane" style="width:100%">
		      		<div class="otex text-center">
		        		<h2>Vương Huy Giang</h2>
		        		<p class="titlet">CT2A</p>
		        		<div id="container-fluid" style="font-size: 15px;text-align:center;">
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/facebook.svg" style="width: 16px;height: 16px;"></a>
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/instagram.svg" style="width: 16px;height: 16px;"></a>
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/skype.svg" style="width: 16px;height: 16px;"></a>
						</div>
		      		</div>
		    	</div>
		  	</div>
		  	<div class="column" style="border-bottom: 16px" id="animatezoom4">
		    	<div class="card">
		      		<img src="img/1.jpg" alt="Jane" style="width:100%">
		      		<div class="otex text-center">
		        		<h2>Tạ Thị Ánh</h2>
		        		<p class="titlet">CT2A</p>
		        		<div id="container-fluid" style="font-size: 15px;text-align:center;">
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/facebook.svg" style="width: 16px;height: 16px;"></a>
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/instagram.svg" style="width: 16px;height: 16px;"></a>
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/skype.svg" style="width: 16px;height: 16px;"></a>
						</div>
		      		</div>
		    	</div>
		  	</div>
		  	<div class="column" style="border-bottom: 16px" id="animate-right4">
		    	<div class="card">
		      		<img src="img/6.jpg" alt="Jane" style="width:100%;">
		      		<div class="otex text-center">
		        		<h2>Nguyễn Bình Đức</h2>
		        		<p class="titlet">CT2A</p>
		        		<div id="container-fluid" style="font-size: 15px;text-align:center;">
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/facebook.svg" style="width: 16px;height: 16px;"></a>
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/instagram.svg" style="width: 16px;height: 16px;"></a>
							<a href="#" style="margin-right:10px;color: gray"><img src="icon/skype.svg" style="width: 16px;height: 16px;"></a>
						</div>
		      		</div>
		    	</div>
		  	</div>
		</div>

	</div>
<!--Phản Hồi Của Khách Hàng-->
	<div style="background-image: url(img/Restaurant2sec6bg.jpg);background-attachment: fixed;background-size: cover;color: black">
		<div class="container-fluid text-center" style="background-color: rgba(0,0,0,0);">
			<h2 style="font-family:'Great Vibes';color: #ffb702;font-weight: normal;font-size: 45px">What Our<div style="color:#ffffff;font-weight: 300;font-size: 60px;font-family:'Raleway' ">
					Customer Says
				</div>
		</h2>
			<hr width="100px" noshade>
			<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
				<ol class="carousel-indicators">
			    	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			    	<li data-target="#myCarousel" data-slide-to="1"></li>
			    	<li data-target="#myCarousel" data-slide-to="2"></li>
			  	</ol>
		 		<div class="carousel-inner" role="listbox" style="color: white">
			    	<div class="item active">
			    		<h4>"Nhà hàng này quá đẹp.Đồ ăn ngon thôi rồi"<br><span style="font-style:normal;">Nguyễn Văn A</span></h4>
			    	</div>
			    	<div class="item">
			      		<h4>"Chất Lượng Tốt Phục Vụ Tuyệt Vời Chất Lượng 5 Sao"<br><span style="font-style:normal;">John Nguyễn, Nhà Báo</span></h4>
			    	</div>
			    	<div class="item">
			      		<h4>"Tôi sẽ đến đây ăn hàng ngày"<br><span style="font-style:normal;">Lê Thị B</span></h4>
			    	</div>
			  	</div>
			</div>
		</div>
	</div>
<!--thông tin và địa chỉ-->
	<div style="background-color:black">
		<div class="row">
			<div class="column">
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d8125.049886639841!2d105.79793784297927!3d20.978530617418976!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc508f938fd%3A0x883e474806a2d1f2!2zSOG7jWMgdmnhu4duIEvhu7kgdGh14bqtdCBN4bqtdCBtw6M!5e0!3m2!1svi!2s!4v1574587465180!5m2!1svi!2s" width="100%" height="544" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			</div>
			<div class="column" style="background-color:black">
				<h2 style="font-family:'Great Vibes';color: #ffb702;margin-left: 30px;font-weight: normal;font-size: 45px">Visit Our<div style="color:#ffffff;font-weight: 300;font-size: 60px;font-family:Raleway ">
					Restaurant
				</div></h2>
				<hr width="100px" align="left" style="margin-left: 30px;margin-bottom: 50px">
				<p style="margin-left: 30px;color:#ffffff;font-style: italic;font-family: 'Lora';font-size:16px">
					<br>
					Địa Chỉ :<br>
					123 Hollywood Street,<br>
					HaDong,HaNoi,VietNam<br>
					+84 123456789
				</p>
				<p style="margin-left: 30px;color:#ffffff;font-style: italic;font-family: 'Lora';font-size:16px">
					<br>
					Giờ Mở Cửa :<br>
					Thứ 2 – <br>
					Thứ 4 ………………………………………… 9:00am <br>– 10:00pm <br>
					<br>
					Thứ 5 – <br>
					Chủ Nhật ………………………………………… 10:00am <br>– 11:00pm
				</p>
				
			</div>
			<div class="column">
				<img src="img/Restaurant2sec8bg.jpg" width="100%" style="height:544">
			</div>
		</div>
	</div>
	




<!-----------------------footer----------------------------------------------------------------------------->
    <jsp:include page="_tienich.jsp"></jsp:include>
    <jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>