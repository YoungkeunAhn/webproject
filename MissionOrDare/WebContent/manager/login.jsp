<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ include file="pages/manager_settings.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" content="text/css" href="${project}assets/css/manage.css">
  <script src="${project}assets/js/script.js"></script>
<title>관리자 로그인 페이지</title>
</head>
<body>
	<div class="loginFormPage">
		<form name="loginform" action="${pageContext.request.contextPath}/manage_loginPro.do" onsubmit="return logincheck()">
			<label>관리자 페이지</label>
			<section class="input-line">
				<span>아이디</span>
				<input class="form-control" type="text" name=manager_id autofocus>
				<span>비밀번호</span>
				<input class="form-control" type="password" name="manager_passwd">
			</section>
			<section class='btn-line'>
				<button class="btn btn-primary" type="submit">로그인</button>
				<button class="btn btn-danger" type="button" onclick="location.href='index.do'">취소</button>
			</section>
		</form>
	</div>
</body>
</html>