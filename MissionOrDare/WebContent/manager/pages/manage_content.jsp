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
    <title>게시글관리페이지</title>

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
                    <option selected> 카테고리 </option>
                    <option>작성자</option>
                    <option>제목</option>
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
                <th>번호</th>
                <th>카테고리</th>
                <th>닉네임</th>
                <th>미션제목</th>
                <th>조회수</th>
                <th>좋아요</th>
                <th>작성일</th>
                </thead>
                <tbody>
                <tr onclick="location.href='manage_content_info.jsp'">
                    <th>1</th>
                    <th>미술/그리기</th>
                    <th>KIMONG</th>
                    <th>라이언이 부탁한 자화상</th>
                    <th>14142</th>
                    <th>111</th>
                    <th>2020-06-29</th>
                </tr>
                </tbody>
            </table>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
</body>
</html>
