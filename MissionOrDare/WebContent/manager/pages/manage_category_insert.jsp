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
    <title>미션정보페이지</title>
</head>
<body>
    <article>
	    <div class="modal-content">
	    	<span class="close"	onclick='CloseCategoryModal()'>&times;</span>
	        <section class="mission-info">
	        <form method="post" name="categoryinsertform" action="${pageContext.request.contextPath}/manage_category_insertPro.do" onsubmit="return categoryinsertcheck()">
	        	<table class="table">
	            <tr>
	                <tr>
	                    <th colspan="2"><span>카테고리</span></th>
	                </tr>
	                <tr>
	                    <th>대분류</th>
	                    <td><label><input type="text" name="largeCategory"></label></td>
	                </tr>
	                <tr>
	                    <th>소분류</th>
	                    <td><label><input type="text" name="smallCategory"></label></td>
	                </tr>
	                <tr>
	                    <th class="btn-line" colspan="2">
	                        <input class="btn btn-primary" type="submit" value="추가하기">   
	           		     	<input class="btn btn-danger" value="닫기" onclick="CloseInfoModal()">
	               		</th>
	                </tr>
	            </table>
	        	</form>
	        </section>
	     </div>
    </article>
</body>
</html>
