<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>



{
	usersDtos : [
		<c:forEach var="usersDto" items="${usersDtos}">
		{
			user_nickname : '${usersDto.user_nickname}',
		},
		</c:forEach>	
	],
	
	largeCategoryDtos : [
		<c:forEach var="largeCategoryDto" items="${largeCategoryDtos}">
		{
			large_category : '${largeCategoryDto.large_category}',
		},
		</c:forEach>	
	],
	
	categoryDtos : [
		<c:forEach var="categoryDto" items="${categoryDtos}">
		{
			large_category : '${categoryDto.large_category}',
			small_category : '${categoryDto.small_category}',
		},
		</c:forEach>	
	],
	smallCategoryDtos : [
		<c:forEach var="smallCategoryDto" items="${smallCategoryDtos}">
		{
			large_category : '${smallCategoryDto.large_category}',
			small_category : '${smallCategoryDto.small_category}',
		},
		</c:forEach>	
	]
}
