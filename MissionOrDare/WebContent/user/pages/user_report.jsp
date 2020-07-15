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
    <title>유저 신고 페이지</title>
</head>
<body>
	<div class="container">
        <header>
            <img id="menu" class="menu-img" src="${project}images/menu.png" alt="logo">
	            <div id="menu_list" class="menu_list">
		            	<span onclick="GoMainPage()">Logout</span>
		            	<br><br>
		            	<span>Withdrawal</span>
		        </div>
            <img onclick="GoMainPage()" class="header-img" src="${project}images/mod_logo.png" alt="logo">
        </header>
        <article class="reportArticle">
        	<section class="reportSection">
	        	<div>
	        		<span>댓글신고</span>
	        	</div>
	       		<div class="reportProfile">
	       			<div class="contentProfile">
	       				<img class="img-circle" src="${project}images/madong.PNG" alt="user-profile">
		            	<span>KIMONG</span>
		            </div>
	       		</div>
	       		<section>
	       			<div>
	       				<ul>
	       					<li>욕설,비방,차별,혐오</li>
	       					<li>홍보,영리목적</li>
	       					<li>불법정보</li>
	       					<li>음란,청소년 혐오</li>
	       					<li>개인정보노출, 유포,거래</li>
	       					<li>도배, 스팸맛있엉</li>
	       					<li>기타</li>
	       				</ul>
	       			</div>
	       			<div>
	       				<textarea class="reportWrite">
	       				
	       				</textarea>
	       				
	       			</div>
	       			<div>
	       				<button type="submit" class="profilemodifybtn">확인</button>
	       				<button type="reset" class="profilemodifybtn">취소</button>
	       			</div>
	       			<div style="margin-top: 24px">
	       				<a style="font-size: 1px;">※허위신고일 경우, 부모님은 우한인 할부지는 일본인 그리고 내일이없음</a>
	       			</div>
	       		</section>
        	</section>
        </article>
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