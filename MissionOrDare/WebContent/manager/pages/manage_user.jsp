<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="../assets/css/manage.css">
    <script src="../assets/js/script.js"></script>
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
            <label>
                <input class="form-control" type="search" name="serch" placeholder="유저 닉네임을 입력하셈">
            </label>
            <button class="btn-primary" name="user-findinuser">유저조회하기</button>
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th>카카오톡 아이디</th>
                <th>닉네임</th>
                <th>관심사</th>
                <th>가입날짜</th>
                <th>유저정보조회</th>
                </thead>
                <tbody>
                <th>vkdnj4158@naver.com</th>
                <th>다리도비빔면</th>
                <th>운동,미술,음악,사진찍기</th>
                <th>2020/06/25</th>
                <th><button class="btn-danger" name="mission-delete"  
                onclick="location.href='manage_user_info.jsp'">유저상세보기</button> </th>
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