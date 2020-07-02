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
    <title>유저정보페이지</title>
</head>
<body>
<div class="container">
    <article>
        <section class="mission-info">
            <table class="table">
                <tr>
                    <th>${str_user_nickname}</th>
                    <td><span>${usersDto.user_nickname}</span></td>
                </tr>
                <tr>
                    <th>${str_user_kakaoId}</th>
                    <td>${usersDto.user_email}</td>
                </tr>
                <tr>
                    <th>${str_user_passwd}</th>
                    <td>${usersDto.user_passwd}</td>
                </tr>
                <tr>
                    <th>${str_user_gender}</th>
                    <td>${usersDto.gender}</td>
                </tr>
                <tr>
                    <th>${str_user_withdrawal_date}</th>
                    <td>${usersDto.withdrawal_date}</td>
                </tr>
                <tr>
                    <th>${str_user_location}</th>
                    <td>${usersDto.location}</td>
                </tr>
                <tr>
                    <th>${str_user_job}</th>
                    <td>${usersDto.job}</td>
                </tr>
                <tr>
                    <th>${str_user_score}</th>
                    <td>${usersDto.score}</td>
                </tr>
                <tr>
                    <th>${str_user_withdrawal_date}</th>
                    <td>${usersDto.withdrawal_date}</td>
                </tr>
                <tr>
                    <th>${str_user_interesting1}</th>
                    <td>${usersDto.interesting1_large_category}</td>
                </tr>
                <tr>
                    <th>${str_user_interesting2}</th>
                    <td>${usersDto.interesting2_large_category}</td>
                </tr>
                <tr>
                    <th>${str_user_interesting3}</th>
                    <td>${usersDto.interesting3_large_category}</td>
                </tr>
                <tr>
                    <th>${str_user_interesting4}</th>
                    <td>${usersDto.interesting4_large_category}</td>
                </tr>
                <tr>
                    <th>${str_user_joindate}</th>
                    <td>${usersDto.sign_up_date}</td>
                </tr>
                <tr>
                    <th class="btn-line" colspan="4">
                        <button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/manage_user_deletePro.do?user_nickname=${usersDto.user_nickname}'">탈퇴</button>
                        <button class="btn btn-danger" onclick="history.back()">취소</button>
                    </th>
                </tr>
            </table>
        </section>
    </article>
</div>
</body>
</html>
