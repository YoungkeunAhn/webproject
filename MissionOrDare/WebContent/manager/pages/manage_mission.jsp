<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>
<html>
<head>
    <!-- meta 태그 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${project}assets/manage.css">

    <!-- js -->
    <script src="${project}assets/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>미션관리페이지</title>
	
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/index.do">mod</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_category.do" class="nav-link">${str_category}</a></li>
	        	<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_mission.do" class="nav-link">${str_mission}</a></li>
	          	<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_content.do" class="nav-link">${str_board}</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_user.do" class="nav-link">${str_user}</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_report.do" class="nav-link">${str_report}</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_message.do" class="nav-link">${str_message}</a></li>
				
				<!-- super 관리자 아이디 확인 -->
				<c:set var="super_id" value="super"/>
				<c:if test="${sessionScope.memId eq super_id}">
				<li class="nav-item"><a href="${pageContext.request.contextPath}/manage_manager.do" class="nav-link">관리페이지</a></li>
				</c:if>
				
				<!-- 로그인 안되어있으면 로그인 버튼 생성 -->
				<c:if test="${sessionScope.memId eq null or sessionScope.memId eq ''}">
				<li class="nav-item" onclick='document.getElementById("myModal").style.display="block"'>
					<a class="nav-link">${str_header_login}</a></li>
				</c:if>
				
				<!-- 로그인 되어있으면 로그아웃 버튼 생성 -->
				<c:if test="${sessionScope.memId ne null and !sessionScope.memId ne ''}">
				<li class="nav-item"><a href="logout.do" class="nav-link">${str_header_logout}</a></li>
				</c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>

    
        <section class="mission-search">
        <form method="post" action="manage_mission.do" name="missionho" onsubmit="return searchCheck2()">
            <label>
                <select class="form-control" name="option">
                    <option value="1"> ${str_mission_category}</option>
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
	                 <tr id="missioninfo" onclick="location.href='manage_mission_info.do?id=${missionCategoryAndInfoDto.mission_info_id}'">
		                <th id="mission_info_id">${missionCategoryAndInfoDto.mission_info_id}</th>
		                <th>${missionCategoryAndInfoDto.large_category}/${missionCategoryAndInfoDto.small_category}</th>
		                <th>${missionCategoryAndInfoDto.mission_title}</th>
		                <th>${missionCategoryAndInfoDto.mission_avg_score}</th>
		                <th onclick="event.cancelBubble=true"><button class="btn btn-danger" name="missionDelete" 
                			onclick="location.href='${pageContext.request.contextPath}/manage_mission_deletePro.do?id=${missionCategoryAndInfoDto.mission_info_id}'">${str_delete}</button></th>
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
    
    <footer class="ftco-footer ftco-section" style="padding:50px 0;">
      <div class="container">
        
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
 			 Copyright &copy; 2020 All rights reserved | SimpleFun | Web Project</a>
 			</p>
          </div>
        </div>
      </div>
    </footer>
    
</div>

<div id="missionInsertModal" class="modal-bg hidden">
	<div class="modal-content">

	</div>
</div>

<script>
    $(document).ready(function () {
            $('#missionInsertModal > .modal-content').load('manage_mission_insert.do');
        }
    );
</script>
<script>
	const missionInsertModal = document.getElementById('missionInsertModal');
	function OnMissionInsertModal(){
		missionInsertModal.classList.remove('hidden');
	}
	missionInsertModal.addEventListener('click',function (){
		missionInsertModal.classList.add('hidden');
	},false)

</script>
</body>
<style>
	.hidden{
		display: none;
	}
</style>
</html>