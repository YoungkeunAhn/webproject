<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>로그인처리페이지</title>
</head>
<body>

	<c:if test="${result eq 0}">
		<script type="text/javascript">
			<!--
			alert( "아이디가 없습니다." );
			history.back()
			//-->
		</script>
	</c:if>
	<c:if test="${result ne 0}">
		<c:if test="${result eq 1}">	
			${sessionScope.memId = manager_id}
			<c:redirect url="index.do"/>	
		</c:if>
		<c:if test="${result eq -1}">		
			<script type="text/javascript">
				<!--
				alert( "비밀번호가 다릅니다." );
				history.back();
				//-->
			</script>			
		</c:if>	
</c:if>

</body>
</html>