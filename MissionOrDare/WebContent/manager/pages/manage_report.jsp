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
                <select class="form-control" name="option" >
                    <option value="1" selected>${str_report_selectoption}</option>
                    <option value="2">${str_report_selectoption1}</option>
                    <option value="3">${str_report_selectoption2}</option>
                    <option value="4">${str_report_selectoption3}</option>
                    <option value="5">${str_report_selectoption4}</option>
                    <option value="6">${str_report_selectoption5}</option>
                    <option value="7">${str_report_selectoption6}</option>
                </select>
            </label>
            <button class="btn btn-primary" type="submit" name="searchReport">${str_search}</button>
            <label>
                <input class="form-control" type="search" name="searchNickname" placeholder="닉네임을 입력하세요">
            </label>
            <button class="btn btn-primary" type="submit">${str_search}</button>
        </form>
        </section>
        <section>
            <table class="table">
                <thead>
	                <th>${str_report_usernickname}</th>
	                <th>신고된 댓글id or 게시판id</th>
	                <th>신고받은 닉네임</th>
	                <th>${str_report_type}</th>
	                <th>신고내용</th>
	                <th>${str_report_reportdate}</th>
	                <th>메시지</th>
                </thead>
                <tbody>
	                <c:forEach var="reportBoardDto" items="${reportBoardDtos}">
	                <tr>
	                <th>${reportBoardDto.user_nickname}</th>
	                <th>${reportBoardDto.reported_board_id} ${reportBoardDto.reported_reply_id}</th>
	                <th>${reportBoardDto.reported_nickname}</th>
	                <th>${reportBoardDto.report_type}</th>
	                <th>${reportBoardDto.report_reason}</th>
	                <th>${reportBoardDto.report_date}</th>
	                <th>
	                <button class="btn btn-danger" name="mission-delete"
	                 onclick="OnSendMessage()">
	                 ${str_message_sendmessage}</button></th>
	                 </tr>
	                </c:forEach>
                </tbody>
            </table>
        </section>
        <br><br>
        <section>
			<c:if test="${cnt gt 0}">
				<c:if test="${startPage gt pageBlock}">
					<a href="manage_report.do">[◀◀]</a>
					<a href="manage_report.do?pageNum=${startPage-pageBlock}">[◀]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i eq currentPage}"> 
						<b>[${i}]</b>				
					</c:if>
					<c:if test="${i ne currentPage}">
						<a href="manage_report.do?pageNum=${i}">[${i}]</a>				
					</c:if>
				</c:forEach>	
				<c:if test="${pageCount gt endPage}">
					<a href="manage_report.do?pageNum=${startPage+pageBlock}">[▶]</a>
					<a href="manage_report.do?pageNum=${pageCount}">[▶▶]</a>		
				</c:if>
			</c:if>        
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
