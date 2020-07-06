<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>카테고리 삭제 페이지</title>
</head>
<body>
	<c:if test="${result eq 0}">
		<script type="text/javascript">
			<!--
			alert("실패했다리");
			history.back();
			//-->
		</script>
	</c:if>
	<c:if test="${result eq 1}">
		<c:redirect url="manage_category.do"/>
	</c:if>
	<c:if test="${result eq -1}">
		<script type="text/javascript">
			<!--
			alert("카테고리를 사용 중인 미션이 있습니다!");
			history.back();
			//-->
		</script>
	</c:if>
</body>
</html>