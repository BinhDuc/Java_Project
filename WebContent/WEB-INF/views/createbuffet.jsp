<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm Suất Buffet</title>
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
        
      	<p style="color: red;">${errorString}</p>
       	<p>Nhâp Thông Tin :</p>
      	<form method="POST" action="${pageContext.request.contextPath}/CreateBuffet">
      		
	      		
      		<div class="input-container2">
	  			<i class="fas fa-barcode icon2"></i>
	  			<input class="input-field2" type="text" name="buffetId" placeholder="ID_BUFFET" value="${BF.buffetId}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fab fa-gg icon2"></i>
	  			<input class="input-field2" type="text" name="ten" placeholder="Tên(Giá)" value="${BF.ten}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-dollar-sign icon2"></i>
	  			<input class="input-field2" type="text" name="gia" placeholder="Giá Tiền" value="${BF.gia}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-sticky-note icon2"></i>
	  			<input class="input-field2" type="text" name="note" placeholder="Ghi Chú" value="${BF.note}">
	  		</div>
		  		
	  		
	  		<input type="submit" class="bton" value="Thêm Combo">
      	</form>
	</div>
</body>
</html>