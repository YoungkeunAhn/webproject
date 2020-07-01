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
    <title>미션관리페이지</title>

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
                    <option selected> ${manage_mission_category} </option>
                    <option>${manage_title}</option>
                    <option>${manage_mission_content}</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="serch">
            </label>
            <button class="btn btn-primary btn-search">${manage_search}</button>
            <button class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/manage_mission_insert.do'">미션추가</button>
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th>${manage_number}</th>
                <th>${manage_mission_category}</th>
                <th>${manage_title}</th>
                <th>${manage_mission_avg}</th>
                <th>${manage_delete}</th>
                </thead>
                <tbody onclick="location.href='${pageContext.request.contextPath}/manage_mission_info.do'">
                <th>1</th>
                <th>미술/그리기</th>
                <th>라이언이 부탁한 자화상</th>
                <th>3.5</th>
                <th><button class="btn-danger" name="mission-delete">삭제</button> </th>
                </tbody>
            </table>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
</body>
</html>
