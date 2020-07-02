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
    <title>유저관리페이지</title>

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
        	<form method="post" action="amasdam.do" name="userho" onsubmit="return userCheck()">
            <label>
                <input class="form-control" type="search" name="search" placeholder="유저 닉네임을 입력하셈">
            </label>
            <button class="btn-primary" type="submit" name="user-findinuser">${str_search}</button>
        	</form>
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th>${str_user_kakaoId}</th>
                <th>${str_user_nickname}</th>
                <th>${str_user_interesting}</th>
                <th>${str_user_joindate}</th>
                <th>${str_user_findinfo}</th>
                </thead>
                <tbody>
                <th>vkdnj4158@naver.com</th>
                <th>다리도비빔면</th>
                <th>운동,미술,음악,사진찍기</th>
                <th>2020/06/25</th>
                <th><button class="btn btn-danger" name="mission-delete"  
                onclick="location.href='${pageContext.request.contextPath}/manage_user_info.do'">${str_user_userdetail}</button> </th>
                </tbody>
            </table>
        </section>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>
</body>
</html>