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
        <form method="post" action="manage_report.do" name="reportho" onsubmit="return searchCheck3()">
            <label>
                <select class="form-control">
                    <option>${str_report_selectoption}</option>
                    <option>${str_report_selectoption1}</option>
                    <option>${str_report_selectoption2}</option>
                    <option>${str_report_selectoption3}</option>
                    <option>${str_report_selectoption4}</option>
                    <option>${str_report_selectoption5}</option>
                    <option>${str_report_selectoption6}</option>
                </select>
            </label>
            <label>
                <input class="form-control" type="search" name="report" placeholder="신고 내용을 입력하세요">
            </label>
            <button class="btn btn-primary" type="submit">${str_search}</button>
        </form>
        </section>
        <section class="mission-table">
            <table class="table">
                <thead>
                <th>체크박스</th>
                <th>${str_user_nickname}</th>
                <th>${str_report_category}</th>
                <th>${str_report_type}</th>
                <th>신고내용</th>
                <th>${str_report_reportdate}</th>
                <th>메시지</th>
                </thead>
                <tbody>
                <th><input type="checkbox"></th>
                <th>kkoddakzzi</th>
                <th>KIMONG</th>
                <th>기타</th>
                <th>형님한테 언니라고 함ㅋ</th>
                <th>2020-06-04 16:09</th>
                <th>
                <button class="btn btn-danger" name="mission-delete"
                 onclick="OnSendMessage()">
                 ${str_message_sendmessage}</button></th>
                </tbody>
            </table>
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
<div id="reportMessageModal" class="modal">
</div>
<script>
    $(document).ready(function () {
            $('#reportMessageModal').load('manage_message_form.do');
        }
    );
</script>
</body>
</html>
