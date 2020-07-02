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
    <title>관리자관리페이지</title>

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
        <section class="manager-search">
        <form method="post" action="manage_manager.do" name="managerho" onclick="return searchCheck5()">
            <label>
                <input class="form-control" type="search" name="serch" placeholder="관리자 닉네임을 입력하셈">
            </label>
            <button class="btn btn-primary" name="search-findManager">검색</button>
        </form>
        </section>
        <section class="manager-insert">
        	<form method="post" action="${pageContext.request.contextPath}/manage_manager_insertPro.do">
        		<table class="table">
        			<tr>
        				<th>아이디</th>
        				<th>
        					<label><input class="form-control" type="text" name="insert-manager-id"></label>
        				</th>
        				<th>비밀번호</th>
        				<th>
        					<label><input class="form-control" type="password" name="insert-manager-passwd"></label>
        				</th>
       					<th colspan="2">
       						<button class="btn btn-primary" type="submit" name="btn-insert-manger">등록</button>
       						<button class="btn btn-danger" type="reset" name="btn-reset-manager">취소</button>
       					</th>
					</tr>        			
        		</table>
        	</form>
        </section>
        <hr>
        <section class="manager-table">
        	<form>
            <table class="table">
                <thead>
                <th>관리자 닉네임</th>
                <th>비밀번호</th>
                <th>삭제</th>
                </thead>
                <tbody>
                <th>GM영근</th>
                <th><label><input type="password" name="manger-passwd"></label></th>
                <th><button class="btn btn-danger" name="btn-manager-delete"  
                onclick="location.href='${pageContext.request.contextPath}/manage_manager_deletePro.do'">삭제</button></th>
                </tbody>
            </table>
            </form>
        </section>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>
</body>
</html>