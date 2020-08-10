<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>프로필 수정 처리 페이지</title>
</head>
<body>
    <h2>프로필 수정 처리 페이지입니다.</h2>
    <c:if test="${result eq 0}">
		<script type="text/javascript">
			<!--
			alert( updateerror );
			//-->
		</script>
 		<meta http-equiv="refresh" content="0; url='user_main'"> 
	</c:if>
	
	<c:if test="${result eq 1}">
		<c:redirect url="seMenu.do"/>	
	</c:if>
<button onclick="location.href='user_main.do'">메인페이지로 이동</button>
<button onclick="location.href='user_join.do'">회원가입 페이지로 이동</button>
</body>
</html>
