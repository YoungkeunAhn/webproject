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
  	<link rel="stylesheet" href="${project}assets/manage.css">
	<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap&subset=korean" rel="stylesheet">

  	<script src="${project}assets/script.js"></script>
  	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <title>관리자 메인 페이지</title>
</head>

<body id="test">
<div class="container">
	<nav>

		<label onclick="location.href='${pageContext.request.contextPath}/index.do'">MOD</label>
		<div id="menu" class="btn-menu">
			<i class="fas fa-bars"></i>
			<span>MENU</span>
		</div>
		<ul class="nav-items">
			<li><a href="${pageContext.request.contextPath}/manage_category.do">${str_category}</a></li>
			<li><a href="${pageContext.request.contextPath}/manage_mission.do">${str_mission}</a></li>
			<li><a href="${pageContext.request.contextPath}/manage_content.do">${str_board}</a></li>
			<li><a href="${pageContext.request.contextPath}/manage_user.do">${str_user}</a></li>
			<li><a href="${pageContext.request.contextPath}/manage_report.do">${str_report}</a></li>
			<li><a href="${pageContext.request.contextPath}/manage_message.do">${str_message}</a></li>

			<!-- super 관리자 아이디 확인 -->
			<c:set var="super_id" value="super"/>
			<c:if test="${sessionScope.memId eq super_id}">
				<li><a href="${pageContext.request.contextPath}/manage_manager.do">관리페이지</a></li>
			</c:if>

			<!-- 로그인 안되어있으면 로그인 버튼 생성 -->
			<c:if test="${sessionScope.memId eq null or sessionScope.memId eq ''}">
				<li class="btn-login" style="cursor: pointer;">
					<a>${str_header_login}</a></li>
			</c:if>

			<!-- 로그인 되어있으면 로그아웃 버튼 생성 -->
			<c:if test="${sessionScope.memId ne null and !sessionScope.memId ne ''}">
				<li><a href="logout.do">${str_header_logout}</a></li>
			</c:if>
		</ul>
	</nav>
	<article>
		<input type="hidden" id='id' value="${sessionScope.memId}">
		<section class="under_text">MOD</section>
	</article>
	<footer>@copyright All rights reserved | MissionOrDare | Simplefun | webProject</footer>
</div>


<div id="mobal-bg" class="modal-bg hidden">
	<div class="index-modal-content" onclick="event.cancelBubble=true">
		<span class="close">&times;</span>
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

<script>
	//<!--
	const menu = document.getElementById('menu');
	const navItems = document.querySelector('.nav-items');
	const loginBtn = document.querySelector('.btn-login');
	const modalBg = document.getElementById('mobal-bg');
	const closeBtn = document.querySelector('.close');

	function toggleNav(){
		navItems.classList.toggle('slideDown');
	}

	function openModal(){
		modalBg.classList.remove('hidden');
	}

	function closeModal(){
		modalBg.classList.add('hidden');
	}

	menu.addEventListener('click',toggleNav,false);
	loginBtn.addEventListener('click',openModal,false);
	modalBg.addEventListener('click',closeModal,false);
	closeBtn.addEventListener('click',closeModal,false);
	

	/*script function*/
  $("#test").keyup(function(event){
      if(event.keyCode == 192) location.href="http://localhost:8080/MissionOrDare/analysis_index.do";
      if(event.keyCode == 49) location.href="http://localhost:8080/MissionOrDare/index.do";
      if(event.keyCode == 50) location.href="http://localhost:8080/MissionOrDare/user_index.do";
  
  });
//-->
</script>
</body>
<style>
	.slideDown{
		display: flex;
		flex-direction: column;
		position: absolute;
		justify-content: center;
		align-items: center;
		top: 60px;
		left: 0;
		width: 100%;
		color: #888;
		background: black;
	}
	.slideDown li{
		width: 82%;
		margin: 10px 0;
	}
	.slideDown li:hover{
		color: #fafafa;
	}
	.hidden{
		display: none;
	}
</style>
</html>