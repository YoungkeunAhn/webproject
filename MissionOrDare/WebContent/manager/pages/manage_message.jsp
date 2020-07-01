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
    <title>쪽지관리페이지</title>

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
                <input class="form-control" type="search" name="serch" placeholder="유저닉네임을 입력하살법!">
            </label>
            <button class="btn btn-primary" name="user-findinmessage">${manage_search}</button>
           <button class="btn-primary" name="mission-delete"
                 onclick="location.href='${pageContext.request.contextPath}/manage_message_form.do'">${manage_message_sendmessage}</button>
                
            <button class="btn-danger" name="mission-delete"
                 onclick="location.href='${pageContext.request.contextPath}/manage_message_deletePro.do'">${manage_message_messagedelete}</button>
                
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th>${manage_message_checkbox}</th>
                <th>${manage_message_sender}</th>
                <th>${manage_message_content}</th>
                <th>${manage_message_receiver}</th>
                <th>${manage_message_senddate}</th>
                
                </thead>
                <tbody>
                <th><input type="checkbox"></th>
                <th>다리도비빔면</th>
                <th>요새누가 팔을비비냐 다리비비지</th>
                <th>팔도비빔면</th>
                <th>2020/07/01</th>
                
                </tbody>
            </table>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
</body>
</html>