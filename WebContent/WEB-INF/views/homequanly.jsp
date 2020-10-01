<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
   
<!DOCTYPE html>
<html>
<head>
	<title>${user.name}</title>
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
  	<link rel="stylesheet" href="css/w3.css">
  	<link rel="stylesheet" href="css/quanly.css">
  	<script src="js/icon.js"></script>
  	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
  	
	<script>
		function exportTableToExcel(tableID, filename = ''){
		    var downloadLink;
		    var dataType = 'application/vnd.ms-excel';
		    var tableSelect = document.getElementById(tableID);
		    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
		    
		    // Specify file name
		    filename = filename?filename+'.xls':'excel_data.xls';
		    
		    // Create download link element
		    downloadLink = document.createElement("a");
		    
		    document.body.appendChild(downloadLink);
		    
		    if(navigator.msSaveOrOpenBlob){
		        var blob = new Blob(['\ufeff', tableHTML], {
		            type: dataType
		        });
		        navigator.msSaveOrOpenBlob( blob, filename);
		    }else{
		        // Create a link to the file
		        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
		    
		        // Setting the file name
		        downloadLink.download = filename;
		        
		        //triggering the function
		        downloadLink.click();
		    }
		}
	</script>
	
	
	<style>
		html,body,h1,h2,h3,h4,h5 {font-family: "Lora", sans-serif}
		
		* {box-sizing: border-box;}
		
	</style>
