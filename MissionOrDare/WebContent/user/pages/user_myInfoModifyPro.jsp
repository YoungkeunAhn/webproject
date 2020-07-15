<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <title>유저정보 수정 처리 페이지</title>
</head>
<body>
    <h2>유저정보 수정 처리 페이지.</h2>
<c:if test="${result eq 1}">
	<script>
	//<!--
	alert("정보수정에 성공하였습니다.");
	//-->
	</script>
	<meta http-equiv="refresh" content="0;url=user_my.do">
</c:if>
<c:if test="${result eq 0}">
	<script>
	//<!--
	alert("정보수정에 실패하였습니다.");
	history.back();
	//-->
	</script>
</c:if>
</body>
</html>
