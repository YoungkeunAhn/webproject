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
<div class="container">
    <article>
        <section class="mission-info">
        <form>
        	<table class="table">
            <tr>
                <tr>
                    <th colspan="2"><span>카테고리</span></th>
                </tr>
                <tr>
                    <th>대분류</th>
                    <td><label><input type="text" name="largeCategoy"></label></td>
                </tr>
                <tr>
                    <th>소분류</th>
                    <td><label><input type="text" name=smallCategory></label></td>
                </tr>
                <tr>
                    <th class="btn-line" colspan="2">
                        <button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/manage_category_insertPro.do'">추가하기</button>
                        <button class="btn btn-danger" onclick="history.back()">취소</button>
                    </th>
                </tr>
            </table>
        </form>
        </section>
    </article>
</div>
</body>
</html>
