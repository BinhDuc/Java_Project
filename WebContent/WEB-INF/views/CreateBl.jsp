<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm Bảng Lương Nhân Viên</title>
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
		<h2><b>Thêm Nhân Bảng Lương Mới</b></h2>
        
      	<p style="color: red;">${errorString}</p>
       	
      	<form method="POST" action="${pageContext.request.contextPath}/CreateBL">
      		
	      		
      		<div class="input-container2">
	  			<i class="fa fa-user icon2"></i>
	  			<input class="input-field2" type="text" name="idbl" placeholder="Mã Nhân Viên" value="${CRBL.idbl}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fa fa-key icon2"></i>
	  			<input class="input-field2" type="text" name="chamcong" placeholder="Số Ngày Chấm Công" value="${CRBL.chamcong}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-user-circle icon2"></i>
	  			<input class="input-field2" type="text" name="heso" placeholder="Hệ Số Lương" value="${CRBL.heso}">
	  		</div>
	  		
	  		
	  		<input type="submit" class="bton" value="Thêm Bảng Lương Mới">
      	</form>
	</div>
</body>
</html>