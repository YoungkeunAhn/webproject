<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>

<html>
<head>
    <title>메시지보내기 처리 페이지</title>
</head>
<body>
    <h2>메시지보내기 처리 페이지</h2>
    
<c:if test="${result eq 1}">
	<script>
	//<!--
	alert("메시지가 전송되었습니다.");
	//-->
	</script>
	<meta http-equiv="refresh" content="0;url=user_messageForm.do">
</c:if>
<c:if test="${result eq 0}">
	<script>
	//<!--
	alert("메시지가 전송이 실패되었습니다.");
	history.back();
	//-->
	</script>
</c:if>
</body>
</html>
