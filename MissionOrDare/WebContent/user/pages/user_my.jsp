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
</head>
<body style="overflow:hidden;">
	<div class="container">
        <header>
            <img id="menu" class="menu-img" src="${project}images/menu.png" alt="logo">
	            <div id="menu_list" class="menu_list">
		            	<span onclick="GoLogoutPage()">Logout</span>
		            	<br><br>
		            	<span onclick="GoWithdrawalPage()">Withdrawal</span>
		        </div>
            <img onclick="GoMainPage()" class="header-img" src="${project}images/mod_logo.png" alt="logo">
        </header>
    	<article class="usermyArticle">
	    	<div class="white-box">	
	    		<section class="imymemine">
	    		<div style="width: 100%; display: flex; justify-content: center; align-items: center;">
	    			<img class="writeMessage" onclick="GoMessageForm()" src="${project}images/message12.png" alt="user-message">
	    			<div id="profile" class="content-profile">
		    		   <img onclick="MyProfileModify()" class="img-circle" src="${userDto.profile_picture}" alt="user-profile">
		               <span>${userDto.user_nickname}</span>
					   
		   			</div>
	    		</div>	   		
		   		<div class="write-control"><span>관심분야: ${userDto.interesting1_large_category} ${userDto.interesting2_large_category} ${userDto.interesting3_large_category} ${userDto.interesting4_large_category}</span></div>
		   		<div class="write-control">가입일: ${userDto.sign_up_date}</div>
		   		<div class="aho">
		   		<button class="gaein" type="submit" onclick="MyInfoModify()"><span>개인정보수정</span></button>
	    		</div>
	    		</section>
	    	</div>
    		<section class="imymemine">
	    		<div class="white-box1">
	    			<span>미션내역</span>
	    			<div class="myMissionpackage">
		    			<c:forEach var="userMissionDto" items="${userMissionDtos}">
				    		<div class="gay"><span>${userMissionDto.mission_start_date}</span></div>
				    		<div class="good"><img onclick="location.href='user_myMissionCheck.jsp';" class="missionimage" src="/upload/${userMissionDto.upload_image}" alt="mission-image1">
						    	<div class="sisisi">	
						    		<span>${userMissionDto.mission_title}</span>
						    		<span><a>
						    		<c:if test="${userMissionDto.mission_state eq 1}">
									미션 중
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 2}">
									미션 성공
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 3}">
									미션 실패
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 4}">
									미션 인증 중
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 5}">
									중도 포기
									</c:if>
						    		</a>
						    		</span>
						    	</div>    	
				    		</div>
				    	</c:forEach>
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