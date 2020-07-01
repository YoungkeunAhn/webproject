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
			alert( "아디 없슴" );
			//-->
		</script>
	</c:if>
	<c:if test="${result ne 0}">
		<c:if test="${result eq 1}">	
			${sessionScope.memId = id}
			<c:redirect url="${pageContext.request.contextPath}/index.do"/>	
		</c:if>
		<c:if test="${result eq -1}">		
			<script type="text/javascript">
				<!--
				alert( "비번틀림" );
				//-->
			</script>			
		</c:if>	
</c:if>

</body>
</html>