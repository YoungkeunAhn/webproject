<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>



{
	usersDtos : [
		<c:forEach var="usersDtos" items="${usersDtos}">
		{
			user_nickname : '${usersDtos.user_nickname}',
		},
		</c:forEach>	
	]
}
