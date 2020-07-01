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
    <title>신고관리페이지</title>

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
                <select class="form-control">
                    <option selected>신고 유형</option>
                    <option>욕설, 비방, 차별, 혐오</option>
                    <option>홍보, 영리목적</option>
                    <option>불법정보</option>
                    <option>음란, 청소년유해</option>
                    <option>도배, 스</option>
                    <option>기타</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="serch">
            </label>
            <button class="btn btn-primary">검색</button>
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th> </th>
                <th>닉네임</th>
                <th>신고 카테고리</th>
                <th>신고자 닉네임</th>
                <th>신고 날짜</th>
                <th>처리</th>
                </thead>
                <tbody>
                <th><input type="checkbox"></th>
                <th>kkoddakzzi</th>
                <th>KIMONG</th>
                <th>기타: 형님한테 언니라고 함ㅋ</th>
                <th>2020-06-04 16:09</th>
                <th><button class="btn-danger" name="mission-delete"
                 onclick="location.href='${pageContext.request.contextPath}/manage_message_form.do'">메시지보내기</button> </th>
                </tbody>
            </table>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
</body>
</html>
