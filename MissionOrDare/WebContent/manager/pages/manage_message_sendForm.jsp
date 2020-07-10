<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>
<!DOCTYPE html>
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
	<title>관리자 메세지 보내기</title>
</head>
<body>
	<div>
        <%@include file="manage_header.jsp"%>
    </div>
    <div>
        <%@include file="manage_nav.jsp"%>
    </div>
	<article class="message_sendPage">
		<form style="width:100%">
			<section class="search_user">
			
	              <input class="form-control" type="search" id="searchUser" placeholder="유저닉네임을 입력하세요" autofocus>
			      <table id="mytable" class="table">
			      	<tr>
			      		<th>유저를 검색하세요!</th>
			      	</tr>
			      </table>
			   
			</section>
		  <button type="submit" class="btn-primary">추가</button>
		</form>
			<section class="send_user">
			
			      <table id="sendtable" class="table">
			      	<tr>
			      		<th>유저를 추가하세요!</th>
			      	</tr>
			      </table>
			   
			</section>
			
		     
		<section class="message_table">
			<form>
				<ul>
					<li>
						<span>보낼 유저</span>
					</li>
					<li>
						<input id="sendUsers"class="form-control" type="text" name="message_users">
					</li>
					<li>
						<span>메세지</span>
					</li>
					<li>
						<textarea class="form-control"></textarea>
					</li>
				</ul>
			</form>
		</section>
	</article>
	<div>
        <%@include file="manage_footer.jsp"%>
    </div>
<script type="text/javascript">
	//<!--
var users = document.getElementById('sendUsers');
var fff = '';
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
					$('#mytable').append('<tr><th onclick="event.cancelBubble=true"><input type="checkbox" class="select_all"><th onclick="event.cancelBubble=true"><th>유저 ID</th></tr>');
					data = eval('(' + data +')');
					for(var i=0; i<data.usersDtos.length; i++){
						$('#mytable').append('<tr><th onclick="event.cancelBubble=true"><input type="checkbox" class="check" name="message_check" value="'+data.usersDtos[i].user_nickname+'"></th><th class="user">'+data.usersDtos[i].user_nickname+'</th></tr>');
					}
					//전체 선택
					$("#mytable > tr").on('click', function(event){
						var ggg = $(this).find('.check').val() + ',';
						
						if(! users.value.includes(ggg)){
							users.value = users.value + ggg;
							$('#sendtable').append("<tr class='delUser'><th class='del'>" + $(this).find('.check').val() + "</th></tr>");
						} //if end
					});
					$(document).on('click','.delUser', function(){
						fff = $(this).find('.del').text() + ',';
						users.value = users.value.replace(fff,'');
						$(this).remove();
					});
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