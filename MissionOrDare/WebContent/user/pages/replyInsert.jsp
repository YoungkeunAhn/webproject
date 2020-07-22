<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

{
	result :  ${result},
	
	replyDtos : [
		<c:forEach var="replyDtos" items="${replyDtos}">
		{
			reply_id : '${replyDtos.reply_id}',
			user_nickname : '${replyDtos.user_nickname}',
			reply_contents : '${replyDtos.reply_contents}',
			reference : ${replyDtos.reference},
			reply_step : ${replyDtos.reply_step}		
		},
		</c:forEach>	
	]
}