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
	alert("신고가 접수되었습니다.");
	//-->
	</script>
	<meta http-equiv="refresh" content="0;url=user_content.do?success_board_id=${success_board_id}">
</c:if>
<c:if test="${result eq 0}">
	<script>
	//<!--
	alert("신고 실패");
	history.back();
	//-->
	</script>
</c:if>
</body>
</html>
