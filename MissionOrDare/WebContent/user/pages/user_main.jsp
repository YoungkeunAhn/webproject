<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="user_settings.jsp"%>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Link CSS -->
	<link type="text/css" rel="stylesheet" href="${project}asset/user.css">
	<link rel="stylesheet"
		href="https://unpkg.com/swiper/swiper-bundle.min.css">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- Link JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="${project}asset/script.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="https://kit.fontawesome.com/23971e572d.js"></script>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<title>유저 메인페이지</title>
</head>
<style>
	.swiper-wrapper{
		position: relative;
		top: -40px;
	}
</style>
<body>
	<div class="container">
		<header>
			<img id="menu" class="menu-img" src="${project}images/menu.png"
				alt="logo">
			<div id="menu_list" class="menu_list">
				<span onclick="GoLogoutPage()">Logout</span> <br>
				<br><span onclick="GoWithdrawalPage()">Withdrawal</span>
			</div>
			<img onclick="GoMainPage()" class="header-img"
				src="${project}images/mod_logo.png" alt="logo">
		</header>
		<!-- 본문 -->
		<article>
			<!-- 받은 미션이 없을 때-->
			<c:if test="${result eq 0}">
				<ol class="data-none">
					<li>미션이 없습니다!</li>
					<li>미션을 받아보세요!</li>
					<li><img src="${project}images/mission_none.png"></li>
				</ol>
			</c:if>

			<c:if test="${result ne 0}">
				<div class="swiper-container">
					<div class="swiper-button-prev"></div>
					<div class="swiper-wrapper">
						<c:forEach var="userMissionsDto" items="${userMissionsDtos}">
							<c:if test="${userMissionsDto.mission_state eq 1}">
								<div class="swiper-slide">
									<ol class="data-exist">
										<form name="myMissionAuthForm" action="user_myMissionAuth.do">
											<input type="hidden" name="mission_start_date"
												value="${userMissionsDto.mission_start_date}"> 
											<input type="hidden" name="mission_category"
												value="${userMissionsDto.large_category}/${userMissionsDto.small_category}">
											<input type="hidden" name="mission_title" value="${userMissionsDto.mission_title}">
											<input type="hidden" name="mission_start_date"
												value="${userMissionsDto.mission_contents}"> 
											<input type="hidden" name="mission_state"value="${userMissionsDto.mission_state}">
											<input type="hidden" name="mission_state_id"value="${userMissionsDto.mission_state_id}">
											<li class="text-date">${userMissionsDto.mission_start_date}
												시작</li>
											<li class="text-category">${userMissionsDto.large_category}/${userMissionsDto.small_category}</li>
											<li class="text-mission">${userMissionsDto.mission_title}</li>
											<li><img
												src="/category/${userMissionsDto.category_image}" alt="kk"
												onerror="this.src='${project}images/mod_logo.png'"></li>
											<li class="text-summary">${userMissionsDto.mission_contents}</li>
											<li class="text-status">진행중</li>
											<li><button class="btn-missionAuth">인증하기</button></li>
										</form>
									</ol>
								</div>
							</c:if>
							<c:if
								test="${userMissionsDto.mission_state eq 4 and userMissionsDto.upload_public_availability eq 1}">
								<div class="swiper-slide">
									<ol class="data-exist">
										<input type="hidden" name="mission_start_date"
												value="${userMissionsDto.mission_start_date}"> 
											<input type="hidden" name="mission_category"
												value="${userMissionsDto.large_category}/${userMissionsDto.small_category}">
											<input type="hidden" name="mission_title" value="${userMissionsDto.mission_title}">
											<input type="hidden" name="mission_start_date"
												value="${userMissionsDto.mission_contents}"> 
											<input type="hidden" name="mission_state"value="${userMissionsDto.mission_state}">
											<input type="hidden" name="mission_state_id"value="${userMissionsDto.mission_state_id}">
										<li class="text-date">${userMissionsDto.mission_start_date}
											시작</li>
										<li class="text-category">${userMissionsDto.large_category}/${userMissionsDto.small_category}</li>
										<li class="text-mission">${userMissionsDto.mission_title}</li>
										<li><img
											src="/category/${userMissionsDto.category_image}"
											onerror="this.src='${project}images/mod_logo.png'"></li>
										<li class="text-summary">${userMissionsDto.mission_contents}</li>
										<li class="text-status">인증중</li>
									</ol>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="swiper-button-next"></div>
				</div>
			</c:if>


			<!-- 미션받기 버튼 -->
			<input id="mission_level" type="hidden" value="normal">
			<input id="mission_categoryArea" type="hidden" value="my">
			<div class="slider-btn-align">
				<img id="flip" class="slider" src="${project}images/dice.png">
				<i class="fas fa-angle-double-up"></i>
				<div>미션받기</div>
			</div>
			<div class="list-up-back hidden"></div>
			<div class="list-up-bg">
				<div class="list-up-item">
					<button class="btn btn-normal" type="button" onclick="NormalBtnClick()">일반미션</button>
					<button class="btn btn-challenge" type="button"	onclick="ChallengeBtnClick()">챌린지 미션</button>
				</div>
			</div>
			<div id="modal-bg" class="modal-bg" onclick="CloseModal()">
				<div class="modal-body">
					<button class="btn myCategory" type="button"
						onclick="InterestBtnClick()">관심분야</button>
					<button class="btn allCategory" type="button"
						onclick="AllCategoryBtnClick()">전체분야</button>
				</div>
			</div>
			
		</article>
		

		<!--메뉴바-->
		<nav>
			<ul>
				<li onclick="GoMainPage(${sessionScope.user_nickname})"><img
					class="nav-home" src="${project}images/mod_logo.png" alt="logo">
					<span>홈</span></li>
				<li onclick="GoEvalPage()"><img src="${project}images/blackdotbogi.PNG"
					alt="eval-icon"> <span>평가</span></li>
				<li onclick="GoPidPage()"><img src="${project}images/blackfeed.PNG"
					alt="pid-icon"> <span>피드</span></li>
				<li onclick="GoMyPage()"><img src="${project}images/blackMyPage.PNG"
					alt="my-icon"> <span>마이</span></li>
			</ul>
		</nav>
	</div>
	<script type="text/javascript">
			//<!--
	      	$(document).ready(function(){
			  $("#menu").click(function(){
			    $("#menu_list").slideToggle("slow");
			  });
			});
 
	   var swiper =  new Swiper('.swiper-container', {
	    	navigation : { // 네비게이션 설정
	    		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
	    		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	    	},
	    });

	    
	  //-->
