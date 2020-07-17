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
	<title>회원탈퇴를 위한 비밀번호 입력하는 페이gggg baby~</title>
</head>
<body>
	<article>
		 <section class="withdrawal">
		 	<div class="withdrawaltitle">
		 		<span>회원탈퇴</span>
		 	</div>
		 	<div class="withdrawalpasswd">
		 	<input type="text" name="passwd" value="비밀번호를 입력하세요">
		 	<button class="myCategory" type="button" onclick="deleteLegendModal">탈퇴</button>
		 	</div>
		 </section>
	</article>
</body>
</html>