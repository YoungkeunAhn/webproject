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
       <input id="mission_status_id" name="mission_status_id" type="hidden" value="test">
          <section class="eval">
             <div class="gilpung">
             <div class="item">
                <span class="item1">미술/그리기</span><br>
             </div>
             <div class="item">
                <span class="item2">라이언이 부탁한 자화상</span><br>
             </div>
	           	<div id="profile" class="content-profile" onclick="location.href='user_anotherUser.jsp'">
	                <img class="img-circle" src="${project}images/madong.PNG" alt="user-profile">
	                <span>KIMONG</span><br>
             	</div>
             <div class="item">
               <i style="font-size: 150%;" class="fas fa-chevron-left"></i>
               <img class="content-image" src="${project}images/madong.PNG" alt="content-image">
               <i style="font-size: 150%;" class="fas fa-chevron-right"></i>
             </div>
             <div>
               <span>졸귀탱라이언</span>
            
            </div>
				
				<div class="btn-line">
				<input class="successbtn" type="button" value="성공" onclick="GoSuccessProPage()"/>
				<input type="button" class="deletebtn" value="실패" onclick="GoFailureProPage()"/>
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
</body>
</html>
