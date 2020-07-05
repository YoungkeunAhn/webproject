<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>
<!DOCTYPE html>

<script src="${project}assets/js/script.js"></script>

<h2> 관리자 생성 프로 페이지 입니다. </h2>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert( '관리자 생성 실패' );
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="manage_manager.do"/>
</c:if>


