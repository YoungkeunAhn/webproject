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
        <form method="post" action="manage_message.do" name="messageho" onsubmit="return searchCheck4()">
            <label>
                <input class="form-control" type="search" name="searchUser" placeholder="유저닉네임을 입력하살법!">
            </label>
            <button class="btn btn-primary" type="submit" name="user-findinmessage">${str_search}</button>
        
        </form> 
           <button class="btn-primary" name="mission-delete"
                 onclick="location.href='${pageContext.request.contextPath}/manage_message_form.do'">${str_message_sendmessage}</button>
                
            <button class="btn-danger" name="mission-delete"
                 onclick="location.href='${pageContext.request.contextPath}/manage_message_deletePro.do'">${str_message_messagedelete}</button>
               
        </section>
        <section>
            <table class="table">
                <thead>
                <th>${str_message_checkbox}</th>
                <th>${str_message_sender}</th>
                <th>${str_message_content}</th>
                <th>${str_message_receiver}</th>
                <th>${str_message_senddate}</th>
                
                </thead>
                <tbody>
                <c:forEach var="joinNotesManagerDto" items="${joinNotesManagerDtos}">
                <tr>
                <th><input type="checkbox"></th>
                <th>${joinNotesManagerDto.sent_nickname}</th>
                <th>${joinNotesManagerDto.notes_contents}</th>
                <th>${joinNotesManagerDto.received_nickname}</th>
                <th>${joinNotesManagerDto.send_date}</th>
                <tr>
                </c:forEach>
                </tbody>
            </table>
        </section>
        <br>
        <section>
        <c:if test="${searchUser eq null}">
			<c:if test="${cnt gt 0}">
				<c:if test="${startPage gt pageBlock}">
					<a href="manage_message.do">[◀◀]</a>
					<a href="manage_message.do?pageNum=${startPage-pageBlock}">[◀]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i eq currentPage}"> 
						<b>[${i}]</b>				
					</c:if>
					<c:if test="${i ne currentPage}">
						<a href="manage_message.do?pageNum=${i}">[${i}]</a>				
					</c:if>
				</c:forEach>	
				<c:if test="${pageCount gt endPage}">
					<a href="manage_message.do?pageNum=${startPage+pageBlock}">[▶]</a>
					<a href="manage_message.do?pageNum=${pageCount}">[▶▶]</a>		
				</c:if>
			</c:if>        
		</c:if>
		
		<c:if test="${searchUser ne null}">
			<c:if test="${cnt gt 0}">
				<c:if test="${startPage gt pageBlock}">
					<a href="manage_message.do?searchUser=${searchUser}">[◀◀]</a>
					<a href="manage_message.do?pageNum=${startPage-pageBlock}&searchUser=${searchUser}">[◀]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i eq currentPage}"> 
						<b>[${i}]</b>				
					</c:if>
					<c:if test="${i ne currentPage}">
						<a href="manage_message.do?pageNum=${i}&searchUser=${searchUser}">[${i}]</a>				
					</c:if>
				</c:forEach>	
				<c:if test="${pageCount gt endPage}">
					<a href="manage_message.do?pageNum=${startPage+pageBlock}&searchUser=${searchUser}">[▶]</a>
					<a href="manage_message.do?pageNum=${pageCount}&searchUser=${searchUser}">[▶▶]</a>		
				</c:if>
			</c:if>        
		</c:if>
		
        </section>
    </article>
    <%@include file="manage_footer.jsp"%>
</div>
</body>
</html>