<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="${project}assets/css/manage.css">
    <script src="${project}assets/js/script.js"></script>
    <title>유저정보페이지</title>
</head>
<body>
	<form method="post" action="manage_send_messagePro.do">
	<input type="hidden" name="user_nickname">
		<table border="1">
			<tr>
				<th>id</th>
				<th>
					<c:forEach var="message_check" items="${messages_check}"> 
						${message_check},
						<input type="hidden" value="${message_check}" name="message_check">
					</c:forEach>
				</th>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="message" rows="10" cols="39" placeholder="내용을 입력하세요"></textarea></td>
			</tr>
			<tr>
				<th colspan="2"> 
					<button type="submit" name="send">전송</button>
					<button onclick="location.href='manage_message.do'">취소</button>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>