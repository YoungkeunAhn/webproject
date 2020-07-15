
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${project}asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="${project}asset/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
</head>
<body>
	<section>
	   <div class="getMessageContent">
	   
	   	  <c:forEach var="notesDto" items="${notesDtos}"> 
	      <div class="getMessageList">
	         <span class="Nick"><img class=img-circle src="${project}images/madong.PNG"" alt="user-profile">${notesDto.sent_nickname}</span>
	       <span class="getMessageDate">${notesDto.send_date}</span><br>
	         <span>${notesDto.notes_contents}</span>
	      </div>
	      </c:forEach>
	   </div>   
	</section>
</body>
</html>