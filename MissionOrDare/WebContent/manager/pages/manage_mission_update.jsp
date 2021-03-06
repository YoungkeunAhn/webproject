<%--
  Created by IntelliJ IDEA.
  User: Youngkeun and KwangHoon and YouChang
  Date: 2020-06-29
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
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
    <title>미션수정페이지</title>
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
			<h1>미션수정</h1>
			<span>
				Home
				<i class="fas fa-chevron-right"></i>
				Mission_update
				<i class="fas fa-chevron-right"></i>
			</span>
		</div>
	</section>
    <article class="sub-page">
        <section class="mission-insert-update">
            <form name="mission-updateForm" action="manage_mission_updatePro.do">           
                <table class="table">
                    <tr>
                    	<th><span>${str_mission_info_id}</span></th>
                        <td>
                        	<input readonly class="form-control" type="text" name="mission_info_id" value="${missionCategoryAndInfoDto.mission_info_id}">
                        </td>
                    </tr>
                    <tr>
                    	<th><span>${str_mission_category}</span></th>
                        <td>
                            <input readonly class="form-control" type="text" name="large_category" value="${missionCategoryAndInfoDto.large_category}">
                        </td>
                        <td>
                        	<input readonly class="form-control" type="text" name="small_category" value="${missionCategoryAndInfoDto.small_category}">
                        </td>
                    </tr>
                    <tr>
                        <th>${str_title}</th>
                        <td colspan="3">
                            <label class="input-label">
                                <input class="form-control" type="text" name="mission_title" value="${missionCategoryAndInfoDto.mission_title}">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td colspan="3">
                            <label class="input-label">
                                <input class="form-control" type="text" name="mission_contents" value="${missionCategoryAndInfoDto.mission_contents}">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>난이도</th>
                        <th>점수</th>
                        <th>종류</th>
                        <th>장소</th>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                <select class="form-control" name="mission_level">
                                    <option value="1" selected>1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </label>
                        </td>
                        <td>
                            <label>
                                <input class="form-control" type="number" name="mission_success_score" value="${missionCategoryAndInfoDto.mission_success_score}">
                            </label>
                        </td>
                        <td>
                            <label>
                                <select class="form-control" name="mission_challenge">
                                    <option value="1" selected>일반</option>
                                    <option value="2">챌린지</option>
                                </select>
                            </label>
                        </td>
                        <td>
                            <label>
                                <select class="form-control" name="mission_local">
                                    <option value="실내" selected>실내</option>
                                    <option value="야외">야외</option>
                                </select>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th class="btn-line" colspan="4">
                            <button class="btn btn-primary" type="submit">수정</button>
                            <button class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/manage_mission.do'">취소</button>
                        </th>
                    </tr>
                </table>
            </form>
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
