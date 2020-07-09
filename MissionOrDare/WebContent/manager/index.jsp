<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ include file="pages/manager_settings.jsp" %>
<!DOCTYPE html>
<html lang="ko">
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
  <title>관리자 메인 페이지</title>
</head>

<body>
<div class="container">
  <header>
        <a href="${pageContext.request.contextPath}/index.do">
            <img class="logo" src="${project}images/logo.png" alt="logo">
            <span class="logo">${str_header_mod}</span>
        </a>
        <button style="background-color:#d9edf7;" id="myBtn" class="btb btn-primary" onclick='document.getElementById("myModal").style.display="block"'>${str_header_login}</button>
        <button style="background-color:#d9edf7; border:0px" class="btn btn-primary" onclick="location.href='logout.do'">${str_header_logout}</button>
        <button style="background-color:#d9edf7; border:0px; display:none" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/manage_manager.do'"><span>관리페이지</span></button>
    </header>
    <input type="hidden" id='id' value="${sessionScope.memId}">
  <nav>
  	<a href="${pageContext.request.contextPath}/manage_category.do"><div class="col-md-2"><span>${str_category}</span></div></a>
    <a href="${pageContext.request.contextPath}/manage_mission.do"><div class="col-md-2"><span>${str_mission}</span></div></a>
    <a href="${pageContext.request.contextPath}/manage_content.do"><div class="col-md-2"><span>${str_board}</span></div></a>
    <a href="${pageContext.request.contextPath}/manage_user.do"><div class="col-md-2"><span>${str_user}</span></div></a>
    <a href="${pageContext.request.contextPath}/manage_report.do"><div class="col-md-2"><span>${str_report}</span></div></a>
    <a href="${pageContext.request.contextPath}/manage_message.do"><div class="col-md-2"><span>${str_message}</span></div></a>
  </nav>
  <article>
    <span>로그인 안했을 경우 로그인하라는 문구</span>
    <span>로그인 했을 경우 관리자 아이디 + 님이 관리자로 로그인했습니다</span>
  </article>
  <%@include file="pages/manage_footer.jsp"%>
</div>
<div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick='document.getElementById("myModal").style.display="none"'>&times;</span>
    <form name="loginform" action="${pageContext.request.contextPath}/manage_loginPro.do" onsubmit="return logincheck()">
      <ul>
        <li><i class="fas fa-user-circle"></i></li>
        <li><span class="title">${str_managerlogin}</span></li>
        <li><label><input type="text" name="manager_id" placeholder="아이디" autofocus></label></li>
        <li><label><input type="password" name="manager_passwd" placeholder="비밀번호"></label></li>
        <li><button class="btn btn-primary" type="submit">${str_header_login}</button></li>
      </ul>
    </form>
  </div>
</div>
<script type="text/javascript">
	//<!--
		$(document).ready(function() {
			if($('#id').val()){
				document.getElementById("myBtn").style.display="none";
			} 
		});
	//-->
</script>
</body>
</html>