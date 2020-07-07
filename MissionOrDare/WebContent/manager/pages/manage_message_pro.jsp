<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="manager_settings.jsp" %>
<script src="assets/js/script.js"></script>

<h2> 관리자 처리 페이지입니다. </h2>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert( "다시 입력해주십시오." );
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="manage_message.do"/>
</c:if>