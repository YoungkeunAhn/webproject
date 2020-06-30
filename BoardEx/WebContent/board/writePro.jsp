<%@page import="board.BoardDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp" %>
<script src="${project}script.js"></script>

<h2> ${page_write} </h2>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert( inserterror );
		//-->
	</script>
	<meta http-equiv="refresh" content="0; url='list.do'">
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="list.do"/>
</c:if>	

















