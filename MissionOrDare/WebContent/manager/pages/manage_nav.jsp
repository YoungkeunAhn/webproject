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
    <title>nav</title>

</head>
<body>
<div class="container">
    <nav>
    	<a href="${pageContext.request.contextPath}/manage_category.do"><div class="col-md-2"><span>${str_category}</span></div></a>
        <a href="${pageContext.request.contextPath}/manage_mission.do"><div class="col-md-2"><span>${str_mission}</span></div></a>
        <a href="${pageContext.request.contextPath}/manage_content.do"><div class="col-md-2"><span>${str_board}</span></div></a>
        <a href="${pageContext.request.contextPath}/manage_user.do"><div class="col-md-2"><span>${str_user}</span></div></a>
        <a href="${pageContext.request.contextPath}/manage_report.do"><div class="col-md-2"><span>${str_report}</span></div></a>
        <a href="${pageContext.request.contextPath}/manage_message.do"><div class="col-md-2"><span>${str_message}</span></div></a>
    </nav>
</div>
</body>