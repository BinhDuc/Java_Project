<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Thực Đơn</title>
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
  		.active1{
  			margin-left:520px;

  		}
  		.tablink {
		  background-color: #ffffff;
		  color: black;
		  float: left;
		  border: none;
		  outline: none;
		  cursor: pointer;
		  padding: 10px 16px;
		  font-size: 17px;
		  width: 10%;
		  border-radius: 15px
		}

		.tablink:hover {
		  background-color: #777;
		}

		/* Style the tab content (and add height:100% for full page content) */
		.tabcontent {
		  color: rgb(255,183,2);
		  display: none;
		  padding: 100px 20px;
		  height: 100%;
		}
		.row {
		  	padding: 10px;
		}
		.col-sm-6{
			width:50%;
		}
		img{
			align-self: center;
			width:100%;
		}
		hr{
			color: black;
			background-color: black;
		}
	</style>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
    
    
    <!-----------------------body------------------------------------------------------------------------------->

<div class="container-fluid text-center" style="background-image:url(img/black-1072366_1920.jpg);background-repeat: no-repeat;background-attachment: fixed;background-size: cover;" >
	<button class="tablink active1" onclick="openPage('1', this, 'gray')" id="defaultOpen">Món nhúng</button>
	<button class="tablink" onclick="openPage('2', this, 'gray')">5 vị lẩu</button>

	<div id="1" class="tabcontent">
	  	<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
			<ol class="carousel-indicators">
		    	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    	<li data-target="#myCarousel" data-slide-to="1"></li>
		    	<li data-target="#myCarousel" data-slide-to="2"></li>
		    	<li data-target="#myCarousel" data-slide-to="3"></li>
		    	<li data-target="#myCarousel" data-slide-to="4"></li>
		    	<li data-target="#myCarousel" data-slide-to="5"></li>
		    	<li data-target="#myCarousel" data-slide-to="6"></li>
		  	</ol>
	 		<div class="carousel-inner slide text-center" role="listbox" style="color: #ffffff;font-family:Lora;font-size: 18px">
		    	<div class="item active">
		    		<div class="row" style="float: left;">
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/cai-bo-xoi_nho.png" >
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Cải Bó Xôi</p>
			    					<hr>
			    				</div>
		    				</div>

		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/mong-toi-2_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Mồng Tơi</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/ngo-2_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Ngô Ngọt</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/rau-cai-ngong-ngot_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Cải Ngọt</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/rau-cai-thao_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Rau Cải Thảo</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row" style="margin-bottom: 60px">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/rau-muong_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Rau Muống</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    		</div>
		    	</div>

<!--menu2-->
		    	<div class="item">
		      		<div class="row" style="float: left;">
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/nam-kim-cham-2_nho.png" >
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Nấm Kim châm</p>
			    					<hr>
			    				</div>
		    				</div>

		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/nam-bung-lon.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Nấm</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/nam-hai-san-2_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Nấm Hải Sâm</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/nam-dui-ga-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Nấm Đù Gà</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/nam-dong-trung.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Nấm Đông Trùng</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row" style="margin-bottom: 60px">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/rau/nam-so-4_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Nấm</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    		</div>
		    	</div>
<!--menu3-->
		    	<div class="item">
		      		<div class="row" style="float: left;">
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/haisan/bao-tu-ca-basa-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Bao Tử Cá BASA</p>
			    					<hr>
			    				</div>
		    				</div>

		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/haisan/tom-2.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Tôm</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/haisan/ngao.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Ngao</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-sm-6">
		    				
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/haisan/ca-dieu-hong-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Cá Diêu Hồng</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/thay-ba-chi-heo.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Ba Chỉ Heo</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row" style="margin-bottom: 60px">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/suon-bo-my-khong-xuong.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Sườn Bò Mĩ</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    		</div>
		    	</div>

<!--menu4-->
		    	<div class="item">
		      		<div class="row" style="float: left;">
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/ba-chi-bo.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Ba Chỉ Bò</p>
			    					<hr>
			    				</div>
		    				</div>

		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/bap-bo.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Bắp Bò</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/bo-nui-lua.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Bò Núi Lửa</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/loi-nac-vai.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Lõi Nạc Vai</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/loi-vai-bo-my.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Lõi Vai Bò</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row" style="margin-bottom: 60px">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/bo/luoi-bo.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Lưỡi Bò</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    		</div>
		    	</div>

