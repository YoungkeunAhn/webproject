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
    <title>미션정보페이지</title>
</head>
<body>
<div class="container">
    <article>
        <section class="mission-info">
            <table class="table">
                <tr>
                    <th>미션번호</th>
                    <td><span>4885</span></td>
                </tr>
                <tr>
                    <th><span>카테고리</span></th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th>제목</th>
                    <td>라이언이 부탁한 자화상</td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>라이언 이모티콘을 그려서 인증해보세요</td>
                </tr>
                <tr>
                    <th>난이도</th>
                    <td>1</td>
                </tr>
                <tr>
                    <th>점수</th>
                    <td>10</td>
                </tr>
                <tr>
                    <th>종류</th>
                    <td>일반</td>
                </tr>
                <tr>
                    <th>장소</th>
                    <td>실내</td>
                </tr>
                <tr>
                    <th>미션평점</th>
                    <td>3.5</td>
                </tr>
                <tr>
                    <th>미션 승락 횟수</th>
                    <th>미션 거절 횟수</th>
                </tr>
                <tr>
                    <td>32</td>
                    <td>11</td>
                </tr>
                <tr>
                    <th class="btn-line" colspan="4">
                        <button class="btn-primary" onclick="location.href='${pageContext.request.contextPath}/manage_mission_update.do'">수정하기</button>
                        <button class="btn-danger" onclick="history.back()">취소</button>
                    </th>
                </tr>
            </table>
        </section>
    </article>
</div>
</body>
</html>