</head>
<body class="w3-light-grey">

	<!-- Top container -->
	<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
	  	<button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
	  	<span class="w3-bar-item w3-right">Team4Restaurant</span>
	  	
	</div>
	
	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
	  	<div class="w3-container w3-row">
	    	<div class="w3-col s4">
	      		<a class="" onclick="openLink(event, 'user1')" Style="cursor: pointer;"><img src="img/admin.png" class="w3-cyan w3-margin-right" style="width:75px;border-radius: 50%;"></a>
	    	</div>
	    	<div class="w3-col s8 w3-bar">
	      		<span>Xin Chào,<br> <strong>${user.name}</strong></span><br>
	      		<a href="${pageContext.request.contextPath}" class="w3-bar-item w3-button1" data-toggle="tooltip" data-placement="bottom" title="Quay Lại Trang Người Dùng"><img src="icon/home-icon-silhouette.svg" style="width: 16px;height: 16px"></a>
	      		<a href="${pageContext.request.contextPath}/homequanly" class="w3-bar-item w3-button1" data-toggle="tooltip" data-placement="bottom" title="Quản Lý"><img src="icon/dashboard.svg" style="width: 16px;height: 16px"></a>
	      		<a href="${pageContext.request.contextPath}/logout" class="w3-bar-item w3-button1" data-toggle="tooltip" data-placement="bottom" title="Sign-out"><img src="icon/logout.svg" style="width: 16px;height: 16px"></a>
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
	    	<button class="w3-bar-item w3-button1 tablink " onclick="openLink(event, 'quanly')"><img src="icon/dashboard.svg" style="width: 16px;height: 16px"> Trang Quản Lý</button>
	    	
					
	   		<button class="w3-bar-item w3-button tablink " onclick="openLink(event, 'thongtin')"><img src="icon/name.svg" style="width: 16px;height: 16px"> Thông Tin</button>
		 	
		 	
		 	<button class="w3-bar-item w3-button tablink " onclick="openLink(event, 'message')"><img src="icon/envelope.svg" style="width: 16px;height: 16px;"> Message</button>
		 	
		 	
		 	<button class="w3-bar-item w3-button tablink " onclick="openLink(event, 'datban')"><img src="icon/elearning.svg" style="width: 16px;height: 16px"> Danh Sách Đặt Bàn</button>
		
		
	   		<button onclick="myFunction('user')" class="w3-button1 w3-block w3-left-align ">Quản Lý Nhân Viên <img src="icon/sort-down.svg" style="width: 13px;height: 13px"></button>
	   		<div id="user" class="w3-hide w3-animate-zoom w3-margin-left">
				
			 	<button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'nhanvien')"><img src="icon/multiple-users-silhouette.svg" style="width: 16px;height: 16px"> Danh Sách Nhân Viên</button>
			 	<button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'bangluong')"><img src="icon/name.svg" style="width: 16px;height: 16px"> Bảng Lương</button>
			</div>
			
			
			<button onclick="myFunction('kho')" class="w3-button1 w3-block w3-left-align">Quản Lý Thực Đơn <img src="icon/sort-down.svg" style="width: 13px;height: 13px"></button>
	   		<div id="kho" class="w3-hide w3-animate-zoom w3-margin-left">		 	
			 	<button class="w3-bar-item w3-button tablink " onclick="openLink(event, 'thucdon')"><img src="icon/restaurant-cutlery-circular-symbol-of-a-spoon-and-a-fork-in-a-circle.svg" style="width: 16px;height: 16px"> Danh Sách Món Ăn</button>
			 	<button class="w3-bar-item w3-button tablink " onclick="openLink(event, 'buffet')"><img src="icon/buffet.svg" style="width: 16px;height: 16px"> Suất Buffet</button>
			</div>
			
			
			<a href="${pageContext.request.contextPath}/logout" class="w3-bar-item w3-button1" data-toggle="tooltip" data-placement="bottom" title="Sign-out"  style="text-decoration: none;"><img src="icon/logout.svg" style="width: 16px;height: 16px"> Đăng Xuất</a>
		  	<br><br>
	  	</div>
	</nav>
	<script>
		function myFunction(id) {
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
	
	
	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left:300px;margin-top:47px;">

	  	<div id="quanly" class="city" style="display:block">
		  	<div class="w3-row-padding w3-margin-bottom w3-margin-top" style="font-family:Raleway;">
		    	<div class="w3-quarter">
		      		<div class="w3-container w3-red w3-padding-16">
		        		<div class="w3-left"><i data-feather="message-square" style="width: 36px;height: 36px;"></i></div>
		        		<div class="w3-right">
		          			<span class="counter-value" id="ph"></span>
		        		</div>
		        		<div class="w3-clear"></div>
		        		<h4>Messages</h4>
		      		</div>
		    	</div>
		    	<div class="w3-quarter">
		      		<div class="w3-container w3-blue w3-padding-16">
		        		<div class="w3-left"><i data-feather="coffee" style="width: 36px;height: 36px;"></i></div>
		        		<div class="w3-right">
		          			<span class="counter-value" id="ma"></span>
		        		</div>
		        		<div class="w3-clear"></div>
		        		<h4>Tổng Số Món Ăn</h4>
		      		</div>
		    	</div>
		    	<div class="w3-quarter">
		      		<div class="w3-container w3-teal w3-padding-16">
		        		<div class="w3-left"><i data-feather="airplay" style="width: 36px;height: 36px;"></i></div>
		        		<div class="w3-right">
		          			<span class="counter-value" id="db"></span>
		        		</div>
		        		<div class="w3-clear"></div>
		        		<h4>Đặt Bàn</h4>
		      		</div>
		    	</div>
		    	<div class="w3-quarter">
		      		<div class="w3-container w3-orange w3-text-white w3-padding-16">
		        		<div class="w3-left"><i data-feather="users" style="width: 36px;height: 36px;"></i></div>
		        		<div class="w3-right">
		          			<span class="counter-value" id="nv"></span>
		        		</div>
		        		<div class="w3-clear" ></div>
		        		<h4>Nhân Viên </h4>
		      		</div>
		    	</div>
		  	</div>
		  	
		  	
	<!-- ----------------------------------Biểu Đồ------------------------------------------------------------------------ -->
	
	
		  	
			<script>
				window.onload = function () {
					var revenueColumnChart = new CanvasJS.Chart("revenue-column-chart", {
						animationEnabled: true,
						backgroundColor: "transparent",
						theme: "theme2",
						axisX: {
							labelFontSize: 14,
							valueFormatString: "DDD MMM"
						},
						axisY: {
							labelFontSize: 14,
							
						},
						toolTip: {
							borderThickness: 0,
							cornerRadius: 0
						},
						data: [
							{
								type: "column",
								yValueFormatString: "###,###.##",
								dataPoints: [
									{ x: new Date("1 Jan 2020"), y: 2 },
									{ x: new Date("1 Feb 2020"), y: 4 },
									{ x: new Date("1 Mar 2020"), y: 5 },
									{ x: new Date("1 Apr 2020"), y: 10 },
									{ x: new Date("1 May 2020"), y: 50 },
									{ x: new Date("1 Jun 2020"), y: 38 },
									{ x: new Date("1 Jul 2020"), y: 22 },
									{ x: new Date("1 Aug 2020"), y: 11 },
									{ x: new Date("1 Sep 2020"), y: 40 },
									{ x: new Date("1 Oct 2020"), y: 22 },
									{ x: new Date("1 Nov 2020"), y: 33 },
									{ x: new Date("1 Dec 2020"), y: 11 }
								]
							}
						]
					});
					
					revenueColumnChart.render();
				}
			</script>
			<script src="js/canvasjs.min.js"></script>
			<div class="w3-container w3-card w3-white w3-margin">
				<h2 class="text-center">Biểu Đồ Đặt Bàn</h2>
				<div id="revenue-column-chart" class=" w3-white w3-margin" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
			</div>
		</div>


<!----------------------------------------------------- Thông Tin Đăng Nhập------------------------------------------------------------------>	
	  	
		<div id='thongtin' class="w3-container city w3-animate-zoom " style="display:none">
			<div class="w3-padding-16 text-center" style="line-height: 10px;"><h2>Thông tin cá nhân</h2><br><p class="w3-text-grey">Thông tin cơ bản, như tên và chức vụ của bạn, mà bạn sử dụng.</p> </div>
			
			<div class="w3-container w3-card w3-white w3-margin-bottom">
				<h3 class="w3-padding-16">Hồ Sơ</h3>
			
				<div class="w3-container tablelink">
					<a href="EditUser?userName=${user.userName}">
		         		<div class="row btedit w3-hover-light-grey">
		         			<div class="col-sm-4">Họ Và Tên:</div>
		         			<div class="col-sm-7">${user.name}</div>
		         			<div class="col-sm-1 w3-text-grey"><i class="fas fa-angle-right"></i></div>
		         		</div>
		         		
	         		</a>
	         		
	         	</div>
	         	<div class="w3-container tablelink">
		         	<a href="EditUser?userName=${user.userName}">
		         		<div class="row btedit w3-hover-light-grey">
		         			<div class="col-sm-4">Ngày Sinh:</div>
		         			<div class="col-sm-7">${user.birthday}</div>
		         			<div class="col-sm-1 w3-text-grey"><i class="fas fa-angle-right"></i></div>
		         		</div>
		         		
	         		</a>
	         		
	         	</div>
	         	<div class="w3-container tablelink">
		         	<a href="EditUser?userName=${user.userName}">
		         		<div class="row btedit w3-hover-light-grey">
		         			<div class="col-sm-4">Giới Tính:</div>
		         			<div class="col-sm-7">${user.gender}</div>
		         			<div class="col-sm-1 w3-text-grey"><i class="fas fa-angle-right"></i></div>
		         		</div>
		         		
	         		</a>
	         		
	         	</div>
	         	
	         	<div class="w3-container tablelink">
		         	<a href="EditUser?userName=${user.userName}">
		         		<div class="row btedit w3-hover-light-grey">
		         			<div class="col-sm-4">Chức Vụ:</div>
		         			<div class="col-sm-7">${user.position}</div>
		         			<div class="col-sm-1 w3-text-grey"><i class="fas fa-angle-right"></i></div>
		         		</div>
		         		
	         		</a>
	         		
	         	</div>
			    
			    <div class="w3-container tablelink" >
			    	<a href="EditUser?userName=${user.userName}">
		         		<div class="row btedit1 w3-hover-light-grey">
		         			<div class="col-sm-4">User Name:</div>
		         			<div class="col-sm-7">${user.userName}</div>
		         			<div class="col-sm-1 w3-text-grey"><i class="fas fa-angle-right"></i></div>
		         		</div>
		         		
	         		</a>
	         		<br>
	         	</div>
			</div>
			<div class="w3-container w3-card w3-white w3-margin-bottom w3-margin-top">
				<h3 class="w3-padding-16">Thông tin liên hệ</h3>
				<div class="w3-container tablelink" >
					<a href="EditUser?userName=${user.userName}">
		         		<div class="row btedit w3-hover-light-grey">
		         			<div class="col-sm-4">Địa Chỉ:</div>
		         			 <div class="col-sm-7">${user.address}</div>
		         			 <div class="col-sm-1 w3-text-grey"><i class="fas fa-angle-right"></i></div> 
		         		</div>
		         		
	         		</a>
	         		
	         	</div>
	         	
	         	<div class="w3-container  tablelink" >
	         		<a href="EditUser?userName=${user.userName}">
		         		<div class="row btedit1 w3-hover-light-grey">
		         			<div class="col-sm-4">Số Điện Thoại:</div>
		         			<div class="col-sm-7">${user.phoneNumber}</div>
		         			<div class="col-sm-1 w3-text-grey"><i class="fas fa-angle-right"></i></div>
		         		</div>
		         		
	         		</a>
	         		<br>
	         	</div>
	         	 
	         	 
			</div>
		    
		   
		</div>


	  	

<!----------------------------------------------------- Danh Sách Phản Hồi------------------------------------------------------------------>	
		
		<div id='message' class="w3-container city w3-animate-zoom" style="display:none">
		    <h2>Phản Hồi</h2>
		    
		    <p style="color: red;">${errorString}</p>
		    
		    <button onclick="exportTableToExcel('myTablePH', 'Danh Sách Phản Hồi')" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Xuất Excel</button>
		    <div class="input-container">
		    	
		    	<i class="fas fa-search icon"></i>
		 		<input type="text" id="myInputPH" onkeyup="myFunctionph()" placeholder="Tìm Kiếm Theo Họ Tên...">
		 		
		 	</div>
		 	
		    <table class="w3-table-all w3-hoverable w3-centered tablelink" id="myTablePH" >
		    	<thead>
			       <tr class="w3-green">
			          <th>ID</th>
			          <th>Tên</th>
			          <th>Message</th>
     
			       </tr>
		       </thead>
		       <c:forEach items="${listPH}" var="listPH" >   
     				<tr>
	             		<td><a href="DeletePhanHoi?idphanhoi=${listPH.idphanhoi}" onclick="return ConfirmDelete();"><c:out value="${listPH.idphanhoi}"/></a></td>
	             		<td><a href="DeletePhanHoi?idphanhoi=${listPH.idphanhoi}" onclick="return ConfirmDelete();"><c:out value="${listPH.tenkh}"/></a></td>
	             		<td><a href="DeletePhanHoi?idphanhoi=${listPH.idphanhoi}" onclick="return ConfirmDelete();"><c:out value="${listPH.message}"/></a></td>	             
	          		</tr>     
		       </c:forEach>
		    </table>
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
		 	
		    
		</div>
		<!-- js tim kiem phan hoi theo ten  -->
		<script>
			function myFunctionph() {
			  
			  var input, filter, table, tr, td, i, txtValue;
			  input = document.getElementById("myInputPH");
			  filter = input.value.toUpperCase();
			  table = document.getElementById("myTablePH");
			  tr = table.getElementsByTagName("tr");
			
			  // tìm tên ở cột 0
			  for (i = 0; i < tr.length; i++) {
			    td = tr[i].getElementsByTagName("td")[1];
			    if (td) {
			      txtValue = td.textContent || td.innerText;
			      if (txtValue.toUpperCase().indexOf(filter) > -1) {
			        tr[i].style.display = "";
			      } else {
			        tr[i].style.display = "none";
			      }
			    }
			  }
			}
		</script>
		<script>
		  	var x = document.getElementById("myTablePH").rows.length -1;
		  	document.getElementById("ph").innerHTML =  x ;
		</script>
		
	
		
		  	
	  	
<!----------------------------------------------------- Danh Sách Đặt Bàn------------------------------------------------------------------>

	  	
	  	<div id='datban' class="w3-container city w3-animate-zoom" style="display:none">
		    <h2>Danh Sách Đặt Bàn</h2>
	 	
		    <p style="color: red;">${errorString}</p>
		    <button onclick="exportTableToExcel('myTable3', 'Danh Sách Đặt Bàn')" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Xuất Excel</button>
		    
		    <div class="input-container">
		    	<i class="fas fa-search icon"></i>
		 		<input type="text" id="myInput3" onkeyup="myFunction3()" placeholder="Tìm Kiếm Theo Ngày...">
		 	</div>
		    <table class="w3-table-all w3-hoverable w3-centered tablelink" id="myTable3" >
		    	<thead>
			       <tr class="w3-green">
			          <th>ID</th>
			          <th>Họ Tên Khách Hàng</th>
			          <th>Số Điện Thoại Khách Hàng</th>
			          <th>Số Người</th>
			          <th>Thời Gian(Y:M:D)</th>
			          <th>Ghi Chú</th>
			          
			       </tr>
		       </thead>
		       <c:forEach items="${listTB}" var="listTB" >
		          <tr>
		             <td><a href="EditBookTable?bookId=${listTB.bookId}"><c:out value="${listTB.bookId}"/></a></td>
		             <td><a href="EditBookTable?bookId=${listTB.bookId}"><c:out value="${listTB.nameCtm}"/></a></td>
		             <td><a href="EditBookTable?bookId=${listTB.bookId}"><c:out value="${listTB.phoneCtm}"/></a></td>
		             <td><a href="EditBookTable?bookId=${listTB.bookId}"><c:out value="${listTB.number}"/></a></td>
		             <td><a href="EditBookTable?bookId=${listTB.bookId}"><c:out value="${listTB.time}"/></a></td>
		             <td><a href="EditBookTable?bookId=${listTB.bookId}"><c:out value="${listTB.note}"/></a></td>
		             
		          </tr>
		       </c:forEach>
		    </table>
		    <!-- js tìm kiếm đặt bàn -->
		    <script>
				function myFunction3() {
				  // Declare variables
				  var input, filter, table, tr, td, i, txtValue;
				  input = document.getElementById("myInput3");
				  filter = input.value.toUpperCase();
				  table = document.getElementById("myTable3");
				  tr = table.getElementsByTagName("tr");
				
				  // Loop through all table rows, and hide those who don't match the search query
				  for (i = 0; i < tr.length; i++) {
				    td = tr[i].getElementsByTagName("td")[4];
				    if (td) {
				      txtValue = td.textContent || td.innerText;
				      if (txtValue.toUpperCase().indexOf(filter) > -1) {
				        tr[i].style.display = "";
				      } else {
				        tr[i].style.display = "none";
				      }
				    }
				  }
				}
			</script>
			<script>
			  var x = document.getElementById("myTable3").rows.length -1;
			  document.getElementById("db").innerHTML =  x ;
			</script>
		</div>
		





	
		
	
<!----------------------------------------------------- Danh Sách Nhân Viên------------------------------------------------------------------>	
		
		<div id='nhanvien' class="w3-container city w3-animate-zoom" style="display:none">
		    <h2>Danh Sách Nhân Viên</h2>
		    
		    <p style="color: red;">${errorString}</p>
		    <a href="CreateUser" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Thêm Nhân Viên</a>
		    <button onclick="exportTableToExcel('myTable1', 'Danh Sách Nhân Viên')" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Xuất Excel</button>
		    <div class="input-container">
		    	
		    	<i class="fas fa-search icon"></i>
		 		<input type="text" id="myInput" onkeyup="myFunction1()" placeholder="Tìm Kiếm Theo Họ Tên...">
		 		
		 	</div>
		 	
		    <table class="w3-table-all w3-hoverable w3-centered tablelink" id="myTable1" >
		    	<thead>
			       	<tr class="w3-green">
			       		<th>Mã Nhân Viên</th>
			          	<th>Họ Tên</th>
			          	<th>Ngày Sinh</th>
			          	<th>Giới Tính</th>
			          	<th>Địa Chỉ</th>
			          	<th>Số Điện Thoại</th>
			          	<th>Chức Vụ</th>
			          
			       	</tr>
		       </thead>
		       <c:forEach items="${list}" var="list" >   
			          <tr>
		          		<td><a href="EditUser?userName=${list.userName}"><c:out value="${list.userName}"/></a></td>
			             <td><a href="EditUser?userName=${list.userName}"><c:out value="${list.name}"/></a></td>
			             <td><a href="EditUser?userName=${list.userName}"><c:out value="${list.birthday}"/></a></td>
			             <td><a href="EditUser?userName=${list.userName}"><c:out value="${list.gender}"/></a></td>
			             <td><a href="EditUser?userName=${list.userName}"><c:out value="${list.address}"/></a></td>
			             <td><a href="EditUser?userName=${list.userName}"><c:out value="${list.phoneNumber}"/></a></td>
			             <td><a href="EditUser?userName=${list.userName}"><c:out value="${list.position}"/></a></td>
			             
			          </tr>     
		       </c:forEach>
		    </table>		 	
		 	<hr>
		    
		</div>
		<!-- js tim kiem user theo ten  -->
		<script>
			function myFunction1() {
			  
			  var input, filter, table, tr, td, i, txtValue;
			  input = document.getElementById("myInput");
			  filter = input.value.toUpperCase();
			  table = document.getElementById("myTable1");
			  tr = table.getElementsByTagName("tr");
			
			  // tìm tên ở cột 0
			  for (i = 0; i < tr.length; i++) {
			    td = tr[i].getElementsByTagName("td")[1];
			    if (td) {
			      txtValue = td.textContent || td.innerText;
			      if (txtValue.toUpperCase().indexOf(filter) > -1) {
			        tr[i].style.display = "";
			      } else {
			        tr[i].style.display = "none";
			      }
			    }
			  }
			}
		</script>
		<script>
		  var x = document.getElementById("myTable1").rows.length -1;
		  document.getElementById("nv").innerHTML =  x ;
		</script>
		
	

<!----------------------------------------------------- Danh Sách Nhân Viên------------------------------------------------------------------>	
		
		<div id='bangluong' class="w3-container city w3-animate-zoom" style="display:none">
		    <h2>Bảng Lương Nhân Viên</h2>
		    
		    <p style="color: red;">${errorString}</p>
		    <a href="CreateBL" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Thêm Lương Nhân Viên</a>
		    <button onclick="exportTableToExcel('myTableBL', 'Bảng Lương Nhân Viên')" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Xuất Excel</button>
		    <div class="input-container">
		    	
		    	<i class="fas fa-search icon"></i>
		 		<input type="text" id="myInputBL" onkeyup="myFunctionBL()" placeholder="Tìm Kiếm Theo Họ Tên...">
		 		
		 	</div>
		 	
		    <table class="w3-table-all w3-hoverable w3-centered tablelink" id="myTableBL" >
		    	<thead>
			       <tr class="w3-green">
			          <th>Mã Nhân Viên</th>
			          <th>Họ Tên</th>
			          <th>Chấm Công</th>
			          <th>Hệ Số</th>
			          <th>Lương</th>
			       </tr>
		       </thead>
		       <c:forEach items="${listBl}" var="listBl" >   
			          <tr>
			             <td><a href="EditBL?idbl=${listBl.idbl}"><c:out value="${listBl.idbl}"/></a></td>
			             <td><a href="EditBL?idbl=${listBl.idbl}"><c:out value="${listBl.name}"/></a></td>
			             <td><a href="EditBL?idbl=${listBl.idbl}"><c:out value="${listBl.chamcong}"/></a></td>
			             <td><a href="EditBL?idbl=${listBl.idbl}"><c:out value="${listBl.heso}"/></a></td>
			             <td><a href="EditBL?idbl=${listBl.idbl}"><c:out value="${listBl.chamcong*listBl.heso*20000}"/></a></td>
			             
			             
			          </tr>     
		       </c:forEach>
		    </table>		 	
		 	<hr>
		    
		</div>
		<!-- js tim kiem user theo ten  -->
		<script>
			function myFunctionBL() {
			  
			  var input, filter, table, tr, td, i, txtValue;
			  input = document.getElementById("myInputBL");
			  filter = input.value.toUpperCase();
			  table = document.getElementById("myTableBL");
			  tr = table.getElementsByTagName("tr");
			
			  // tìm tên ở cột 0
			  for (i = 0; i < tr.length; i++) {
			    td = tr[i].getElementsByTagName("td")[1];
			    if (td) {
			      txtValue = td.textContent || td.innerText;
			      if (txtValue.toUpperCase().indexOf(filter) > -1) {
			        tr[i].style.display = "";
			      } else {
			        tr[i].style.display = "none";
			      }
			    }
			  }
			}
		</script>
		
		
		
		
	
<!----------------------------------------------------- Danh Sách Món Ăn------------------------------------------------------------------>		
		
		<div id='thucdon' class="w3-container city w3-animate-zoom" style="display:none">
		    <h2>Danh Sách Món Ăn</h2>
	 	
		    <p style="color: red;">${errorString}</p>
		    <a href="CreateFood" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Thêm Món Ăn</a>
		    <button onclick="exportTableToExcel('myTable2', 'Danh Sách Món Ăn')" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Xuất Excel</button>
		    <div class="input-container">
		    	<i class="fas fa-search icon"></i>
		 		<input type="text" id="myInput2" onkeyup="myFunction2()" placeholder="Tìm Kiếm Theo Tên Món Ăn...">
		 	</div>
		    <table class="w3-table-all w3-hoverable w3-centered tablelink" id="myTable2" >
		    	<thead>
			       <tr class="w3-green">
			          <th>ID</th>
			          <th>Tên Món Ăn</th>
			          <th>Số Lượng</th>
			          <th>Giá Tiền</th>
			          <th>Ghi Chú</th>
			          
			       </tr>
		       </thead>
		       <c:forEach items="${listF}" var="listF" >
		          <tr>
		             <td><a href="EditFood?foodId=${listF.foodId}"><c:out value="${listF.foodId}"/></a></td>
		             <td><a href="EditFood?foodId=${listF.foodId}"><c:out value="${listF.tenmon}"/></a></td>
		             <td><a href="EditFood?foodId=${listF.foodId}"><c:out value="${listF.soluong}"/></a></td>
		             <td><a href="EditFood?foodId=${listF.foodId}"><c:out value="${listF.giatien}"/></a></td>
		             <td><a href="EditFood?foodId=${listF.foodId}"><c:out value="${listF.note}"/></a></td>
		             
		          </tr>
		       </c:forEach>
		    </table>
		    <hr>
		    
		</div>
		 
		<!-- js tìm kiếm món ăn -->
		<script>
			function myFunction2() {
			 
			  var input, filter, table, tr, td, i, txtValue;
			  input = document.getElementById("myInput2");
			  filter = input.value.toUpperCase();
			  table = document.getElementById("myTable2");
			  tr = table.getElementsByTagName("tr");
			
			  // tìm món ăn ở cột tên món ăn (cột 1)
			  for (i = 0; i < tr.length; i++) {
			    td = tr[i].getElementsByTagName("td")[1];
			    if (td) {
			      txtValue = td.textContent || td.innerText;
			      if (txtValue.toUpperCase().indexOf(filter) > -1) {
			        tr[i].style.display = "";
			      } else {
			        tr[i].style.display = "none";
			      }
			    }
			  }
			}
		</script>
		<script>
		  var x = document.getElementById("myTable2").rows.length -1;
		  document.getElementById("ma").innerHTML =  x ;
		</script>
		
		
<!----------------------------------------------------- Danh Sách BUFFET------------------------------------------------------------------>		
		
		<div id='buffet' class="w3-container city w3-animate-zoom" style="display:none">
			<a href="CreateBuffet " class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Thêm Suất Buffet</a>
			<button onclick="exportTableToExcel('myTableBF', 'Danh Sách Suất Buffet')" class="w3-button1 w3-green w3-margin-bottom btn1" style="text-decoration: none;">Xuất Excel</button>
			<table class="w3-table-all w3-hoverable w3-centered tablelink" id="myTableBF"> 
              	<thead>
                		<tr class="w3-green">
                  		<th>ID</th>
                  		<th>Suất buffet</th>
                  		<th>Giá(VND)</th>
                  		<th>Ghi Chú</th>
                	</tr>
              	</thead>
              	
              	<c:forEach items="${listBF}" var="listBF" >
		          	<tr>
		          		<td><a href="EditBuffet?buffetId=${listBF.buffetId}"><c:out value="${listBF.buffetId}"/></a></td>	
		          		<td><a href="EditBuffet?buffetId=${listBF.buffetId}">Buffet <b><c:out value="${listBF.ten}"/></b>đ</a></td>
		             	<td><a href="EditBuffet?buffetId=${listBF.buffetId}"><c:out value="${listBF.gia}"/></a></td>
		             	<td><a href="EditBuffet?buffetId=${listBF.buffetId}"><c:out value="${listBF.note}"/></a></td>   	
		          	</tr>      	
		       	</c:forEach>
	    	</table>
		</div>
	  		
		
		
<!-------------------------- js cho các số chạy từ 0 -------------------------------------------------------------------------->
	  	
	  	<script>
	   		$(document).ready(function(){
	   			$('.counter-value').each(function () {
	   				$(this).prop('Counter',0).animate({
	   					Counter: $(this).text()
	   				}, {
	   					duration: 2000,
	   					easing: 'swing',
	   					step: function (now) {
	   						$(this).text(Math.ceil(now));
	   					}
	   				});
	   			});
	
	   		});
	   	</script>
	  
	</div>
	
	
	
	
<!-- --------------------------------------js tab menu------------------------------------------------------------------- -->	
	
	<script>
		function openLink(evt, animName) {
		  	var i, x, tablinks;
		  	x = document.getElementsByClassName("city");
		  	for (i = 0; i < x.length; i++) {
		    	x[i].style.display = "none";
		  	}
		  	tablinks = document.getElementsByClassName("tablink");
		  	for (i = 0; i < x.length; i++) {
		    	tablinks[i].className = tablinks[i].className.replace(" w3-white", "");
		  	}
		  	document.getElementById(animName).style.display = "block";
		  	evt.currentTarget.className += " w3-white";
		}
	</script>
	
<!-- js thay đổi thanh menu khi thay đổi kích thước màn hình------------------------------------------------------------- -->	
	<script>
		// Get the Sidebar
		var mySidebar = document.getElementById("mySidebar");
		
		// Get the DIV with overlay effect
		var overlayBg = document.getElementById("myOverlay");
		
		// Toggle between showing and hiding the sidebar, and add overlay effect
		function w3_open() {
		  	if (mySidebar.style.display === 'block') {
		    	mySidebar.style.display = 'none';
		    	overlayBg.style.display = "none";
		  	} else {
		    	mySidebar.style.display = 'block';
		    	overlayBg.style.display = "block";
		  	}
		}
		
		// Close the sidebar with the close button
		function w3_close() {
		  	mySidebar.style.display = "none";
		  	overlayBg.style.display = "none";
		}
	</script>
	
	<script>
		feather.replace()
	</script>
</body>
</html>