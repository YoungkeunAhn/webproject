<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <title>유저로그인 처리 페이지</title>
</head>
<body>
    <h2>유저 로그인 처리 페이지입니다.</h2>
<script type="text/javascript">
//<!--
location.href ="user_main.do" ;
//-->
</script>
</body>
<c:redirect url="user_main.do?kakao_id=${kakao_id}"/>
</html>
