<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ include file="pages/manager_settings.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- meta 태그 -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- css -->
  	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  	<link rel="stylesheet" href="${project}assets/css/manage.css">
  	
  	
  	<!-- 디자인 css -->
  	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Barlow+Condensed:900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${project}assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${project}assets/css/animate.css">
    
    <link rel="stylesheet" href="${project}assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${project}assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${project}assets/css/magnific-popup.css">

    <link rel="stylesheet" href="${project}assets/css/aos.css">

    <link rel="stylesheet" href="${project}assets/css/ionicons.min.css">

    <link rel="stylesheet" href="${project}assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${project}assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${project}assets/css/flaticon.css">
    <link rel="stylesheet" href="${project}assets/css/icomoon.css">
    <link rel="stylesheet" href="${project}assets/css/style.css">
  	
  	<!-- js -->
  	<script src="${project}assets/js/script.js"></script>
  	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$('.modal').click(function(){
            	$('.modal').css('display','none');
            });
		});
	
	</script>
  <title>관리자 메인 페이지</title>
</head>

<body>
	<input type="hidden" id='id' value="${sessionScope.memId}">

  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/index.do">MOD</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu">Menu</span> 
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_category.do" class="nav-link">${str_category}</a></li>
	        	<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_mission.do" class="nav-link">${str_mission}</a></li>
	          	<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_content.do" class="nav-link">${str_board}</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_user.do" class="nav-link">${str_user}</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_report.do" class="nav-link">${str_report}</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_message.do" class="nav-link">${str_message}</a></li>
				
				<!-- super 관리자 아이디 확인 -->
				<c:set var="super_id" value="super"/>
				<c:if test="${sessionScope.memId eq super_id}">
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_manager.do" class="nav-link">관리페이지</a></li>
				</c:if>
				
				<!-- 로그인 안되어있으면 로그인 버튼 생성 -->
				<c:if test="${sessionScope.memId eq null or sessionScope.memId eq ''}">
				<li class="nav-item" onclick='document.getElementById("myModal").style.display="block"'>
					<a class="nav-link">${str_header_login}</a></li>
				</c:if>
				
				<!-- 로그인 되어있으면 로그아웃 버튼 생성 -->
				<c:if test="${sessionScope.memId ne null and !sessionScope.memId ne ''}">
				<li class="nav-item"><a href="logout.do" class="nav-link">${str_header_logout}</a></li>
				</c:if>
				
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
	    
    <section id="home-section" class="hero">
    	<h1 class="vr text-center">MOD</h1>
		  <div class="js-fullheight home-wrap d-flex">
		  	<div class="half order-md-last" style="background-image:url(${project}images/bg_333.gif);"></div>
		  	<div class="half">
			  	<div class="home-slider owl-carousel">
			      <div class="slider-item js-fullheight">
			      	<div class="overlay"></div>
			        <div class="container-fluid p-0">
			          <div class="row d-md-flex no-gutters slider-text js-fullheight align-items-center justify-content-end" data-scrollax-parent="true">
			          	<div class="one-third img js-fullheight">
			          	</div>
			        	</div>
			        </div>
			      </div>
			    </div>
			  </div>
	    </div>
    </section>
  
	 <footer class="ftco-footer ftco-section" style="padding:50px 0;">
      <div class="container">
        
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
 			 Copyright &copy; 2020 All rights reserved | SimpleFun | Web Project</a>
 			</p>
          </div>
        </div>
      </div>
    </footer>  
  
  
<div id="myModal" class="modal">
  <div class="modal-content" onclick="event.cancelBubble=true">
    <span class="close" onclick='document.getElementById("myModal").style.display="none"'>&times;</span>
    <form class="loginModal" name="loginform" action="${pageContext.request.contextPath}/manage_loginPro.do" onsubmit="return logincheck()">
      <ul>
        <li><i class="fas fa-user-circle"></i></li>
        <li><span class="title">${str_managerlogin}</span></li>
        <li><input type="text" name="manager_id" placeholder="아이디" autofocus></li>
        <li><input type="password" name="manager_passwd" placeholder="비밀번호"></li>
        <li><button class="btn btn-primary" type="submit">${str_header_login}</button></li>
      </ul>
    </form>
  </div>
</div>
<script type="text/javascript">
	//<!--
		$(document).ready(function() {
			if($('#id').val()){
				if($('#id').val() == "admin") {
					document.getElementById("super").style.display="block";
				}
				document.getElementById("myBtn").style.display="none";
			} 
		});
	//-->
</script>

<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${project}assets/js/jquery.min.js"></script>
  <script src="${project}assets/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${project}assets/js/popper.min.js"></script>
  <script src="${project}assets/js/bootstrap.min.js"></script>
  <script src="${project}assets/js/jquery.easing.1.3.js"></script>
  <script src="${project}assets/js/jquery.waypoints.min.js"></script>
  <script src="${project}assets/js/jquery.stellar.min.js"></script>
  <script src="${project}assets/js/owl.carousel.min.js"></script>
  <script src="${project}assets/js/jquery.magnific-popup.min.js"></script>
  <script src="${project}assets/js/aos.js"></script>
  <script src="${project}assets/js/jquery.animateNumber.min.js"></script>
  <script src="${project}assets/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${project}assets/js/google-map.js"></script>
  <script src="${project}assets/js/main.js"></script>
  
</body>
</html>