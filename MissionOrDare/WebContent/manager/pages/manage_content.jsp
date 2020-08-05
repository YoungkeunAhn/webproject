<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<html>
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
    <title>게시글관리페이지</title>
</head>
<body>
<div class="container">
	<nav>
		<label id="logoBtn" onclick="location.href='${pageContext.request.contextPath}/index.do'">MOD</label>
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
				<li class="btn-login">
					<a>${str_header_login}</a></li>
			</c:if>

			<!-- 로그인 되어있으면 로그아웃 버튼 생성 -->
			<c:if test="${sessionScope.memId ne null and !sessionScope.memId ne ''}">
				<li><a href="logout.do">${str_header_logout}</a></li>
			</c:if>
		</ul>
	</nav>
	<section class="title-part">
		<div class="title-up">
			<h1>게시글관리</h1>
			<span>
				Home
				<i class="fas fa-chevron-right"></i>
				Content
				<i class="fas fa-chevron-right"></i>
			</span>
		</div>
	</section>
	<article class="sub-page">
		<section class="search-part">
        <form method="post" action="manage_content.do" name="contentho" onsubmit="return searchCheck1()">
            <label>
                <select class="form-control" name="option">
                    <option value="1" selected> ${str_mission_category} </option>
                    <option value="2">${str_content_writer}</option>
                    <option value="3">${str_title}</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="searchContent">
            </label>
            <button class="btn btn-primary" type="submit">${str_search}</button>
        </form>
        </section>
        <section class="list-part">
            <table class="table">
                <thead>
                <th>${str_number}</th>
                <th>${str_mission_category}</th>
                <th>${str_user_nickname}</th>
                <th>${str_mission_title}</th>
                <th>${str_content_views}</th>
                <th>${str_content_like}</th>
                <th>${str_content_writedate}</th>
                </thead>
                <tbody>
                <c:forEach var="joinMissionInfoSuccessBoardDto" items="${joinMissionInfoSuccessBoardDtos}">
                <tr onclick="location.href='${pageContext.request.contextPath}/manage_content_info.do?success_board_id=${joinMissionInfoSuccessBoardDto.success_board_id}'">
                	<th>${joinMissionInfoSuccessBoardDto.success_board_id}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.large_category} / ${joinMissionInfoSuccessBoardDto.small_category}</th>
                	<th>${joinMissionInfoSuccessBoardDto.user_nickname}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.mission_title}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.views}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.likecount}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.board_register_date}</th>
 				</tr>
 				</c:forEach>
                </tbody>
            </table>
        </section>

        <section>
       
			<c:if test="${cnt gt 0}">
				<c:if test="${startPage gt pageBlock}">
					<a href="manage_content.do?searchContent=${searchContent}&option=${option}">[◀◀]</a>
					<a href="manage_content.do?pageNum=${startPage-pageBlock}&searchContent=${searchContent}&option=${option}">[◀]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i eq currentPage}"> 
						<b>[${i}]</b>				
					</c:if>
					<c:if test="${i ne currentPage}">
						<a href="manage_content.do?pageNum=${i}&searchContent=${searchContent}&option=${option}">[${i}]</a>				
					</c:if>
				</c:forEach>	
				<c:if test="${pageCount gt endPage}">
					<a href="manage_content.do?pageNum=${startPage+pageBlock}&searchContent=${searchContent}&option=${option}">[▶]</a>
					<a href="manage_content.do?pageNum=${pageCount}&searchContent=${searchContent}&option=${option}">[▶▶]</a>		
				</c:if>
			</c:if>        
		
        </section>
	</article>
	<footer>@copyright All rights reserved | MissionOrDare | Simplefun | webProject</footer>
</div>

<!-- nav -->
<script>
	//<!--
	const menu = document.getElementById('menu');
	const navItems = document.querySelector('.nav-items');
	const modalBg = document.getElementById('modal-bg');
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
	modalBg.addEventListener('click',closeModal,false);
	closeBtn.addEventListener('click',closeModal,false);
	//-->
</script>
<script>
	const nav = document.querySelector('nav');
	window.addEventListener('scroll',function (){
		let nowScrollTop = window.scrollY;

		if(nowScrollTop > 100){
			nav.classList.add('change-nav');
		}else{
			nav.classList.remove('change-nav');
		}
	});

	const categoryModal = document.getElementById('categoryInfoModal');
	const missionInsertModal = document.getElementById('missionInsertModal');

	function OncategoryModal(){
		categoryModal.classList.remove('hidden');
	}
	function OnMissionInsertModal(){
		missionInsertModal.classList.remove('hidden');
	}
	categoryModal.addEventListener('click',function (){
		categoryModal.classList.add('hidden');
	},false);
	missionInsertModal.addEventListener('click',function (){
		missionInsertModal.classList.add('hidden');
	},false);
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
	.title-up{
		transition: 1s;
		transform: translateY(-130px);
	}
	.change-nav{
		background: #fafafa;
		position: fixed;
		top: 0;
		left: 0;
		border-bottom: 1px solid #888888;
		z-index: 1;
	}
</style>
</html>