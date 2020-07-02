<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>


<h2>삭제 페이지</h2>


<c:if test="${result eq 0}">			
	<script type="text/javascript">
		<!--
		alert( "삭제 실패했습니다." );
		//-->
	</script>
	<meta http-equiv="refresh" content="0; url='manage_user_info.do'">
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="manage_user.do"/>
</c:if>				
