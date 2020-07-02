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
                    <option selected> ${str_mission_category} </option>
                    <option>${str_content_writer}</option>
                    <option>${str_title}</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="serch">
            </label>
            <button class="btn btn-primary">${str_search}</button>
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th>${str_number}</th>
                <th>${str_mission_category}</th>
                <th>${str_user_nickname}</th>
                <th>${str_mission_title}</th>
                <th>${str_content_views}</th>
                <th>${str_content_like}</th>
                <th>${str_content_writedate}</th>
                </thead>
                <tbody>
                <tr onclick="location.href='${pageContext.request.contextPath}/manage_content_info.do'">
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
