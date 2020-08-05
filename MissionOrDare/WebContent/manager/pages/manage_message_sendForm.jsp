<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>
<!DOCTYPE html>
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
    <title>관리자메세지보내기</title>
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
			<h1>쪽지관리</h1>
			<span>
				Home
				<i class="fas fa-chevron-right"></i>
				Message_sendForm
				<i class="fas fa-chevron-right"></i>
			</span>
		</div>
	</section>	
    	<article class="sub-page">
    	<div class="message_sendPage">
		<section class="search_user">
			<form class="messageForm">
				<section class="search_user">
				      <table id="mytable" class="table">
				      	<tr>
				      		<th>유저 검색</th>
				      	</tr>
				      </table>
				      <input class="form-control" type="search" id="searchUser" placeholder="유저닉네임을 입력하세요" autofocus>
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
		</div>
	</article>
	<footer>@copyright All rights reserved | MissionOrDare | Simplefun | webProject</footer>
</div>

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