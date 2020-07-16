<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <title>미션평가 성공 카운트 처리 페이지입니다.</title>
</head>
<body>
    <h2>미션평가 성공 카운트 처리 페이지입니다.</h2>
<button onclick="location.href='user_main.do'">메인페이지로 이동</button>
<button onclick="location.href='user_join.do'">회원가입 페이지로 이동</button>

<c:if test="${result eq 1}">
<meta http-equiv="refresh" content="0;url=user_eval.do">
</c:if>

<c:if test="${result eq 0}">
<script>
	//<!--
	alert("미션 평가에 실패하였습니다.");
	//-->
</script>
</c:if>

</body>
</html>