<!--menu5-->
		    	<div class="item">
		      		<div class="row" style="float: left;">
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/my/mi-trung.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Mỳ Trứng</p>
			    					<hr>
			    				</div>
		    				</div>

		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/my/my-cu-rieng.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Mỳ Củ Riềng</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/my/my-matcha.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Mỳ MATCHA</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/my/mien-dong-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Miến</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/my/my-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Mỳ</p>
			    					<hr width="430px">
			    				</div>
		    				</div>
		    				<div class="row" style="margin-bottom: 60px">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/my/y-tom-2_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Mỳ Tôm</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    		</div>
		    	</div>

<!--menu6-->
		    	<div class="item">
		      		<div class="row" style="float: left;">
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/bo-my-nhoi-ong-tre-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Bò Mỹ Nhồi Ống Tre</p>
			    					<hr>
			    				</div>
		    				</div>

		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/bo-vien-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Bò Viên</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/ca-vien-hai-san-nhan-pho-mai-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Cá Viên Phô Mai</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/cha-ca-nhan-trung-ca-hoi-1_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Chả Cá Nhân Trứng Cá Hồi</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/tom-vien-hoang-de-2_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Tôm Viên Hoàng Đế</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row" style="margin-bottom: 60px">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/vang-dau_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Váng Đậu</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    		</div>
		    	</div>

<!--menu7-->
		    	<div class="item">
		      		<div class="row" style="float: left;">
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/dau-hu-hai-san-nhan-pho-mai-2_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Đậu Hũ Hải Sản Phô Mai</p>
			    					<hr>
			    				</div>
		    				</div>

		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/dau-phu-2_nho.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Đậu Phụ</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/ha-cao-rau.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Há Cảo Rau</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    			<div class="col-sm-6">
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/ha-cao-tom.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Há Cảo Tôm</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/paste-muc-2.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Paste Mực</p>
			    					<hr>
			    				</div>
		    				</div>
		    				<div class="row" style="margin-bottom: 60px">
		    					<div class="col-sm-2">
		    						<img src="img/thucdon/dovien/paste-tom-2.png">
			    				</div>
			    				<div class="col-sm-10">
			    					<p style="text-align: left;">Paste Tôm</p>
			    					<hr>
			    				</div>
		    				</div>
		    			</div>
		    		</div>
		    	</div>
		    	 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right"></span>
			      <span class="sr-only">Next</span>
			    </a>

		  	</div>
		</div>
	</div>

	<div id="2" class="tabcontent" style="font-family:Lora;font-size: 18px">
		<div class="row" style="float: left;">
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-2">
						<img src="img/thucdon/vilau/1.png">
    				</div>
    				<div class="col-sm-10">
    					<p style="text-align: left;">Lẩu MISO</p>
    					<hr>
    				</div>
				</div>

				<div class="row">
					<div class="col-sm-2">
						<img src="img/thucdon/vilau/2.png">
    				</div>
    				<div class="col-sm-10">
    					<p style="text-align: left;">Lẩu BULGOGI</p>
    					<hr>
    				</div>
				</div>
				<div class="row">
					<div class="col-sm-2">
						<img src="img/thucdon/vilau/Lau-thai.png" >
    				</div>
    				<div class="col-sm-10">
    					<p style="text-align: left;">Lẩu THái</p>
    					<hr>
    				</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-2">
						<img src="img/thucdon/vilau/suki.png" >
    				</div>
    				<div class="col-sm-10">
    					<p style="text-align: left;">Lẩu SUKI</p>
    					<hr >
    				</div>
				</div>
				<div class="row">
					<div class="col-sm-2">
						<img src="img/thucdon/vilau/tu-xuyen.png" >
    				</div>
    				<div class="col-sm-10">
    					<p style="text-align: left;">Lẩu Tứ Xuyên</p>
    					<hr>
    				</div>
				</div>
			</div>
		</div>
	</div>

	<script>
	function openPage(pageName,elmnt,color) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].style.backgroundColor = "";
	  }
	  document.getElementById(pageName).style.display = "block";
	  elmnt.style.backgroundColor = color;
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
	</script>
</div>

<!-----------------------footer----------------------------------------------------------------------------->
    
    <jsp:include page="_tienich.jsp"></jsp:include>
    <jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>