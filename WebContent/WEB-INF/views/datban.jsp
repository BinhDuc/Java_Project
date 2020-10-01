<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
	<title>Đặt Bàn</title>
  	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/alertify.core.css">
	<link rel="stylesheet" href="css/alertify.default.css">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="js/alertify.min.js"></script>
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
  	<link rel="stylesheet" href="css/w3.css">
  	<script src="js/icon.js"></script>
  	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
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
    	html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
    	* {box-sizing: border-box;}
    	body{
      		margin:0;
      		background-image:url(img/Restaurant2sliderbg.jpg);
      		background-repeat: no-repeat;
      		background-attachment: fixed;
      		background-size: cover;
    	}
    	html {
        	scroll-behavior: smooth;
    	}
    
  	</style>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
    
    
    <!-----------------------body------------------------------------------------------------------------------->


	
  	<div class="w3-content w3-light-grey" style="max-width:1400px;">

  		<!-- The Grid -->
    	<div class="w3-row-padding ">
    
      <!-- Left Column -->
      
      		<div class="w3-third w3-margin-top">
        		<div class="w3-container w3-card w3-white w3-margin-bottom ">
           			<h2 class="w3-text-grey w3-padding-16 text-center"><i class="w3-margin-right w3-xxlarge w3-text-orange" data-feather="book-open" style="width: 36px;height: 36px;"></i>Đặt Bàn Trực Tuyến</h2>
           			<p style="color:#FF3333"><strong>${errorString}</strong></p>
           			
           			<hr>
           			<p style="text-align: center;">Nên đặt trước khi đến từ 30 phút! <br><b style="color: red">Giảm tới 10%</b></p>
          			<form method="POST" action="${pageContext.request.contextPath}/CreateBookTable">
             			<div class="form-group">
              				<label>Họ Tên:</label>
              				<input type="text" class="form-control" name="nameCtm" value="${booktb.nameCtm}">
            			</div>
            			<div class="form-group">
              				<label>Số Điện Thoại:</label>
              				<input type="text" class="form-control" name="phoneCtm" value="${booktb.phoneCtm}">
            			</div>
            			<div class="form-group">
              				<label>Số Người:</label>
              				<input type="number" class="form-control" name="number" value="${booktb.number}">
            			</div>
            			<div class="form-group">
              				<label>Thời Gian:</label>
             		 		<input type="date" class="form-control" id="tm" name="time" value="${booktb.time}">
            			</div>
             			<div class="form-group">
              				<label>Ghi Chú:</label>
              				<textarea class="form-control" rows="3"  name="note" placeholder="VD:Giờ Đến Cụ Thể(19h nha)......"></textarea>
            			</div>
            			<input type="submit" class="w3-margin-bottom" onclick="return ConfirmDelete();" value="ĐẶT CHỖ NGAY" style="width: 100%;border-radius: 15px;background-color: #EA4335;color: white;padding: 10px;">
          			</form>
          			<p style="text-align: center;">Hoặc gọi tới: <b style="color: red">0374994941</b> <br>Để đặt chỗ và được tư vấn.</p>
        		</div>
        		<script>
				    function ConfirmDelete()
				    {
				      var x = confirm("Ấn OK Để Xác Nhận Đặt Bàn !");
				      if (x)
				    	  return alert("❀◕ ‿ ◕❀ Cảm Ơn Quý Khách Đẵ Đặt Bàn ❀◕ ‿ ◕❀\n \n"+
				    	    		" \t \t \tChúng Tôi Sẽ Liên Hệ Ngay !\n \n"+"☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀");
				      else
				        return false;
				      
				      
				    }
				</script>  
        		

      <!-- End Left Column -->
      		</div>

      <!-- Right Column -->
      		<div class="w3-twothird w3-margin-top">
        
        		<div class="w3-container w3-card w3-white">
          			<div id="myCarousel" class="carousel slide w3-margin-top w3-margin-bottom" data-ride="carousel">
            <!-- Indicators -->
            			<ol class="carousel-indicators">
              				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              				<li data-target="#myCarousel" data-slide-to="1"></li>
              				<li data-target="#myCarousel" data-slide-to="2"></li>
            			</ol>

            <!-- Wrapper for slides -->
            			<div class="carousel-inner">
              				<div class="item active">
                			<img src="img/khonggian/3.jpg" style="width:100%;">
              				</div>

              				<div class="item">
                				<img src="img/khonggian/1.jpg" style="width:100%;">
              				</div>
            
              				<div class="item">
                				<img src="img/khonggian/2.jpg" style="width:100%;">
              				</div>

            			</div>

            <!-- Left and right controls -->
           			 	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
              				<span class="prev1">&#10094;</span>
              				<span class="sr-only">Previous</span>
            			</a>
            			<a class="right carousel-control" href="#myCarousel" data-slide="next">
              				<span class="next1">&#10095;</span>
              				<span class="sr-only">Next</span>
            			</a>
          			</div>

        		</div>

        		<div class="w3-container w3-card w3-white w3-margin-bottom w3-margin-top">
          			<div class="w3-container">
            			<h5 class="w3-opacity"><b>I. Đặt chỗ : Tư vấn - Giữ chỗ</b></h5>
            			<h6 class="w3-text-teal">- Quý khách nên đặt chỗ trước từ <b>45</b> phút để được hỗ trợ tốt nhất.</h6>
            			<p>- Bàn đặt của Quý khách được giữ tối đa <b>15</b> phút.</p>
            			<hr>
          			</div>
          			<div class="w3-container">
            			<h5 class="w3-opacity"><b>II. Ưu đãi tặng kèm:</b></h5>
            			<table class="w3-table-all w3-hoverable w3-centered">
	              			<thead>
	                			<tr class="w3-blue">
	                  				<th><b>Sản phẩm (Buffet)</b></th>
	                  				<th>Ưu đãi</th>
	                  				<th>Áp dụng</th>
	                			</tr>
	              			</thead>
	              			<tr>
	                			<td> <b>269.000</b>đ; <b>319.000</b>đ</td>
	                			<td> <b style="color: red">-10%</b>/Tổng hóa đơn trước thuế</td>
	                			<td>Buổi trưa từ T2 - T6</td>
	            
	              			</tr>
            			</table>
			            <h6 class="w3-text-teal">- Các suất buffet tại Nhà hàng:</h6>
			            <table class="w3-table-all w3-hoverable w3-centered">
			              	<thead>
			                	<tr class="w3-blue">
			                  		<th>Thời gian</th>
			                  		<th>Suất buffet</th>
			                	</tr>
			              	</thead>
			              	<c:forEach items="${listBF}" var="listBF" >
					          	<tr>
					             	<td><c:out value="${listBF.note}"/></td>
					             	<td>Buffet <b><c:out value="${listBF.ten}"/></b>đ</td>
					          	</tr>
					       	</c:forEach>
			              	<!--tr>
			                	<td>Chỉ phục vụ <br>Buổi trưa từ T2 - T6</td>
			                	<td>Buffet <b>199.000</b>đ</td>
			            
			              	</tr>
			              	<tr>
			                	<td>Chỉ phục vụ <br>Buổi trưa từ T2 - T6</td>
			                	<td>Buffet <b>229.000</b>đ</td>
			            
			              	</tr>
			              	<tr>
			                	<td>Cả tuần</td>
			                	<td>Buffet <b>269.000</b>đ</td>
			              	</tr>
			              	<tr>
			                	<td>Cả tuần</td>
			                	<td>Buffet <b>319.000</b>đ</td>
			              	</tr -->
			            </table>
            			<br>
            			<p>- Quy định mức giá trẻ em: Cao dưới 1m: Miễn phí; Từ 1m - 1m3: Tính <b>30%</b> giá người lớn; Trên 1m3: Tính giá người lớn.</p>
            			<hr>
          			</div>
          
		          	<div class="w3-container">
		            	<h5 class="w3-opacity"><b>III. Lưu ý</b></h5>
		            	<h6 class="w3-text-red">- Giá menu chưa bao gồm VAT. Nhà hàng luôn thu <b>10%</b> VAT & xuất hóa đơn trong ngày.</h6>
		            	<p>- Không áp dụng đồng thời với các ưu đãi khác. </p>
		            	<p>- Không áp dụng ưu đãi & chỉ bán <b>BF 269.000</b>đ + <b>319.000</b>đ vào các ngày: <b>1/1; 8/3; 30/4; 1/5; 2/9; 20/10; 24/12; 25/12; 31/12; 10/3 Âm lịch</b> & từ <b>25/12 - 4/1 Âm lịch.</b></p>
		            	<p>- Từ <b>20</b> người lớn trở lên hoặc đặt món, cần đặt cọc trước.</p>
		            	<p>- Có tính phí thức ăn, thức uống mang vào.</p><br>
		          	</div>
        		</div>

		        <div class="w3-container w3-card w3-white w3-margin-bottom ">
		          	<h2 class="w3-text-grey w3-padding-16">Giới thiệu Team4Restaurant </h2>
		          	<div class="row">
		            	<div class="col-sm-9">
		              		<div class="w3-container">
		                  		<h5 class="w3-opacity"><b>Phù hợp:</b></h5>
		                  		<p>Sinh nhật, tụ họp, liên hoan, gia đình…</p>
		                  		<hr>
		                	</div>
		               	 	<div class="w3-container">
		                  		<h5 class="w3-opacity"><b>Món đặc sắc:</b></h5>
		                  		<p>Nạm cổ bò Mỹ, Lõi cổ bò Mỹ, Ba chỉ heo, 5 vị nước lẩu quốc tế: Tom yum (Thái Lan), Suki (Thái Lan), Miso (Nhật Bản), Bulgogi (Hàn Quốc), Tứ Xuyên (Trung Quốc)… </p>
		                  		<hr>
		                	</div>
		                	<div class="w3-container ">
		                  		<h5 class="w3-opacity"><b>Không gian:</b></h5>
		                  		<p>- Hiện đại.</p>
		                  		<p>- Sức chứa: 90 Khách (01 tầng).</p><hr>
		                	</div>
		                	<div class="w3-container ">
		                  		<h5 class="w3-opacity"><b>Để ô tô:</b></h5>
		                  		<p>Có (Phí phụ thuộc đơn vị trông giữ xe).</p>
		                  		<br>
		                	</div>
		            	</div>
		            	<div class="col-sm-3">
		               		<h5 class="w3-opacity"><b>Thông tin thêm</b></h5>
		               		<p><img src="icon/check.svg" style="width: 16px;height: 16px;"> Ghế trẻ em</p>
		               		<p><img src="icon/check.svg" style="width: 16px;height: 16px;"> Wifi</p>
		               		<p><img src="icon/check.svg" style="width: 16px;height: 16px;"> Điều hòa</p>
		               		<p><img src="icon/check.svg" style="width: 16px;height: 16px;"> Visa / Master card</p>
		              		<p><img src="icon/check.svg" style="width: 16px;height: 16px;"> Hóa đơn VAT</p>
		               		<p><img src="icon/check.svg" style="width: 16px;height: 16px;"> Chỗ chơi trẻ em</p>
		               		<p><img src="icon/check.svg" style="width: 16px;height: 16px;"> Trang trí sự kiện</p>
		               		<p><img src="icon/remove.svg" style="width: 16px;height: 16px;"> Phòng riêng</p>
		               		<p><img src="icon/remove.svg" style="width: 16px;height: 16px;"> Bàn ngoài trời</p>
		               		<p><img src="icon/remove.svg" style="width: 16px;height: 16px;"> Chỗ hút thuốc</p>
		               		<p><img src="icon/remove.svg" style="width: 16px;height: 16px;"> HĐ trực tiếp</p>
		               		<p><img src="icon/remove.svg" style="width: 16px;height: 16px;"> Set Lunch</p>
		               		<p><img src="icon/remove.svg" style="width: 16px;height: 16px;"> Karaoke</p>
		               		<p><img src="icon/remove.svg" style="width: 16px;height: 16px;"> Máy chiếu</p><br>
		            	</div>
		         	</div>
		        
		        </div>

      <!-- End Right Column -->
      		</div>
      
    <!-- End Grid -->
    	</div>
    
    <!-- End Page Container -->
  	</div>



<!-----------------------footer----------------------------------------------------------------------------->
	<jsp:include page="_tienich.jsp"></jsp:include>
	<jsp:include page="_footer.jsp"></jsp:include>

    
</body>
</html>