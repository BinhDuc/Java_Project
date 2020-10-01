<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="mySidenav" class="sidenav">
	<a href="https://www.facebook.com/Team4Web-104373487737364" class="facebook-button animate " ><i data-feather="facebook"></i></a>
	<a href="mailto:binhduc1999@gmail.com?subject=feedback" class="mail-button animate "><img src="icon/gmail.svg" style="width: 31px;height: 31px"></a>
	<a onclick="topFunction()"  class="top-button animate"><img src="icon/top.svg" style="width: 31px;height: 31px"></a>
	<a class="open-button animate"  onclick="openForm()"><img src="icon/speech-bubble.svg" style="width: 31px;height: 31px"></a>
</div>
<div class="form-popup animates" id="myForm">
	<form method="POST" action="${pageContext.request.contextPath}/CreatePhanHoi" class="form-container">
		<h1>Phản Hồi</h1>
		
		<label for="Name"><b>Họ Tên</b></label>
		<input type="text" placeholder="Enter Name" name="tenkh" value="${PH.tenkh}">
		<label for="msg"><b>Message</b></label>
    	<textarea placeholder="Type message.." name="message" ></textarea>
		
		
		<input type="submit" class="btn" value="Gửi Phản Hồi">
		<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
	</form>
</div>

<script>
     function topFunction() {
         document.body.scrollTop =0;
         document.documentElement.scrollTop =0;
     }
</script>
<script>
	function openForm() {
	  document.getElementById("myForm").style.display = "block";
	}

	function closeForm() {
	  document.getElementById("myForm").style.display = "none";
	}
</script>
<script>
	feather.replace()
</script>