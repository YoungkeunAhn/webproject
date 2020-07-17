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
	<title>미션인증진행페이지</title>
</head>
<body>
	<article>
		<section class="missionAuthingImage">
			<div>
				<img class="missionImage" src="${project}images/mod_logo.png" alt="다른유저 미션인증">	
			</div>
		</section>
		<section class="arae">
			<div class="wrap">
				<div class="evalscore">
					<span>현재평점</span>
					<span>36점</span>
				</div>
				<div class="evalscore">
					<span>미션인증중</span>
				</div>
				<div class="evalscore">
					<span>상위</span>
					<span>50%</span>
				</div>
			</div>
			<div class="bestarae">
				<span>현재 7명이 평가했습니다.</span>
				<span>평가진행률 70%입니당</span>
			</div>		
			<div class="araebutton">
				<input type="submit" class="deletebtn" value="돌아가기" name="back" style="width:100%; height:30%; background-color: #e0da9c;"/>
			</div>
		</section>
	</article>
</body>
</html>
