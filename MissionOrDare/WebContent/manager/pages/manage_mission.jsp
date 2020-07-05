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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>
    <title>미션관리페이지</title>

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
        <form method="post" action="manage_mission.do" name="missionho" onsubmit="return searchCheck2()">
            <label>
                <select class="form-control">
                    <option value="1" selected> ${str_mission_category}</option>
                    <option value="2">${str_title}</option>
                    <option value="3">${str_mission_content}</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="mission">
            </label>
            <button class="btn btn-primary btn-search" type="submit">${str_search}</button>
        </form>   
            <button class="btn btn-success" onclick="OnMissionInsertModal()">미션추가</button>
        </section>
        <section>
            <table class="table">
                <thead>
                <th>${str_number}</th>
                <th>${str_mission_category}</th>
                <th>${str_title}</th>
                <th>${str_mission_avg}</th>
                <th>${str_delete}</th>
                </thead>
                <tbody>
              	  <c:forEach var="missionCategoryAndInfoDto" items="${missionCategoryAndInfoDtos}">
	                 <tr>
		                <th onclick="OnInfoModal()">${missionCategoryAndInfoDto.mission_info_id}</th>
		                <th onclick="OnInfoModal()">${missionCategoryAndInfoDto.large_category}/${missionCategoryAndInfoDto.small_category}</th>
		                <th onclick="OnInfoModal()">${missionCategoryAndInfoDto.mission_title}</th>
		                <th onclick="OnInfoModal()">${missionCategoryAndInfoDto.mission_avg_score}</th>
		                <th onclick="event.cancelBubble=true"><button class="btn btn-danger" name="missionDelete" 
                			onclick="location.href='${pageContext.request.contextPath}/manage_mission_deletePro.do?id=${missionCategoryDto.mission_category_id}'">${str_delete}</button></th>
	                </tr>
	              </c:forEach>
                </tbody>
            </table>
            <c:if test="${mission eq null}">
	            <c:if test="${cnt gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="manage_mission.do">[◀◀]</a>
						<a href="manage_mission.do?pageNum=${startPage-pageBlock}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i eq currentPage}"> 
							<b>[${i}]</b>				
						</c:if>
						<c:if test="${i ne currentPage}">
							<a href="manage_mission.do?pageNum=${i}">[${i}]</a>				
						</c:if>
					</c:forEach>	
					<c:if test="${pageCount gt endPage}">
						<a href="manage_mission.do?pageNum=${startPage+pageBlock}">[▶]</a>
						<a href="manage_mission.do?pageNum=${pageCount}">[▶▶]</a>		
					</c:if>	
				</c:if>
			</c:if>
			<c:if test="${mission ne null}">
	            <c:if test="${cnt gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="manage_mission.do?mission=${mission}">[◀◀]</a>
						<a href="manage_mission.do?pageNum=${startPage-pageBlock}&mission=${mission}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i eq currentPage}"> 
							<b>[${i}]</b>				
						</c:if>
						<c:if test="${i ne currentPage}">
							<a href="manage_mission.do?pageNum=${i}&mission=${mission}">[${i}]</a>				
						</c:if>
					</c:forEach>	
					<c:if test="${pageCount gt endPage}">
						<a href="manage_mission.do?pageNum=${startPage+pageBlock}&mission=${mission}">[▶]</a>
						<a href="manage_mission.do?pageNum=${pageCount}&mission=${mission}">[▶▶]</a>		
					</c:if>	
				</c:if>
			</c:if>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
<div id="missionInfoModal" class="modal">
</div>
<script>
    $(document).ready(function () {
            $('#missionInfoModal').load('manage_mission_info.do');
        }
    );
</script>
<div id="missionInsertModal" class="modal">
</div>
<script>
    $(document).ready(function () {
            $('#missionInsertModal').load('manage_mission_insert.do');
        }
    );
</script>
</body>
</html>