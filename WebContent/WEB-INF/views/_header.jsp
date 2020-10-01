<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="logo">
	<a href="" style="font-size: 13px;color:#ddd;margin-left: 35px"><i data-feather="phone-call" style="width: 24px;height: 24px;margin-right: 8px">  </i>     (+84) 374994941</a>
	<a href="mailto:binhduc1999@gmail.com?subject=feedback" style="font-size: 13px;color:#ddd;margin-left: 35px"><i data-feather="send" style="width: 24px;height: 24px;margin-right: 8px">  </i>     team4web@gmail.com</a>
	<div class="logo-centered">
		<a href="${pageContext.request.contextPath}" style="font-family: Alex Brush" id="logo"><b>Team4<br>Restaurant</b></a>
	</div>
	<div class="logo-right animate-zoom3">
		<a href="${pageContext.request.contextPath}/homequanly" data-toggle="tooltip" data-placement="bottom" title="Đăng Nhập" id="login"><i data-feather="log-in"></i></a>
	</div>
</div>
<script>
	$(document).ready(function(){
 			$('[data-toggle="tooltip"]').tooltip();   
	});
</script>
