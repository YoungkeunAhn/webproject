<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>
<!DOCTYPE html>

<script src="${project}assets/js/script.js"></script>

<c:if test="${result eq 0 }">
	<script type="text/javascript">
		<!--
		alert('쪽지 보내기 실패');
		//-->
	</script>
	<meta http-equiv="refresh" content="0;url=manage_message.do">
</c:if>
<c:if test="${result eq 1}">
	<script type="text/javascript">
		<!--
		alert('쪽지를 보냈습니다.');
		//-->
	</script>
	<meta http-equiv="refresh" content="0;url=manage_message.do">
</c:if>