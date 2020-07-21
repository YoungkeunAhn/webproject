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
    <link rel="stylesheet" href="${project}assets/css/manage.css">
    
    
    <!-- 디자인 css -->
  	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Barlow+Condensed:900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${project}assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${project}assets/css/animate.css">
    
    <link rel="stylesheet" href="${project}assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${project}assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${project}assets/css/magnific-popup.css">

    <link rel="stylesheet" href="${project}assets/css/aos.css">

    <link rel="stylesheet" href="${project}assets/css/ionicons.min.css">

    <link rel="stylesheet" href="${project}assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${project}assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${project}assets/css/flaticon.css">
    <link rel="stylesheet" href="${project}assets/css/icomoon.css">
    <link rel="stylesheet" href="${project}assets/css/style.css">
  	
  	
    <!-- js -->
    <script src="${project}assets/js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>쪽지관리페이지</title>
	
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
	  
	  
	  <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('${project}images/bg_3.jpg'); style="height:550px;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end" style="height:550px;">
          <div class="col-md-9 ftco-animate pb-5">
            <h2 class="mb-3 bread">쪽지관리</h2>
            <p class="breadcrumbs"><span class="mr-2"><a href="${pageContext.request.contextPath}/index.do">Home > </a></span> <span>쪽지관리 > </span></p>
          </div>
        </div>
      </div>
    </section>
	  
   
        <section class="mission-search">
        <form method="post" action="manage_message.do" name="messageho" onsubmit="return searchCheck4()">
            <label>
                <input class="form-control" type="search" name="searchUser" placeholder="유저닉네임을 입력하세요">
            </label>
            <button class="btn btn-primary" type="submit" name="user-findinmessage">${str_search}</button>
        
        </form> 
        <form action="manage_message_deletePro.do" method="post">
        	<button class="btn btn-primary" type="button" name="message-send" onclick="location.href='manage_message_sendForm.do'">${str_message_sendmessage}</button>
           	<button class="btn btn-danger" type="submit" >${str_message_messagedelete}</button>
            <table class="table">
                <thead>
                <th><input type="checkbox" id="select_all"></th>
                <th>${str_message_sender}</th>
                <th>${str_message_content}</th>
                <th>${str_message_receiver}</th>
                <th>${str_message_senddate}</th>
                
                </thead>
               <tbody>
                <c:forEach var="joinNotesManagerDto" items="${joinNotesManagerDtos}" varStatus="loop">
                <input type="hidden" name="notesContents" value="${joinNotesManagerDto.notes_contents}">
                <tr>
                <th><input type="checkbox" name="message_check" value="${joinNotesManagerDto.notes_id}"></th>
                <th>${joinNotesManagerDto.sent_nickname}</th>
                <th>${joinNotesManagerDto.notes_contents}</th>
                <th>${joinNotesManagerDto.received_nickname}</th>
                <th>${joinNotesManagerDto.send_date}</th>
                <tr>
                </c:forEach>
                </tbody>
            </table>
            
           </form>
       </section>
        
        <br>
        <section>
        <c:if test="${searchUser eq null}">
         <c:if test="${cnt gt 0}">
            <c:if test="${startPage gt pageBlock}">
               <a href="manage_message.do">[◀◀]</a>
               <a href="manage_message.do?pageNum=${startPage-pageBlock}">[◀]</a>
            </c:if>
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
               <c:if test="${i eq currentPage}"> 
                  <b>[${i}]</b>            
               </c:if>
               <c:if test="${i ne currentPage}">
                  <a href="manage_message.do?pageNum=${i}">[${i}]</a>            
               </c:if>
            </c:forEach>   
            <c:if test="${pageCount gt endPage}">
               <a href="manage_message.do?pageNum=${startPage+pageBlock}">[▶]</a>
               <a href="manage_message.do?pageNum=${pageCount}">[▶▶]</a>      
            </c:if>
         </c:if>        
      </c:if>
      
      <c:if test="${searchUser ne null}">
         <c:if test="${cnt gt 0}">
            <c:if test="${startPage gt pageBlock}">
               <a href="manage_message.do?searchUser=${searchUser}">[◀◀]</a>
               <a href="manage_message.do?pageNum=${startPage-pageBlock}&searchUser=${searchUser}">[◀]</a>
            </c:if>
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
               <c:if test="${i eq currentPage}"> 
                  <b>[${i}]</b>            
               </c:if>
               <c:if test="${i ne currentPage}">
                  <a href="manage_message.do?pageNum=${i}&searchUser=${searchUser}">[${i}]</a>            
               </c:if>
            </c:forEach>   
            <c:if test="${pageCount gt endPage}">
               <a href="manage_message.do?pageNum=${startPage+pageBlock}&searchUser=${searchUser}">[▶]</a>
               <a href="manage_message.do?pageNum=${pageCount}&searchUser=${searchUser}">[▶▶]</a>      
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

<div id="userMessageModal" class="modal">
</div>


<script>
function sendMessageUser(id) {
    $('#userMessageModal').load('manage_message_user_form.do',{nickname:id},"");
}
$(document).ready(function(){
	$("#select_all").click(function(){
		//클릭이 되었을 때
		if($("#select_all").prop("checked")){
			$("input[name=message_check]").prop("checked",true);
		}else{
			$("input[name=message_check]").prop("checked",false);
		}
	})
});
</script>
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