<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${project}asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="${project}asset/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
    <title>마이미션뷰 페이지</title>
</head>
<body>
<div class="container">
    <article>
        <section class="mission-info-view">
            <input id="mission_id" type="hidden" value="testValue">
            <label>미션제목이다이놈아</label>
            <img src="${project}images/mission_image.png" alt="mission-image">
            <ul>
                <li>미션 성공 조건</li>
                <li>미션의 대한 내용이 들어갈 예정입니다.</li>
                <li>사진 혹은 동영상으로 인증하기</li>
                <li>자신이란걸 꼭 표시하기</li>
            </ul>
            <div class="btn-line">
                <button type="button" class="btn btn-primary" onclick="MyMissionGet()">미션수락</button>
                <button type="button" class="btn btn-danger" onclick="location.href='user_missionGetPro.do?mission_level=1&mission_challenge=1'">다시받기</button>
            </div>
        </section>
    </article>
</div>
</body>
</html>
