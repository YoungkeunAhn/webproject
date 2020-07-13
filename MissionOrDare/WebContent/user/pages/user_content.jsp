<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<body class="ddaedrogba">
    <div class="container" style="margin-top:0px; margin-bottom:0px">
        <header class="contentHeader">
            <img id="menu" class="menu-img" src="../images/menu.png" alt="logo">
	            <div id="menu_list">
	            	<span onclick="GoMainPage()">로그아웃</span>
	            	<span>회원탈퇴</span>
	            </div>
            <img onclick="GoMainPage()" class="header-img1" src="../images/mod_logo.png" alt="logo">
            <img onclick="history.go(-1)" class="backimage" src="../images/xdraw.PNG" alt="x표시">
        </header>
        <article class="contentArticle">
        	<div id="replyspace">
        		<textarea placeholder="댓글을 입력해주세요" autofocus="autofocus" class="replyho">
        		</textarea>
        		<div class="buttonlegend">
        		<button type="submit" class="replybtn">확인</button>
        		<button type="reset" class="replybtn">취소</button>
        		</div>
        	</div>
        	<section class="usercontent">
        		<ol class="date-exist">    
                    <li class="text-category"><input type="text" value="운동/헬스" disabled></li>
                    <li class="text-mission"><input type="text" value="너의역량을 보여줘" disabled></li>
                    <li><img class="BoysandGirls" src="../images/madong.PNG" alt="user-profile" onclick="GoprofilePage()">
		               <span>KIMONG</span>
		            </li>
                    <li><img class="contentimage" src="../images/profileinjung.PNG" alt="content-image"></li>
                    <li class="text-summary"><input type="text" value="이정도는 기본 아님?" disabled></li>
                </ol>
	        </section>
	        <section class="replycontent">
	        	 <div class="likecontent">
	        	 <img id="like" onclick="GoMainPage()" src="../images/umzi.PNG" alt="개젛아 로고">
	        	 <a>like 998개</a>
	        	 </div>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="../images/dotdotdot.PNG" alt="logo">
	        		<span>유차니귀요미</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			프로필 본인이셈?
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="../images/dotdotdot.PNG" alt="logo">
	        		<span>영그니근육이두꺼워</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			이게 가능하구나 ㅎㄷㄷ;
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="../images/dotdotdot.PNG" alt="logo">
	        		<span>영그니근육이두꺼워</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			이게 가능하구나 ㅎㄷㄷ;
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="../images/dotdotdot.PNG" alt="logo">
	        		<span>영그니근육이두꺼워</span>
	        		<b id="replywrite">답글</b>
	        		<div class="userreply">
	        			이게 가능하구나 ㅎㄷㄷ;
	        		</div>
	        	</div><br>
	        	<div class="likecontent1">
	        	<img onclick="GoMainPage()" class="likeimage1" src="../images/dotdotdot.PNG" alt="logo">
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
		/* menu modal */
      	$(document).ready(function(){
		  $("#menu").click(function(){
		    $("#menu_list").slideToggle("slow");
		  });
		});
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
    