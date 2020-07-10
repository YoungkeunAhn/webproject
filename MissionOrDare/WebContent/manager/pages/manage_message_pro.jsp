<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="manager_settings.jsp" %>
<script src="assets/js/script.js"></script>

<h2> 관리자 처리 페이지입니다. </h2>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert( "전송이 실패되었습니다." );
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<script type="text/javascript">
		<!--
		alert( "전송 되었습니다." );
		//-->
	</script>
	<meta http-equiv="refresh" content="0;url=manage_report.do">
</c:if>