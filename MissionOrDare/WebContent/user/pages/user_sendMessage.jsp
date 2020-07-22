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
		 <form method="post" action="user_sendMessagePro.do" name="sendMessage">
			<section class="sendTop">
			<span>받는사람 :</span> 
			<span><input type="text" name="receivedNickname" value="${nickname}"> </span>
			</section>
			<section class="sendContent">
				<textarea class="messagetextarea" placeholder="메시지 내용을 입력해주세요." name="textContent"></textarea>
			</section>
			<section class="sendbottom">
				<button type="submit" class="btn btn-primary">보내기</button>
	            <button type="reset" class="btn btn-danger">취소</button>
			</section>
		</form>
	</article>
</div>
	
</body>
</html>
