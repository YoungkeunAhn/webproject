<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" content="text/css" href="assets/css/manage.css">
  <script src="assets/js/script.js"></script>
  <title>관리자 메인 페이지</title>
</head>

<body>
<div class="container">
  <header>
        <a href="../index.jsp">
            <img class="logo" src="images/logo.jpg" alt="logo">
            <span class="logo">Mission or Dare</span>
        </a>
        <button id="myBtn" class="btb btn-primary" onclick='document.getElementById("myModal").style.display="block"'>Login</button>
        <button class="btb btn-primary">Logout</button>
    </header>
  <nav>
    <a href="pages/manage_mission.jsp"><div class="col-md-2"><span>미션관리</span></div></a>
    <a href="pages/manage_content.jsp"><div class="col-md-2"><span>게시글관리</span></div></a>
    <a href="pages/manage_user.jsp"><div class="col-md-2"><span>유저관리</span></div></a>
    <a href="pages/manage_report.jsp"><div class="col-md-2"><span>신고관리</span></div></a>
    <a href="pages/manage_message.jsp"><div class="col-md-2"><span>쪽지관리</span></div></a>
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
    <form name="loginform" action="pages/manage_loginPro.jsp" onsubmit="return logincheck()">
      <ul>
        <li><i class="fas fa-user-circle"></i></li>
        <li><span class="title">관리자 로그인</span></li>
        <li><label><input type="text" name="id" placeholder="아이디" autofocus></label></li>
        <li><label><input type="password" name="passwd" placeholder="비밀번호"></label></li>
        <li><button class="btn btn-primary" type="submit" onclick="manageLogin()">로그인</button></li>
      </ul>
    </form>
  </div>
</div>

</body>
</html>