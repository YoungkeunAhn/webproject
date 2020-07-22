<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<!-- meta 태그 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
   
   	<!-- css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="${project}assets/css/manage.css">
    
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
	<title>관리자 메세지 보내기</title>
	
	<style>
		.overlay{
		height: 500px;
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/index.do">mod</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
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
	  
	  <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('${project}images/bg_3.jpg');" style="height:550px;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5" style="position: relative; bottom:11rem;">
            <h2 class="mb-3 bread">쪽지관리</h2>
            <p class="breadcrumbs"><span class="mr-2"><a href="${pageContext.request.contextPath}/index.do">Home > </a></span> <span>쪽지관리 > </span></p>
          </div>
        </div>
      </div>
    </section>
    
    	<article class="message_sendPage" style="z-index:10;">
		<section class="search_user">
			<form class="messageForm">
				<section class="search_user">
					<input class="form-control" type="search" id="searchUser" placeholder="유저닉네임을 입력하세요" autofocus>
				      <table id="mytable" class="table">
				      	<tr>
				      		<th>유저 검색</th>
				      	</tr>
				      </table>
				</section>
			</form>
		</section>
		<section class="send_user">			
		      <table id="sendtable" class="table">
		      	<tr>
		      		<th>보낼 유저 리스트</th>
		      	</tr>
		      </table>
		</section>	
		<section class="message_table">
			<form method="post" action="manage_send_messagePro.do">
				<ul>
					<li>
						<span>보낼 유저</span>
					</li>
					<li>
						<input id="sendUsers"class="form-control" type="text" name="message_users" readonly>
					</li>
					<li>
						<span>메세지</span>
					</li>
					<li>
						<textarea name="message_text" class="form-control"></textarea>
					</li>
					<li>
						<button class="btn btn-primary" type="submit">보내기</button>
					</li>
				</ul>
			</form>
		</section>
	</article>
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

<script type="text/javascript">
	//<!--
var users = document.getElementById('sendUsers');
var delText = '';
$(document).ready( function() {
	// 아이디 중복확인
	$('#searchUser').on('keyup',function(event) {
		$.ajax(
			{
				type : 'POST',
				url : 'idcheck.do',
				data : {
					searchUser : $('#searchUser').val()
				},
				dataType : 'text',
				async : false,
				success : function(data) {
					
					$('#mytable').empty();
					$('#mytable').append('<tr><th onclick="event.cancelBubble=true"><input type="checkbox" class="select_all"><th onclick="event.cancelBubble=true"><th>유저 ID</th></tr>');
					data = eval('(' + data +')');
					for(var i=0; i<data.usersDtos.length; i++){
						$('#mytable').append('<tr><th onclick="event.cancelBubble=true"><input type="checkbox" class="check" name="message_check" value="'+data.usersDtos[i].user_nickname+'"></th><th class="user">'+data.usersDtos[i].user_nickname+'</th></tr>');
					}
					//전체 선택
					$("#mytable > tr").on('click', function(event){
						var addText = $(this).find('.check').val() + ',';
						
						if(! users.value.includes(addText)){
							users.value = users.value + addText;
							$('#sendtable').append("<tr class='delUser'><th class='del'>" + $(this).find('.check').val() + "</th></tr>");
						} //if end
					});
					$(document).on('click','.delUser', function(){
						delText = $(this).find('.del').text() + ',';
						users.value = users.value.replace(delText,'');
						$(this).remove();
					});
					$(".select_all").on('click', function(event) {
						//클릭이 되었을 때
						if($(".select_all").prop("checked")){
							$(".check").prop("checked",true);
						}else{
							$(".check").prop("checked",false);
						}
					});
				},
				error : function(e){
					
				}
			}
		);
	});
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