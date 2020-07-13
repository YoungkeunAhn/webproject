<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="../asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="../asset/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
        <header class="usermyHeader">
            <img id="menu" class="menu-img" src="../images/menu.png" alt="logo">
	            <div id="menu_list">
		            	<span onclick="GoMainPage()">로그아웃</span>
		            	<span>회원탈퇴</span>
		        </div>
            <img onclick="GoMainPage()" class="header-img" src="../images/mod_logo.png" alt="logo">
        </header>
    	<article class="usermyArticle">
	    	<div class="white-box">	
	    		<section class="imymemine">
	    		<div class="content-profile">
		    			<img onclick="MyProfileModify()" class="img-circle" src="../images/madong.PNG" alt="user-profile">
		               <span>KIMONG</span>
		   		</div>
		   		<img onclick="GoMessageForm()" src="../images/message12.png" alt="user-message">
		   		<div class="write-control"><span>관심분야: 운동 헬스 자기개발 축구</span></div>
		   		<div class="write-control">가입일: 2020년 6월 1일</div>
		   		<div class="aho">
		   		<button class="gaein" type="submit" onclick="location.href='user_profileModify.jsp'"><span>개인정보수정</span></button>
	    		</div>
	    		</section>
	    	</div>
    		<section class="imymemine">
	    		<div class="white-box1">
	    			<span>미션내역</span>
	    			<div class="myMissionpackage">
			    		<div><hr></div>
			    		<div class="gay"><span>2020년 6월17일 오후 7시19분 시작</span></div>
			    		<div class="good"><img class="missionimage" src="../images/gamong.png" alt="mission-image1">
			    		<span>버그행을 해볼까?</span>
			    		<span>미 션 중</span>
			    		</div>
			    		<div><hr></div>
			    		<div class="gay"><span>2020년 6월16일 오후 7시19분 시작</span></div>
			    		<div class="good"><img class="missionimage" src="../images/message12.png" alt="user-message">
			    		<span>친구한테 쪽지를 보내볼까??</span>
			    		<span><a>미션성공</a></span>
			    		</div>
			    		<div><hr></div>
			    		<div class="gay"><span>2020년 6월17일 오후 7시19분 시작</span></div>
			    		<div class="good"><img class="missionimage" src="../images/madong.PNG" alt="user-message">
			    		<span>해당 몬스터를 잡아볼까?</span>
			    		<span><b>미션실패</b></span>
			    		</div>
	    			</div>
	    		</div>
    		</section>
    	</article>
    	<nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="../images/mod_logo.png" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="../images/task.png" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="../images/pid.png" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="../images/my.png" alt="my-icon">
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