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
    <title>카테고리관리페이지</title>

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
        <form method="post" action="manage_category.do" name="categoryho" onsubmit="return searchCheck()"> 
            <label>
                <input class="form-control" type="search" name="category">
   	       </label>
   	            <button class="btn btn-primary btn-search" type="submit">${str_search}</button>
  			</form>      
            	<button class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/manage_category_insert.do'">${str_category_categoryadd}</button>
        </section>
       <section>
            <table class="table">
                <thead>
                <th>${str_category_categoryId}</th>
                <th>${str_category_bigsorting}</th>
                <th>${str_category_smallsorting}</th>
                <th>${str_category_missionadd}<th>
                <th>${str_delete}</th>
                </thead>
                <tbody>
                <c:forEach var="missionCategoryDto" items="${missionCategoryDtos}">
                <tr onclick="location.href='${pageContext.request.contextPath}/manage_category_info.do'">
                	<th>${missionCategoryDto.mission_category_id}</th>
	                <th>${missionCategoryDto.large_category}</th>
	                <th>${missionCategoryDto.small_category}</th>
	                <th onclick="event.cancelBubble=true"><button class="btn btn-primary" name="category-insert"
                			onclick="location.href='${pageContext.request.contextPath}/manage_mission_insert.do'">${str_category_missionadd}</button></th>
               		<th onclick="event.cancelBubble=true"><button class="btn btn-danger" name="category-delete" 
                			onclick="location.href='${pageContext.request.contextPath}/manage_category_deletePro.do?id=${missionCategoryDto.mission_category_id}'">${str_delete}</button></th>
                </tr>
                </c:forEach>
	            
                </tbody>
            </table>
            <br>
            <c:if test="${category eq null}">
	            <c:if test="${cnt gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="manage_category.do">[◀◀]</a>
						<a href="manage_category.do?pageNum=${startPage-pageBlock}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i eq currentPage}"> 
							<b>[${i}]</b>				
						</c:if>
						<c:if test="${i ne currentPage}">
							<a href="manage_category.do?pageNum=${i}">[${i}]</a>				
						</c:if>
					</c:forEach>	
					<c:if test="${pageCount gt endPage}">
						<a href="manage_category.do?pageNum=${startPage+pageBlock}">[▶]</a>
						<a href="manage_category.do?pageNum=${pageCount}">[▶▶]</a>		
					</c:if>	
				</c:if>
			</c:if>
			<c:if test="${category ne null}">
	            <c:if test="${cnt gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="manage_category.do?category=${category}">[◀◀]</a>
						<a href="manage_category.do?pageNum=${startPage-pageBlock}&category=${category}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i eq currentPage}"> 
							<b>[${i}]</b>				
						</c:if>
						<c:if test="${i ne currentPage}">
							<a href="manage_category.do?pageNum=${i}&category=${category}">[${i}]</a>				
						</c:if>
					</c:forEach>	
					<c:if test="${pageCount gt endPage}">
						<a href="manage_category.do?pageNum=${startPage+pageBlock}&category=${category}">[▶]</a>
						<a href="manage_category.do?pageNum=${pageCount}&category=${category}">[▶▶]</a>		
					</c:if>	
				</c:if>
			</c:if>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
</body>
</html>
