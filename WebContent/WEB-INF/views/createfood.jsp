<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm Món Ăn</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/w3.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<script src='js/a076d05399.js'></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<link rel="stylesheet" href="css/quanly.css">
	<style>
		* {box-sizing: border-box;}
		html,body,h1,h2,h3,h4,h5 {font-family: "Lora", sans-serif}
		
	</style>
</head>
<body class="w3-light-grey">
	<jsp:include page="_menuManage.jsp"></jsp:include>
	<div class="w3-main w3-animate-zoom" style="margin-left:300px;margin-top:43px;margin-right:10px;">
		<h2><b>Thêm Món Ăn Mới</b></h2>
        
      	<p style="color: red;">${errorString}</p>
       	<p>Nhâp Thông Tin Món Ăn :</p>
      	<form method="POST" action="${pageContext.request.contextPath}/CreateFood">
      		
	      		
      		<div class="input-container2">
	  			<i class="fas fa-hotdog icon2"></i>
	  			<input class="input-field2" type="text" name="tenmon" placeholder="Tên Món" value="${LF.tenmon}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fab fa-gg icon2"></i>
	  			<input class="input-field2" type="text" name="soluong" placeholder="Số Lượng" value="${LF.soluong}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-dollar-sign icon2"></i>
	  			<input class="input-field2" type="text" name="giatien" placeholder="Giá Tiền" value="${LF.giatien}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-sticky-note icon2"></i>
	  			<input class="input-field2" type="text" name="note" placeholder="Ghi Chú" value="${LF.note}">
	  		</div>
		  		
	  		
	  		<input type="submit" class="bton" value="Thêm Món Ăn">
      	</form>
	</div>
</body>
</html>