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
    <link rel="stylesheet" content="text/css" href="${project}assets/manage.css">
    
  	
    <!-- js -->
    <script src="${project}assets/script.js"></script>
    <title>미션정보페이지</title>
    
    <style>
		.overlay{
		height: 500px;
		}
	</style>
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
	  
	  <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('${project}images/bg_3.jpg');" style="height:550px;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
            <h2 class="mb-3 bread">미션관리</h2>
            <p class="breadcrumbs"><span class="mr-2"><a href="${pageContext.request.contextPath}/index.do">Home > </a></span> <span>미션관리 > </span> <span>미션번호 : ${missionCategoryAndInfoDto.mission_info_id} > </span></p>
          </div>
        </div>
      </div>
    </section>
	  
	
	
	<article class="mission-info" style="z-index: 10;">
	    <form method="post" action="${pageContext.request.contextPath}/manage_mission_update.do">
	    <img src="/category/${missionCategoryAndInfoDto.category_image}">
	        <table class="table">
	        	 <tr>
	                <td>이미지</td>
	                <td><input readonly name="mission_info_id" value="${missionCategoryAndInfoDto.category_image}"></td>
	            </tr>
	            <tr>
	                <td>미션번호</td>
	                <td><input readonly name="mission_info_id" value="${missionCategoryAndInfoDto.mission_info_id}"></td>
	            </tr>
	            <tr>
	                <td><span>대분류</span></td>
	                <td><input readonly name="large_category" value="${missionCategoryAndInfoDto.large_category}"></td>
	            </tr>
	            <tr>
	                <td><span>소분류</span></td>
	                <td><input readonly name="small_category" value="${missionCategoryAndInfoDto.small_category}"></td>
	            </tr>
	            <tr>
	                <td>제목</td>
	                <td><input readonly name="mission_title" value="${missionCategoryAndInfoDto.mission_title}"></td>
	            </tr>
	            <tr>
	                <td>내용</td>
	                <td><input readonly name="mission_contents" value="${missionCategoryAndInfoDto.mission_contents}"></td>
	            </tr>
	            <tr>
	                <td>난이도</td>
	                <td><input readonly name="mission_level" value="${missionCategoryAndInfoDto.mission_level}"></td>
	            </tr>
	            <tr>
	                <td>점수</td>
	                <td><input readonly name="mission_success_score" value="${missionCategoryAndInfoDto.mission_success_score}"></td>
	            </tr>
	            <tr>
	                <td>종류</td>
	                <c:if test="${missionCategoryAndInfoDto.mission_level eq 4}">
	                	<c:set var="level" value="${'챌린지'}"/>
	               	</c:if>
	               	<c:if test="${missionCategoryAndInfoDto.mission_level ne 4}">
	                	<c:set var="level" value="${'일반'}"/>
	               	</c:if>
	                <td><input readonly name="mission_success_score" value="${level}"></td>
	                
	            </tr>
	            <tr>
	                <td>장소</td>
	                <td><input readonly name="mission_location" value="${missionCategoryAndInfoDto.mission_location}"></td>
	            </tr>
	            <tr>
	                <td>미션평점</td>
	                <td><input readonly name="mission_avg_score" value="${missionCategoryAndInfoDto.mission_avg_score}"></td>
	            </tr>
	            <tr>
	                <td>미션 승락 횟수</td>
	                <td><input readonly name="mission_accept_count" value="${missionCategoryAndInfoDto.mission_accept_count}"></td>
	            </tr>
	            <tr>
	                <td>미션 거절 횟수</td>
	                <td><input readonly name="mission_reject_count" value="${missionCategoryAndInfoDto.mission_reject_count}"></td>
	            </tr>
	            <tr>
	                <td class="btn-line" colspan="4">
	                    <button type="submit" class="btn btn-primary">수정하기</button>
	                    <button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/manage_mission.do'">닫기</button>
	                </td>
	            </tr>
	        </table>
        </form>
	</article>
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

<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${project}assets/js/jquery.min.js"></script>
  <script src="${project}assets/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${project}assets/js/popper.min.js"></script>
  <script src="${project}assets/js/bootstrap.min.js"></script>
  <script src="${project}assets/js/jquery.easing.1.3.js"></script>
  <script src="${project}assets/js/jquery.waypoints.min.js"></script>
  <script src="${project}assets/js/jquery.stellar.min.js"></script>
  <script src="${project}assets/js/owl.carousel.min.js"></script>
  <script src="${project}assets/js/jquery.magnific-popup.min.js"></script>
  <script src="${project}assets/js/aos.js"></script>
  <script src="${project}assets/js/jquery.animateNumber.min.js"></script>
  <script src="${project}assets/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${project}assets/js/google-map.js"></script>
  <script src="${project}assets/js/main.js"></script>
  	
</body>
</html>
