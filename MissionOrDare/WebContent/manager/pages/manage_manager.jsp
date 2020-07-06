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
    <title>관리자관리페이지</title>

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
        <section class="manager-search">
        <form method="post" action="manage_manager.do" name="managerho" onsubmit="return searchCheck5()">
            <label>
                <input class="form-control" type="search" name="managerNickname" placeholder="관리자 닉네임을 입력하셈">
            </label>
            <button class="btn btn-primary" name="search-findManager">검색</button>
        </form>
        </section>
        <section class="manager-insert">
        	<form method="post" name="managerLoginCheck" action="${pageContext.request.contextPath}/manage_manager_insertPro.do"
        	onsubmit="return logincheck1()">
        		<table class="table">
        			<tr>
        				<th>아이디</th>
        				<th>
        					<label><input class="form-control" type="text" name="manager_id"></label>
        				</th>
        				<th>비밀번호</th>
        				<th>
        					<label><input class="form-control" type="password" name="manager_passwd"></label>
        				</th>
       					<th colspan="2">
       						<button class="btn btn-primary" type="submit">등록</button>
       						<button class="btn btn-danger" type="reset">취소</button>
       					</th>
					</tr>        			
        		</table>
        	</form>
        </section>
        <hr>
        <section class="manager-table">
        	<form method="post" action="manage_manager_deletePro.do" name="supermanagerho" onsubmit="return managepasswdcheck()" >
            <table class="table">
                <thead>
                <th>${str_supermanager_name}</th>
                <th>${str_supermanager_passwd}</th>
                <th>${str_supermanager_delete}</th>
                </thead>
                <tbody>
                <c:forEach var="ManagerDto" items="${managerDto}">
                <tr>
	                <th>${ManagerDto.manager_id}</th>
	                <th>${ManagerDto.manager_passwd}</th>
	                <th onclick="event.cancelBubble=true"><button class="btn btn-danger" name="managerdelete"  
	                onclick="location.href='${pageContext.request.contextPath}/manage_manager_deletePro.do?manager_id=${ManagerDto.manager_id}'">삭제</button></th>
                </tr>
                </tbody>
              	</c:forEach>
                 
                <!--
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
                			onclick="OnMissionInsertModal()">${str_category_missionadd}</button></th>
               		<th> </th>
               		<th onclick="event.cancelBubble=true"><button class="btn btn-danger" name="category-delete" 
                			onclick="location.href='${pageContext.request.contextPath}/manage_category_deletePro.do?id=${missionCategoryDto.mission_category_id}'">${str_delete}</button></th>
                </tr>
                </c:forEach>
                -->
                
            </table>
            <br>
				<c:if test="${cnt gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="manage_manager.do">[◀◀]</a>
						<a href="manage_manager.do?pageNum=${startPage-pageBlock}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i eq currentPage}"> 
							<b>[${i}]</b>				
						</c:if>
						<c:if test="${i ne currentPage}">
							<a href="manage_manager.do?pageNum=${i}">[${i}]</a>				
						</c:if>
					</c:forEach>	
					<c:if test="${pageCount gt endPage}">
						<a href="manage_manager.do?pageNum=${startPage+pageBlock}">[▶]</a>
						<a href="manage_manager.do?pageNum=${pageCount}">[▶▶]</a>		
					</c:if>
				</c:if>

            </form>
        </section>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>
</body>
</html>