<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="../assets/css/manage.css">
    <script src="../assets/js/script.js"></script>
    <title>유저정보페이지</title>
</head>
<body>
<div class="container">
    <article>
        <section class="mission-info">
            <table class="table">
                <tr>
                    <th>유저닉네임</th>
                    <td><span>다리도비빔면</span></td>
                </tr>
                <tr>
                    <th>유저이메일</th>
                    <td>vkdnj4158@naver.com</td>
                </tr>
                <tr>
                    <th>유저패스워드</th>
                    <td>siginpingping2</td>
                </tr>
                <tr>
                    <th>유저성별</th>
                    <td>남자</td>
                </tr>
                <tr>
                    <th>유저생일</th>
                    <td>1994.12.17</td>
                </tr>
                <tr>
                    <th>유저집</th>
                    <td>서울</td>
                </tr>
                <tr>
                    <th>유저직업</th>
                    <td>언더코리안탑클래스노블레스래퍼</td>
                </tr>
                <tr>
                    <th>유저점수</th>
                    <td>350</td>
                </tr>
                <tr>
                    <th>유저탈퇴날짜</th>
                    <td></td>
                </tr>
                <tr>
                    <th>유저 관심분야1</th>
                    <td>운동</td>
                </tr>
                <tr>
                    <th>유저 관심분야2</th>
                    <td>예술</td>
                </tr>
                <tr>
                    <th>유저 관심분야3</th>
                    <td>음악</td>
                </tr>
                <tr>
                    <th>유저 관심분야4</th>
                    <td>등산</td>
                </tr>
                <tr>
                    <th>유저 가입일</th>
                    <td>2020/06/25</td>
                </tr>
                <tr>
                    <th class="btn-line" colspan="4">
                        <button class="btn-primary" onclick="location.href='manage_user_deletePro.jsp'">탈퇴</button>
                        <button class="btn-danger" onclick="history.back()">취소</button>
                    </th>
                </tr>
            </table>
        </section>
    </article>
</div>
</body>
</html>
