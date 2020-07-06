<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<h2>매니저 삭제 페이지 입니다.</h2>
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
		<c:redirect url="manage_manager.do"/>
	</c:if>
</body>
</html>