<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>



<html>
<head>
    <title>유저 미션받기 처리 페이지</title>
    

</head>
<style>
	body{
		text-align: center;
	}
	img{
		height: 100%;
		margin: 0 auto;
		
	}
</style>
<body>
	<img src="${project}images/roul3.gif">
	<meta http-equiv="refresh" content="3; user_myMissionView.do?mission_level=${mission_level}&mission_categoryArea=${mission_categoryArea}">
</body>
</html>
