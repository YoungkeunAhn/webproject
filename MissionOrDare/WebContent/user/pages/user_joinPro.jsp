<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <title>유저로그인 처리 페이지</title>
</head>
<body>
    <h2>유저 회원가입 처리 페이지입니다.</h2>
<button onclick="location.href='user_main.do'">메인페이지로 이동</button>

<c:if test="${result eq 1}">
<script type="text/javascript">
//<!--
	alert("회원가입이 완료되었습니다.");
//-->
</script>
	<meta http-equiv="refresh" content="0;url=user_main.do">
</c:if>
<c:if test="${result eq 0}">
<script type="text/javascript">
//<!--
	alert("회원가입에 실패하였습니다.");
	history.back();
//-->
</script>

</c:if>

</body>
</html>
