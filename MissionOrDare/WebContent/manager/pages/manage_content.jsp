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
    <title>게시글관리페이지</title>

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
        <form method="post" action="manage_content.do" name="contentho" onsubmit="return searchCheck1()">
            <label>
                <select class="form-control" name="option">
                    <option value="1" selected> ${str_mission_category} </option>
                    <option value="2">${str_content_writer}</option>
                    <option value="3">${str_title}</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="searchContent">
            </label>
            <button class="btn btn-primary" type="submit">${str_search}</button>
        </form>
        </section>
        <section>
            <table class="table">
                <thead>
                <th>${str_number}</th>
                <th>${str_mission_category}</th>
                <th>${str_user_nickname}</th>
                <th>${str_mission_title}</th>
                <th>${str_content_views}</th>
                <th>${str_content_like}</th>
                <th>${str_content_writedate}</th>
                </thead>
                <tbody>
                <c:forEach var="joinMissionInfoSuccessBoardDto" items="${joinMissionInfoSuccessBoardDtos}">
                <tr onclick="location.href='${pageContext.request.contextPath}/manage_content_info.do?success_board_id=${joinMissionInfoSuccessBoardDto.success_board_id}'">
                	<th>${joinMissionInfoSuccessBoardDto.success_board_id}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.large_category} / ${joinMissionInfoSuccessBoardDto.small_category}</th>
                	<th>${joinMissionInfoSuccessBoardDto.user_nickname}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.mission_title}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.views}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.likecount}</th>
                	<th> ${joinMissionInfoSuccessBoardDto.board_register_date}</th>
 				</tr>
 				</c:forEach>
                </tbody>
            </table>
        </section>
        <br><br>
        <section>
       
			<c:if test="${cnt gt 0}">
				<c:if test="${startPage gt pageBlock}">
					<a href="manage_content.do">[◀◀]</a>
					<a href="manage_content.do?pageNum=${startPage-pageBlock}">[◀]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i eq currentPage}"> 
						<b>[${i}]</b>				
					</c:if>
					<c:if test="${i ne currentPage}">
						<a href="manage_content.do?pageNum=${i}">[${i}]</a>				
					</c:if>
				</c:forEach>	
				<c:if test="${pageCount gt endPage}">
					<a href="manage_content.do?pageNum=${startPage+pageBlock}">[▶]</a>
					<a href="manage_content.do?pageNum=${pageCount}">[▶▶]</a>		
				</c:if>
			</c:if>        
		
        </section>
        
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
</body>
</html>
