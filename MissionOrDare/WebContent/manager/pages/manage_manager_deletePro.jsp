<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>
<h2>매니저 삭제 페이지 입니다.</h2>

	<c:if test="${result eq 0}">	
		<script type="text/javascript">
			<!--
			alert("실패했숭구리당당숭당다");
			history.back();
			//-->
		</script>
	</c:if>
	<c:if test="${result eq 1}">
		<c:redirect url="manage_manager.do"/>
	</c:if>

