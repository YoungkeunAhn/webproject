<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>

<html>
<head>
    <title>유저 미션받기 처리 페이지</title>
</head>
<body>
<h2>유저 미션수락 처리 페이지입니다.</h2>
	<c:if test="${result eq 0}">
		<script type="text/javascript">
			<!--
			alert("실패했습니다.");
			location.href="user_main.do"
			//-->
		</script>
	</c:if>
	<c:if test="${result eq 1}">
		<script type="text/javascript">
			<!--
			alert("업로드 되었습니다.");
			//-->
		</script>
		<meta http-equiv="refresh" content="0;url=user_main.do">
	</c:if>
</body>
</html>
