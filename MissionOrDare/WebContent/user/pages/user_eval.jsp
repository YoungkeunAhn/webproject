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
<body>
   <div class="container">      
       <article>
       <c:if test="${result eq 0}">
            <ol class="data-none">
               <li>미션이 평가할게 없습니다!</li>
               <li>본인이 직접 미션을 인증해보시지!</li>
               <li><img src="${project}images/mission_none.png"></li>
            </ol>
         </c:if>
       
       <c:if test="${result ne 0}">
       <input id="mission_status_id" name="mission_status_id" type="hidden" value="test">
          <section class="eval">
             <div class="gilpung">
             <div class="item">
                <span class="item1">${userMissionDto.large_category}/${userMissionDto.small_category}</span><br>
             </div>
             <div class="item">
                <span class="item2">${userMissionDto.mission_title}</span><br>
             </div>
	           	<div id="profile" class="content-profile" onclick="location.href='user_anotherUser.jsp'">
	                <img class="img-circle" src="${profile_picture}" alt="user-profile">
	                <span>${userMissionDto.user_nickname}</span><br>
             	</div>
             <div class="item">
               <i style="font-size: 150%;" class="fas fa-chevron-left"></i>
               <c:if test="${userMissionDto.upload_image ne null}">
               <img class="content-image" src="/upload/${upload_image}" alt="content-image">
               </c:if>
               <c:if test="${userMissionDto.upload_video ne null}">
               <img class="content-image" src="/upload/${upload_video}" alt="content-image">
               </c:if>
               <i style="font-size: 150%;" class="fas fa-chevron-right"></i>
             </div>
             <div>
               <span>${userMissionDto.mission_upload_contents} / ${userMissionDto.mission_state_id}</span>
            
            </div>
				
				<div class="btn-line">
				<input class="successbtn" type="button" value="성공" name="pass" onclick="GoSuccessProPage('${userMissionDto.mission_state_id}')"/>
				<input type="button" class="deletebtn" value="실패" name="fail" onclick="GoFailureProPage('${userMissionDto.mission_state_id}')"/>
				</div>
				</div>
	    	</section>
	    	</c:if>
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
</body>
</html>
