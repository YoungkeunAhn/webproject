<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ include file="pages/user_settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> user Logout</title>
</head>
<body>

	<c:if test="${result eq 0}">
		<meta http-equiv="refresh" content="0;url=index.do">
	</c:if>
	<c:if test="${result eq 1}">
		<script type="text/javascript">
			<!--
			alert("로그아웃 되었습니다.");
			//-->
		</script>
		<meta http-equiv="refresh" content="0;url=index.do">
	</c:if>
</body>
</html>