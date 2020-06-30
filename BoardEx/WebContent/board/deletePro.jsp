<%@page import="board.BoardDataBean"%>
<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp" %>
<script src="${project}script.js"></script>

<h2> ${page_delete} </h2>

<c:if test="${check eq true}">
	<c:if test="${result eq 0}">			
		<script type="text/javascript">
			<!--
			alert( deleteerror );
			//-->
		</script>
		<meta http-equiv="refresh" content="0; url='list.do?pageNum=${pageNum}'">
	</c:if>
	<c:if test="${result eq -1}">
		<script type="text/javascript">
			<!--
			alert( replyerror );
			//-->
		</script>
		<meta http-equiv="refresh" content="0; url='list.do?pageNum=${pageNum}'">
	</c:if>
	<c:if test="${result eq 1}">
		<c:redirect url="list.do?pageNum=${pageNum}"/>
	</c:if>				
</c:if>
<c:if test="${check eq false}">
	<script type="text/javascript">
		<!--
		erroralert( repasswderror );
		//-->
	</script>
</c:if>
	












    