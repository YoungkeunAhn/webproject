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
            <img id="menu" class="menu-img" src="${project}images/menu.png">
	            <div id="menu_list" class="menu_list">
		            	<span onclick="GoLogoutPage()">Logout</span>
		            	<br><br>
		            	<span onclick="GoWithdrawalPage()">Withdrawal</span>
		            	<br><br>
		            	<span onclick="MyInfoModify()">ProfileModify</span>
		        </div>
            <img onclick="GoMainPage()" class="header-img" src="${project}images/mod_logo.png" alt="logo">
        </header>
    	<article class="usermyArticle">
    		
    		<section class="userinfo-part">
    			<img class="message-img" onclick="GoMessageForm()" src="${project}images/message.png">
    			<div>
	    		   <img onclick="MyProfileModify()" class="img-circle" src="${userDto.profile_picture}" onerror="this.src='${project}images/erroruser.png'">
	               <span>${userDto.user_nickname}</span>
	   			</div>

		   		<label>관심분야: ${userDto.interesting1_large_category} ${userDto.interesting2_large_category} ${userDto.interesting3_large_category} ${userDto.interesting4_large_category}</label>
		   		<label>가입일: ${userDto.sign_up_date}</label>
    		</section>
    		<section class="imymemine">
    			<label>미션내역</label>
    			<div class="myMissionList">
    			
    				<c:forEach var="userMissionDto" items="${userMissionDtos}">
	    			<div class="myMissionList-items">
	    				<img class="missionimage" src="/category/${userMissionDto.category_image}">
	    				<ul class="myMissionList-summary">
	    					<li>${userMissionDto.mission_title}</li>
	    					<c:if test="${userMissionDto.mission_state eq 1}">
									<li class="text-default">미 션 중</li>
									</c:if>
									
									<c:if test="${userMissionDto.mission_state eq 2}">
									<li class="text-success">미 션 성 공</li>
									
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 3}">
									<li class="text-danger">미 션 실 패</li>
									
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 4}">
									<li class="text-primary">미 션 인 증 중</li>
									</c:if>
									
									<c:if test="${userMissionDto.mission_state eq 5}">
									<li class="text-danger">중 도 포 기</li>
									</c:if>
	    					<li>${userMissionDto.mission_start_date}</li>
	    				</ul>
	    			</div>
	    			</c:forEach>
    			</div>
    		</section>
    		<!-- 잠시만 안녕 -->
    		<!--  
    		<section class="imymemine">
	    		<div class="white-box1">
	    			<span>미션내역</span>
	    			<div class="myMissionpackage">
		    			<c:forEach var="userMissionDto" items="${userMissionDtos}">
				    		<div class="gay"><span>${userMissionDto.mission_start_date}</span></div>
				    		<div class="good" onclick="location.href='user_myMissionCheck.do?mission_state_id=${userMissionDto.mission_state_id}'"><img class="missionimage" src="/category/${userMissionDto.category_image}" alt="mission-image1">
						    	<div class="sisisi">	
						    		<label>${userMissionDto.mission_title}</label>
						    		<c:if test="${userMissionDto.mission_state eq 1}">
									<span class="text-default">미 션 중</span>
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 2}">
									<span class="text-success">미 션 성 공</span>
									
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 3}">
									<span class="text-danger">미 션 실 패</span>
									
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 4}">
									<span class="text-primary">미 션 인 증 중</span>
									</c:if>
									<c:if test="${userMissionDto.mission_state eq 5}">
									<span class="text-danger">중 도 포 기</span>
									</c:if>
						    		
						    	</div>    	
				    		</div>
				    	</c:forEach>
	    			</div>
	    		</div>
    		</section>
    		-->
    	</article>
    	<nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="${project}images/blackMy.PNG" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="${project}images/blackdotbogi.PNG" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="${project}images/blackfeed.PNG" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="${project}images/mypage.png" alt="my-icon">
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