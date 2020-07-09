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
    <article>
    	<div class="modal-content" onclick="event.cancelBubble=true">
	    	<span class="close"	onclick='CloseCategoryModal()'>&times;</span>
	        <form class="message-form" method="post" action="manage_message_pro.do" name="messageForm" onsubmit="return messageCheck()">
	            <input type="hidden" name= "received_nickname" value="${nickname}">
	            <table class="table">
	                <tr>
	                    <th>받는사람</th>
	                    <td><span>${nickname}</span></td>
	                </tr>
	                <tr>
	                    <th>메시지내용</th>
	                    <td>
	               			<textarea name="message" rows="10" cols="39" placeholder="내용을 입력하세요"></textarea>
	                    <td>
	                </tr>
	                
	                <tr>
	                    <th class="btn btn-line" colspan="4">
	                        <button type="submit" class="btn-primary">보내기</button>
	                        <input class="btn btn-danger" value="취소" onclick="CloseSendMessage()">
	                    </th>
	                </tr>           
	            </table>
	         </form>
	    </div>
	 </article>
</body>
</html>