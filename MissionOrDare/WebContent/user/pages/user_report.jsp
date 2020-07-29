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
	   <form method="post" name="userReportForm" action="user_reportPro.do" onsubmit="return userReport()">
	   	   <input type="hidden" name="reported_reply_id" value="${reported_reply_id}">
	       <input type="hidden" name="reported_nickname" value="${reported_nickname}">
	       <input type="hidden" name="success_board_id" value="${success_board_id}">
	       
	        
	        <article class="reportArticle">
	        	<section class="reportSection">
		        	<div style="padding:10px;">
		        		<span>댓글/게시글 신고</span>
		        	</div>
		       		<div class="reportProfile">
		       			<div class="contentProfile">
		       				<img class="img-circle" src="${profile_picture}" onerror="this.src='${project}images/erroruser.png'">
			            	<span>${reported_nickname}</span>
			            </div>
		       		</div>
		       		<section style="margin-top: 20px;">
		       			<div>
		       				<select class="form-control" name="reportType">
		       					<option value="욕설">욕설</option>
		       					<option value="혐오 발언">혐오 발언</option>
		       					<option value="차별 ">차별</option>
		       					<option value="비방">비방</option>
		       					<option value="기타">기타</option>
		       				</select>
		       			</div>
		       			<div style="margin-top: 15px">
		       				<textarea class="reportWrite" name="reportReason"></textarea>
		       			</div>
		       			<div style="margin-top: 24px">
		       				<a style="font-size: 1px;">※허위신고일 경우, 신고자는 서비스 이용이 제한됩니다.</a>
		       			</div>
		       			<div style="margin-top: 30px">
		       				<button type="submit" class="profilemodifybtn">확인</button>
		       				<button onclick="history.go(-1)" type="button" class="profilemodifybtn">취소</button>
		       			</div>
		       			
		       		</section>
	        	</section>
	        </article>
	    </form>
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