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
    <title>쪽지관리페이지</title>
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
			<h1>쪽지 관리</h1>
			<span>
					Home
					<i class="fas fa-chevron-right"></i>
					Message
					<i class="fas fa-chevron-right"></i>
				</span>
		</div>
	</section>
	
	<article class="sub-page">
		 <section class="search-part">
        <form method="post" action="manage_message.do" name="messageho" onsubmit="return searchCheck4()">
            <label>
                <input class="form-control" type="search" name="searchUser" placeholder="유저닉네임을 입력하세요">
            </label>
            <button class="btn btn-primary" type="submit" name="user-findinmessage">${str_search}</button>
        
        </form> 
		
		</section>
		
        <form class="list-part" action="manage_message_deletePro.do" method="post">
        <div>
        	<button class="btn btn-primary" type="button" name="message-send" onclick="location.href='manage_message_sendForm.do'">${str_message_sendmessage}</button>
           	<button class="btn btn-danger" type="submit" >${str_message_messagedelete}</button>
        </div>
            <table class="table">
                <thead>
                <th><input type="checkbox" id="select_all"></th>
                <th>${str_message_sender}</th>
                <th>${str_message_content}</th>
                <th>${str_message_receiver}</th>
                <th>${str_message_senddate}</th>
                
                </thead>
               <tbody>
                <c:forEach var="joinNotesManagerDto" items="${joinNotesManagerDtos}" varStatus="loop">
                <input type="hidden" name="notesContents" value="${joinNotesManagerDto.notes_contents}">
                <tr>
                <th><input type="checkbox" name="message_check" value="${joinNotesManagerDto.notes_id}"></th>
                <th>${joinNotesManagerDto.sent_nickname}</th>
                <th>${joinNotesManagerDto.notes_contents}</th>
                <th>${joinNotesManagerDto.received_nickname}</th>
                <th>${joinNotesManagerDto.send_date}</th>
                <tr>
                </c:forEach>
                </tbody>
            </table>
            
           </form>
       </section>
        
        <br>
        <section>
        <c:if test="${searchUser eq null}">
         <c:if test="${cnt gt 0}">
            <c:if test="${startPage gt pageBlock}">
               <a href="manage_message.do">[◀◀]</a>
               <a href="manage_message.do?pageNum=${startPage-pageBlock}">[◀]</a>
            </c:if>
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
               <c:if test="${i eq currentPage}"> 
                  <b>[${i}]</b>            
               </c:if>
               <c:if test="${i ne currentPage}">
                  <a href="manage_message.do?pageNum=${i}">[${i}]</a>            
               </c:if>
            </c:forEach>   
            <c:if test="${pageCount gt endPage}">
               <a href="manage_message.do?pageNum=${startPage+pageBlock}">[▶]</a>
               <a href="manage_message.do?pageNum=${pageCount}">[▶▶]</a>      
            </c:if>
         </c:if>        
      </c:if>
      
      <c:if test="${searchUser ne null}">
         <c:if test="${cnt gt 0}">
            <c:if test="${startPage gt pageBlock}">
               <a href="manage_message.do?searchUser=${searchUser}">[◀◀]</a>
               <a href="manage_message.do?pageNum=${startPage-pageBlock}&searchUser=${searchUser}">[◀]</a>
            </c:if>
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
               <c:if test="${i eq currentPage}"> 
                  <b>[${i}]</b>            
               </c:if>
               <c:if test="${i ne currentPage}">
                  <a href="manage_message.do?pageNum=${i}&searchUser=${searchUser}">[${i}]</a>            
               </c:if>
            </c:forEach>   
            <c:if test="${pageCount gt endPage}">
               <a href="manage_message.do?pageNum=${startPage+pageBlock}&searchUser=${searchUser}">[▶]</a>
               <a href="manage_message.do?pageNum=${pageCount}&searchUser=${searchUser}">[▶▶]</a>      
            </c:if>
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