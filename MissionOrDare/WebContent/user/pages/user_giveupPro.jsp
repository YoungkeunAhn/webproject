<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			alert("새로운 미션을 받아보아요~");
			//-->
		</script>
		<meta http-equiv="refresh" content="0;url=user_main.do">
	</c:if>
</body>
</html>