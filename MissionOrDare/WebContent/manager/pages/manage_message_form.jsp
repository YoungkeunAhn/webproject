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
    <title>유저정보페이지</title>
</head>
<body>
<div class="container">	
	    <article>
	        <section class="mission-info">
	        <form name="messageForm" onsubmit="return messagecheck()">
	            <table class="table">
	                <tr>
	                    <th>받는사람</th>
	                    <td><span>다리도비빔면</span></td>
	                </tr>
	                <tr>
	                    <th>메시지내용</th>
	                    <td>
	               			<textarea name="message" rows="10" cols="39" placeholder="유저에게  줴줴내역을 입력하세요"></textarea>
	                    <td>
	                </tr>
	                
	                <tr>
	                    <th class="btn btn-line" colspan="4">
	                        <button type="submit" class="btn-primary" onclick="location.href='${pageContext.request.contextPath}/manage_message_pro.do'">보내기</button>
	                        <button class="btn-danger" onclick="history.back()">취소</button>
	                    </th>
	                </tr>           
	            </table>
	         </form>
	        </section>
	    </article>
</div>
</body>
</html>