<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${resultCheck eq 1}">
	<c:if test="${result eq 0}">
		<script type="text/javascript">
			alert("11");		
		</script>
		1
		<meta http-equiv="refresh" content="0; url='user_index.do'">
	</c:if>
	
	<c:if test="${result eq 1}">
		${sessionScope.kakao_id == null}
		<c:redirect url="user_index.do"/>
	</c:if>
</c:if>

<c:if test="${resultCheck eq -1}">
	<script type="text/javascript">
		alert("22");
	</script>
	2
</c:if>