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
		<span class="close" onclick="CloseSendMessageUser()">&times;</span>
     	<section class="message-user-form">
      	<form method="post" action="manage_message_user_form.do" name="messageho" onsubmit="return searchCheck4()">
          <label>
              <input class="form-control" type="search" id="searchUser" placeholder="유저닉네임을 입력하세요">
          </label>
      	</form> 
      	<form method="post" action="manage_send_message.do" name="messageForm" onsubmit="return messageCheck()">
          <input type="hidden" name= "received_nickname" value="${nickname}">
          <table id="mytable" class="table">
              <tr>
              	<th>유저 ID를 검색하세요.</th>
              </tr>
          </table>
          <button type="submit" class="btn-primary">보내기</button>
          <input class="btn btn-danger" value="취소" onclick="CloseSendMessageUser()">
       </form>
     </section>
   	</div>
</article>
	    
<script type="text/javascript">
	//<!--
$(document).ready( function() {
	// 아이디 중복확인
	$('#searchUser').on('keyup',function(event) {
		$.ajax(
			{
				type : 'POST',
				url : 'idcheck.do',
				data : {
					searchUser : $('#searchUser').val()
				},
				dataType : 'text',
				async : false,
				success : function(data) {
					$('#mytable').empty();
					$('#mytable').append('<tr><th><input type="checkbox" class="select_all"><th><th colspan="2">유저 ID</th></tr>');
					data = eval('(' + data +')');
					for(var i=0; i<data.usersDtos.length; i++){
						$('#mytable').append('<tr><th><input type="checkbox" class="check" name="message_check" value="'+data.usersDtos[i].user_nickname+'"></th><th>'+data.usersDtos[i].user_nickname+'</th></tr>');
					}
					//전체 선택
					$(".select_all").on('click', function(event) {
						//클릭이 되었을 때
						if($(".select_all").prop("checked")){
							$(".check").prop("checked",true);
						}else{
							$(".check").prop("checked",false);
						}
					});
				},
				error : function(e){
					
				}
			}
		);
	});
});
	
	//-->
</script>

</body>
</html>