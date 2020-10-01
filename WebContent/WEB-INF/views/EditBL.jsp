<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sửa Thông Tin</title>
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
	<script src="js/icon.js"></script>
	<script>
	    function ConfirmDelete()
	    {
	      var x = confirm("Bạn Có Muốn Xóa Không?");
	      if (x)
	          return true;
	      else
	        return false;
	    }
	</script> 
	<style>
		* {box-sizing: border-box;}
		html,body,h1,h2,h3,h4,h5 {font-family: "Lora", sans-serif}
		
	</style>
</head>
<body>
	<jsp:include page="_menuManage.jsp"></jsp:include>
	<div class="w3-main w3-animate-zoom" style="margin-left:300px;margin-top:43px;margin-right:10px;">
		<h2>Sửa Thông Tin Nhân Viên</h2>
 
		<p style="color: red;">${errorString}</p>
	 	
	    <c:if test="${not empty BL}">
	    	<a href="DeleteBL?idbl=${BL.idbl}" onclick="return ConfirmDelete();" class="w3-button w3-green w3-margin-bottom btn1" style="text-decoration: none;border-radius:5px">Delete <i class="fas fa-trash-alt"></i></a>
	    	<form method="POST" action="${pageContext.request.contextPath}/EditBL">
	            
	            
				<input class="input-field2" type="hidden" name="idbl" placeholder="Mã Nhân Viên" value="${BL.idbl}">
	            <div class="input-container2">
		  			<i class="fa fa-key icon2"></i>
		  			<input class="input-field2" type="text" name="chamcong" placeholder="Chấm Công" value="${BL.chamcong}">
		  		</div>
		  		
		  		<div class="input-container2">
		  			<i class="fas fa-user-circle icon2"></i>
		  			<input class="input-field2" type="text" name="heso" placeholder="Hệ Số" value="${BL.heso}">
		  		</div>
		  		
		  		
			  		
		  		
		  		<input type="submit" class="bton" value="Sửa Thông tin">
	    	</form>
		</c:if>
	</div>
	<script>
		feather.replace()
	</script>
</body>
</html>