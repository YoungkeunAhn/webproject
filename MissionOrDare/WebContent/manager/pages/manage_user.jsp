<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="${project}assets/css/manage.css">
    <script src="${project}assets/js/script.js"></script>
    <title>유저관리페이지</title>

</head>
<body>
<div class="container">
    <div>
        <%@include file="manage_header.jsp"%>
    </div>
    <div>
        <%@include file="manage_nav.jsp"%>
    </div>
    <article>
        <section class="mission-search">
        	<form method="post" action="manage_user.do" name="userho" onsubmit="return userCheck()">
            <label>
                <input class="form-control" type="search" name="searchUser" placeholder="유저 닉네임을 입력하세요">
            </label>
            <button class="btn btn-primary" type="submit" name="user-findinuser">${str_search}</button>
        	</form>
        </section>
        <section>
            <table class="table">
                <thead>
                <th>${str_user_kakaoId}</th>
                <th>${str_user_nickname}</th>
                <th>${str_user_interesting}</th>
                <th>${str_user_joindate}</th>
                <th>${str_user_findinfo}</th>
                </thead>
            	
                <tbody>
                <c:forEach var="usersDto" items="${usersDtos}">
                <tr>
                	<td> ${usersDto.user_email}</td>
                	<td>${usersDto.user_nickname}</td>
                	<td>${usersDto.interesting1_large_category} ${usersDto.interesting2_large_category} ${usersDto.interesting3_large_category} ${usersDto.interesting4_large_category}</td>
                	<td>${usersDto.sign_up_date}</td>
                	<td> <button type="button" class="btn btn-danger" name="mission-delete" 
                onclick="location.href='${pageContext.request.contextPath}/manage_user_info.do?user_nickname=${usersDto.user_nickname}'">${str_user_userdetail}</button> </td>
 				</tr>
 				</c:forEach>
 				</tbody>
            </table>
        </section>
        <br>
        <section>
        <c:if test="${searchUser eq null}">
			<c:if test="${cnt gt 0}">
				<c:if test="${startPage gt pageBlock}">
					<a href="manage_user.do">[◀◀]</a>
					<a href="manage_user.do?pageNum=${startPage-pageBlock}">[◀]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i eq currentPage}"> 
						<b>[${i}]</b>				
					</c:if>
					<c:if test="${i ne currentPage}">
						<a href="manage_user.do?pageNum=${i}">[${i}]</a>				
					</c:if>
				</c:forEach>	
				<c:if test="${pageCount gt endPage}">
					<a href="manage_user.do?pageNum=${startPage+pageBlock}">[▶]</a>
					<a href="manage_user.do?pageNum=${pageCount}">[▶▶]</a>		
				</c:if>
			</c:if>        
		</c:if>
		
		<c:if test="${searchUser ne null}">
			<c:if test="${cnt gt 0}">
				<c:if test="${startPage gt pageBlock}">
					<a href="manage_user.do?searchUser=${searchUser}">[◀◀]</a>
					<a href="manage_user.do?pageNum=${startPage-pageBlock}&searchUser=${searchUser}">[◀]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i eq currentPage}"> 
						<b>[${i}]</b>				
					</c:if>
					<c:if test="${i ne currentPage}">
						<a href="manage_user.do?pageNum=${i}&searchUser=${searchUser}">[${i}]</a>				
					</c:if>
				</c:forEach>	
				<c:if test="${pageCount gt endPage}">
					<a href="manage_user.do?pageNum=${startPage+pageBlock}&searchUser=${searchUser}">[▶]</a>
					<a href="manage_user.do?pageNum=${pageCount}&searchUser=${searchUser}">[▶▶]</a>		
				</c:if>
			</c:if>        
		</c:if>
		
        </section>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>
</body>
</html>