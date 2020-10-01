<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  	<button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  	<span class="w3-bar-item w3-right">Team4Restaurant</span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:290px;" id="mySidebar"><br>
  	
 	<div class="w3-container w3-row">
    	<div class="w3-col s4">
      		<a class="" onclick="openLink(event, 'user1')" Style="cursor: pointer;"><img src="img/admin.png" class="w3-cyan w3-margin-right" style="width:75px;border-radius: 50%;"></a>
    	</div>
    	<div class="w3-col s8 w3-bar">
      		<span>Xin Chào,<br> <strong>${user.name}</strong></span><br>
      		<a href="${pageContext.request.contextPath}" class="w3-bar-item w3-button" ><img src="icon/home-icon-silhouette.svg" style="width: 16px;height: 16px"></a>
      		<a href="${pageContext.request.contextPath}/homequanly" class="w3-bar-item w3-button tablink" onclick="openLink(event, 'user1')" data-toggle="tooltip" data-placement="bottom" title="Thông Tin"><img src="icon/dashboard.svg" style="width: 16px;height: 16px"></a>
      		<a href="${pageContext.request.contextPath}/logout" class="w3-bar-item w3-button" data-toggle="tooltip" data-placement="bottom" title="Sign-out"><img src="icon/logout.svg" style="width: 16px;height: 16px"></a>
    	</div>
    	<script>
			$(document).ready(function(){
	  			$('[data-toggle="tooltip"]').tooltip();   
			});
		</script>
  	</div>
  	<hr>
  	<div class="w3-container">
    	<h2 style="color:Blue">Menu</h2>
  	</div>
  	<div class="w3-bar-block">
    	<a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    	<a href="${pageContext.request.contextPath}/homequanly" class="w3-bar-item w3-button"  style="text-decoration: none;"><img src="icon/left-arrow-in-circular-button-black-symbol.svg" style="width: 26px;height: 26px"> Quay Lai</a>
    	<a href="${pageContext.request.contextPath}" class="w3-bar-item w3-button" style="text-decoration: none;"><img src="icon/dashboard.svg" style="width: 16px;height: 16px" > Trang Chủ</a>
   		<a href="${pageContext.request.contextPath}/logout" class="w3-bar-item w3-button" data-toggle="tooltip" data-placement="bottom" title="Sign-out"  style="text-decoration: none;"><img src="icon/logout.svg" style="width: 16px;height: 16px"> Đăng Xuất</a>
	  	<br><br>
  	</div>
</nav>
<script>
	function myFunction1(id) {
  		var x = document.getElementById(id);
 			if (x.className.indexOf("w3-show") == -1) {
   			x.className += " w3-show";
 			} else { 
   			x.className = x.className.replace(" w3-show", "");
 			}
	}
</script>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
