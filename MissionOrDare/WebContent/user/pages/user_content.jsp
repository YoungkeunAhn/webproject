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
<body class="ddaedrogba">
    <div class="container" style="margin-top:0px; margin-bottom:0px; padding:0px">
        <article class="contentArticle">
        	<div id="replyspace">
        		<input placeholder="댓글을 입력해주세요" autofocus="autofocus" class="replyho"/>
        		<div class="buttonlegend">
        		<button type="submit" class="replybtn">확인</button>
        		<button type="reset" class="replybtn">취소</button>
        		</div>
        	</div>
        	<section class="usercontent">
        		<ol class="date-exist">
        			<input type="hidden" value="운동/헬스" />
        			<input type="hidden" value="너의역량을 보여줘" />    
                    <input type="hidden" value="이정도는 기본 아님?" />
                    <input type="hidden" value="KIMONG"/>
                    <li class="text-category"><span>운동/헬스</span></li>
                    <li class="text-mission"><span>너의역량을 보여줘</span></li>
                    <li><img class="BoysandGirls" src="${project}images/madong.PNG" alt="user-profile" onclick="GoprofilePage()">
		               <span>KIMONG</span>
		            </li>
                    <li><img class="contentimage" src="${project}images/profileinjung.PNG" alt="content-image"></li>
                    <li class="text-summary"><span>이 정도는 기본아님?</span></li>
                </ol>
	        </section>
	        <section class="replycontent">
	        	 <div class="likecontent">
	        	 <img id="like" onclick="GoMainPage()" src="${project}images/umzi.PNG" alt="개젛아 로고">
	        	 <a>like 998개</a>
	        	 </div>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="${project}images/dotdotdot.PNG" alt="logo">
	        		<span>유차니귀요미</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			프로필 본인이셈?
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="${project}images/dotdotdot.PNG" alt="logo">
	        		<span>영그니근육이두꺼워</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			이게 가능하구나 ㅎㄷㄷ;
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="${project}images/dotdotdot.PNG" alt="logo">
	        		<span>영그니근육이두꺼워</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			이게 가능하구나 ㅎㄷㄷ;
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="${project}images/dotdotdot.PNG" alt="logo">
	        		<span>영그니근육이두꺼워</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			이게 가능하구나 ㅎㄷㄷ;
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="${project}images/dotdotdot.PNG" alt="logo">
	        		<span>영그니근육이두꺼워</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			이게 가능하구나 ㅎㄷㄷ;
	        		</div>
	        	</div><br>
	        	<div class="userreplyho">
	        		<input class="userreplyhotext" type="text" name="reply" placeholder="댓글을 입력해주세요"/>
	        		<button type="button" class="userbtnbtn">댓글</button>
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
		
		/* 댓글달기  */
      	//$(document).ready(function(){
  		  $("#replywrite").click(function(){
  		    $("#replyspace").slideToggle("fast");
  		  });
  		//});
		/* 댓글달기 열고 취소 */
      	$(document).ready(function(){
    		  $(".replybtn").click(function(){
    		    $("#replyspace").slideToggle("slow");
    		 });
    	});
		/* 좋아요 */
		
   		//-->
	</script>
</body>
</html>
    