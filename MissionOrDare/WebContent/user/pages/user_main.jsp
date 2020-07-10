<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${project}asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="${project}asset/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
    <title>유저 메인페이지</title>

    <script>
        var cnt = 1;
        $(document).ready(function () {
            $('#flip').click(function () {
                if(cnt%2 === 1){
                    $('#flip').css({
                        position: 'relative',
                        top: '-50px',
                        duration: '5s',
                    });
                    $('#flip > img').attr('src','${project}images/minus.png');
                    $('#panel').css({
                        position: 'relative',
                        top: '-50px',
                    });
                    $('#panel').fadeIn('5000');
                }else {
                    $('#flip').css({
                        position: 'relative',
                        top: '0',
                        duration: '5s',
                    });
                    $('#flip > img').attr('src','${project}images/plus.png');
                    $('#panel').css({
                        position: 'relative',
                        top: '50px',
                    });
                    $('#panel').fadeOut('1000');
                }
                cnt++
            });
        });
    </script>
</head>
<body>
    <div class="container">
        <header class="mainHeader">
            <img id="menu" class="menu-img" src="${project}images/menu.png" alt="logo">
	            <div id="menu_list">
	            	<span onclick="GoMainPage()">로그아웃</span>
	            	<span>회원탈퇴</span>
	            </div>
            <img onclick="GoMainPage()" class="header-img" src="${project}images/mod_logo.png" alt="logo">
        </header>
        <article class="mainArticle">
            <section class="mission-list">
                <i class="fas fa-angle-left"></i>
                <ol class="date-none" style="display: none">
                    <li>미션이 없습니다!</li>
                    <li>미션을 받아보세요!</li>
                </ol>
                <ol class="date-exist">
                    <form name="myMissionAuthForm" action="user_myMissionAuth.do">
                        <li class="text-date"><input type="text" value="2020.07.06 13:43 시작" disabled> </li>
                        <li class="text-category"><input type="text" value="운동/헬스" disabled></li>
                        <li class="text-mission"><input type="text" value="라이언이 부탁한 자화상" disabled></li>
                        <li><img src="${project}images/mission_img1.png" alt="mission-image"></li>
                        <li class="text-summary"><input type="text" value="라이언 이모티콘를 따라 그려봅시다" disabled></li>
                        <li class="text-status"><input type="text" value="진행중" disabled></li>
                        <li><button class="btn-missionAuth">인증하기</button></li>
                    </form>
                </ol>
                <i class="fas fa-angle-right"></i>
            </section>
            <div id="flip" class="slider"><img src="${project}images/plus.png" alt="slide"></div>
            <section id="panel" class="mission-select">
                    <input id="mission_level" type="hidden" value="nomal">
                    <input id="mission_categoryArea" type="hidden" value="my">
                    <div class="col">
                        <button class="btn-nomal" type="button" onclick="NomalBtnClick()">일반 Mission</button>
                        <button class="btn-challenge" type="button"  onclick="ChallengeBtnClick()">챌린지 Mission</button>
                    </div>
                    <div id="modal-bg" class="modal-bg" onclick="CloseModal()">
                        <div class="modal-body">
                            <button class="myCategory" type="button" onclick="InterestBtnClick()">관심분야</button>
                            <button class="allCategory" type="button" onclick="AllCategoryBtnClick()">전체분야</button>
                        </div>
                    </div>
            </section>
        </article>
        <nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="${project}images/mod_logo.png" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="${project}images/task.png" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="${project}images/pid.png" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="${project}images/my.png" alt="my-icon">
                    <span>마이</span>
                </li>
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
   		//-->
	</script>
</body>
</html>
