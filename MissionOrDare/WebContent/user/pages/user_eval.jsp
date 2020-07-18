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
                <span class="item1">${userMissionsDto.large_category}/${userMissionsDto.small_category}</span><br>
             </div>
             <div class="item">
                <span class="item2">${userMissionsDto.mission_title}</span><br>
             </div>
	           	<div id="profile" class="content-profile" onclick="location.href='user_anotherUser.jsp'">
	                <img class="img-circle" src="${profile_picture}" alt="user-profile">
	                <span>${userMissionsDto.user_nickname}</span><br>
             	</div>
             <div class="item">
               <i style="font-size: 150%;" class="fas fa-chevron-left"></i>
               <c:forEach var="content" items="${contents}">
                		<c:if test="${fn:contains(content, '.mp4') or fn:contains(content, '.avi')}">
                			<video muted autoplay="autoplay" class="img-rounded" width="180">
								<source src="/upload/${content}">
							</video>
                		</c:if>
                		<c:if test="${!fn:contains(content, '.mp4') and !fn:contains(content, '.avi')}">
                			<img src="/upload/${content}" class="img-rounded" alt="thumbnail"/>
                		</c:if>
                	</c:forEach>
               <i style="font-size: 150%;" class="fas fa-chevron-right"></i>
             </div>
             <div>
               <span>${userMissionsDto.mission_upload_contents}</span>
            
            </div>
				
				<div class="btn-line">
				<input class="successbtn" type="button" value="성공" name="pass" onclick="GoSuccessProPage('${userMissionsDto.mission_state_id}')"/>
				<input type="button" class="deletebtn" value="실패" name="fail" onclick="GoFailureProPage('${userMissionsDto.mission_state_id}')"/>
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
                    <img src="${project}images/dotbogi.PNG" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="${project}images/feed.PNG" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="${project}images/mygumi.PNG" alt="my-icon">
                    <span>마이</span>
                </li>
            </ul>
        </nav>
     </div>
</body>
</html>