</script>

<script>
//!<--
	const slideUpButton = document.getElementById('flip');
	const sliderItem = document.querySelector('.list-up-item');
	const sliderBack = document.querySelector('.list-up-back');
	
	let cnt = 0;
	
	function slideToggle(){
		if(cnt == 0){
			sliderItem.classList.add('slideUp');
			slideUpButton.classList.add('rolling');
			sliderItem.classList.remove('slideDown');
			sliderBack.classList.remove('hidden');
			cnt  = 1;
		}else{
			
			sliderItem.classList.add('slideDown');
			sliderBack.classList.add('hidden');
			slideUpButton.classList.remove('rolling');
			sliderItem.classList.remove('slideUp');
			cnt  = 0;
		}
		
	}
	
	function slideDown(){
		sliderItem.classList.remove('slideUp');
		sliderItem.classList.add('slideDown');
		sliderBack.classList.add('hidden');
		slideUpButton.classList.remove('rolling');
		cnt  = 0;
	}
	slideUpButton.addEventListener('click',slideToggle);
	sliderBack.addEventListener('click',slideDown)
//-->
</script>

</body>
<style>
	.slideUp{
		transition: 2.5s;
		transform: translateY(-1.5in);	
	}
	.slideDown{
		transition: 2.5s;
		transform: translateY(1.5in);	
	}
	.hidden{
		display: none;
	}
	.rolling{
		transition: 5s;
		transform: translateY(-0.7in) rotate(20turn) scale(1.4, 1.4);
	}
</style>
</html>
