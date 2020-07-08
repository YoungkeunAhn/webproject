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
                <input class="form-control" type="search" name="searchManager" placeholder="관리자 닉네임을 입력하세요">
            </label>
            <button class="btn btn-primary btn-search" type="submit" name="search_findManager">검색</button>
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
            <table class="table">
                <thead>
                <tr>
	                <th>${str_manager_id}</th>
	                <th>${str_manager_passwd}</th>
	                <th>${str_manager_delete}</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="managerDtos" items="${managerDtos}">
                <tr>
	                <td>${managerDtos.manager_id}</td>
	                <td>${managerDtos.manager_passwd}</td>
	                <td><button type="button" class="btn btn-danger" name="managerdelete"  
	                onclick="location.href='${pageContext.request.contextPath}/manage_manager_deletePro.do?manager_id=${managerDtos.manager_id}'">삭제</button></td>
                </tr>
                </c:forEach>
                </tbody>  
            </table>
        </section>

            <br>
      	 <section>
      	 	<c:if test="${searchManager eq null}">
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
			</c:if>
			
			<c:if test="${searchManager ne null}">
				<c:if test="${cnt gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="manage_manager.do?searchManager=${searchManager}">[◀◀]</a>
						<a href="manage_manager.do?pageNum=${startPage-pageBlock}&searchManager=${searchManager}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i eq currentPage}"> 
							<b>[${i}]</b>				
						</c:if>
						<c:if test="${i ne currentPage}">
							<a href="manage_manager.do?pageNum=${i}&searchManager=${searchManager}">[${i}]</a>				
						</c:if>
					</c:forEach>	
					<c:if test="${pageCount gt endPage}">
						<a href="manage_manager.do?pageNum=${startPage+pageBlock}&searchManager=${searchManager}">[▶]</a>
						<a href="manage_manager.do?pageNum=${pageCount}&searchManager=${searchManager}">[▶▶]</a>		
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