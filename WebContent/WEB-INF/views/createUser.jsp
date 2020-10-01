<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm Nhân Viên</title>
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
		<h2><b>Thêm Nhân Viên Mới</b></h2>
        
      	<p style="color: red;">${errorString}</p>
       	<p>Nhâp Thông Tin Nhân Viên :</p>
      	<form method="POST" action="${pageContext.request.contextPath}/CreateUser">
      		
	      		
      		<div class="input-container2">
	  			<i class="fa fa-user icon2"></i>
	  			<input class="input-field2" type="text" name="userName" placeholder="Username" value="${CRuser.userName}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fa fa-key icon2"></i>
	  			<input class="input-field2" type="text" name="password" placeholder="PassWord" value="${CRuser.password}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-user-circle icon2"></i>
	  			<input class="input-field2" type="text" name="name" placeholder="Họ Tên" value="${CRuser.name}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-birthday-cake icon2"></i>
	  			<input class="input-field2" type="date" name="birthday" placeholder="Ngày Sinh" value="${CRuser.birthday}">
	  		</div>
	  	
  		
	  		<div class="input-container2">
	  			<i class="fas fa-venus-mars icon2"></i>
	  			<input class="input-field2" type="text" name="gender" placeholder="Giới Tính" value="${CRuser.gender}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="far fa-address-card icon2"></i>
	  			<input class="input-field2" type="text" name="address" placeholder="Địa Chỉ" value="${CRuser.address}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-phone icon2"></i>
	  			<input class="input-field2" type="text" name="phoneNumber" placeholder="Số Điện Thoại" value="${CRuser.phoneNumber}">
	  		</div>
	  		
	  		<div class="input-container2">
	  			<i class="fas fa-sitemap icon2"></i>
	  			<input class="input-field2" type="text" name="position" placeholder="Chức Vụ" value="${CRuser.position}">
	  		</div>
		  		
	  		
	  		<input type="submit" class="bton" value="Thêm Nhân Viên">
      	</form>
	</div>
</body>
</html>