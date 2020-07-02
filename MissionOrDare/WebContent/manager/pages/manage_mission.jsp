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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>
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
        <form method="post" action="manage_mission.do" name="missionho" onsubmit="return searchCheck2()">
            <label>
                <select class="form-control">
                    <option selected> ${str_mission_category}</option>
                    <option>${str_title}</option>
                    <option>${str_mission_content}</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="src1">
            </label>
            <button class="btn btn-primary btn-search" type="submit">${str_search}</button>
           
            <button class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/manage_mission_insert.do'">미션추가</button>
        </form>
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th>${str_number}</th>
                <th>${str_mission_category}</th>
                <th>${str_title}</th>
                <th>${str_mission_avg}</th>
                <th>${str_delete}</th>
                </thead>
                <tbody>
                 <tr onclick="OnInfoModal()">
	                <th>1</th>
	                <th>미술/그리기</th>
	                <th>라이언이 부탁한 자화상</th>
	                <th>3.5</th>
	                <th><button class="btn btn-danger" name="missionDelete">${str_delete}</button> </th>
                </tr>
                </tbody>
            </table>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
<div id="missionInfoModal" class="modal">
</div>
<script>
    $(document).ready(function () {
            $('#missionInfoModal').load('manage_mission_info.do');
        }
    );
</script>
</body>
</html>
