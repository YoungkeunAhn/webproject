<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${project}asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${project}asset/script.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
	<script>
	function replyModal(reply_id,user_nick){
		$('.user-nick').text(user_nick);
		$('#user_nickname').val(user_nick);
		$('#reply_id').val(reply_id);
		document.getElementById('replyMenuModal').style.display='flex';
	}
	function toReply(user_nick){
		user_nick = '@'+user_nick+' ';
		$('.userreplyhotext').val(user_nick);
		$('.userreplyhotext').focus();
	}
	function Close(){
		document.getElementById('replyMenuModal').style.display='none';
	}
	function doPostMessage(user_nick){
		alert(user_nick);
	}
	function goOtherUserPage(user_nick){
		alert(user_nick);
	}
	function doReport(reply_id){
		alert(reply_id);
	}
	</script>
</head>
<body>
    <div class="container">
    
		<!-- 게시글 내용 -->
		<form>
			<section class="usercontent">
			<ol>
			   <input type="hidden" name="boardId" value="게시글ID" >
			   <input type="hidden" name="categories" value="운동/헬스" >
			   <input type="hidden" name="missionTitle" value="너의역량을 보여줘" >    
	           <input type="hidden" name="boardContent" value="이정도는 기본 아님?" >
	           <input type="hidden" name="boardOwner" value="KIMONG">
	           
	           <li class="mission-category">
	           	<span>운동/헬스</span>
	           	<div onclick="GoReportPage()">
	           		<img src="${project}images/siren.png">
					<button class="btn btn-link" type="submit">신고</button>
				</div>	
	           </li>
	           <li class="text-mission"><span>너의역량을 보여줘</span></li>
	           <li><img class="BoysandGirls" src="${project}images/madong.PNG">
	        		<span>KIMONG</span>
		 	   </li>
	           <li><img class="content-img" src="${project}images/profileinjung.PNG" alt="content-image"></li>
	           <li class="text-summary"><span>이 정도는 기본아님?</span></li>
	       </ol>
		</section>
		</form>
		
		<!-- 댓글내용 -->
		<section class="reply-part">
			<div class="likecount">
		      	 	<img id="like" onclick="alert('좋아요 카운트 업 - ajax')" src="${project}images/umzi.PNG">
			 	<span>like 998</span>
			 </div>
			 <div class="reply-contents">
				 <div class="reply">
				 	<input type="hidden" value="댓글아이디">
				 	<i class="fas fa-ellipsis-v" onclick="replyModal('rp1','유차니귀요미')"></i>
				 	<span class="re-replyUser"></span>
			 		<label onclick="toReply('유차니귀요미')">유차니귀요미</label>
			 		<span class="reply-text">프로필 본인이셈?</span>
				 </div>
		 		
		 		<div class="reply">
		 			<input type="hidden" value="댓글아이디">
		 			<i class="fas fa-ellipsis-v" onclick="replyModal('rp2','영근육몬')"></i>
			 		<label onclick="toReply('영근육몬')">영근육몬</label>
			 		<span class="re-replyUser">@유차니귀요미</span>
			 		<span class="reply-text">재대대대대대대대대대대댓글ㅓㄹㅇ마ㅣㅓㄹ얼낭멀나이ㅓㄴ라어라ㅣㅓㅁ</span>
			 		
				 </div>

				 
				 <div id="replyMenuModal" class="modal-bg" onclick="Close()">
				 	<input id="reply_id" type="hidden">
				 	<input id="user_nickname" type="hidden">
	 				<ul onclick="event.cancelBubble=true">
	 					<li><span class="user-nick"></span></li>
		 				<li><span onclick="doPostMessage($('#user_nickname').val())">쪽지 보내기</span></li>
		 				<li><span onclick="goOtherUserPage($('#user_nickname').val())">프로필 방문</span></li>
		 				<li><span class="text-danger" onclick="doReport($('#reply_id').val())">신고하기</span></li>
	 				</ul>
	 			</div>
			</div>
			 
			 
	      	<!-- 댓글입력 -->
			<div class="userreplyho">
				<input class="userreplyhotext" type="text" name="reply" placeholder="댓글을 입력해주세요"/>
				<button type="button" class="userbtnbtn">댓글</button>
			</div>
		</section>
         <nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="${project}images/mod_logo.png" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="${project}images/task.png" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="${project}images/pid.png" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="${project}images/my.png" alt="my-icon">
                    <span>마이</span>
                </li>
            </ul>
        </nav>
    </div>
         <script type="text/javascript">
		//<!--
		
		/* 댓글달기  */
      	//$(document).ready(function(){
  		  $("#replywrite").click(function(){
  		    $("#replyspace").slideToggle("fast");
  		  });
  		//});
		/* 댓글달기 열고 취소 */
      	$(document).ready(function(){
    		  $(".replybtn").click(function(){
    		    $("#replyspace").slideToggle("slow");
    		 });
    	});
		/* 좋아요 */
		
   		//-->
	</script>
</body>
</html>
    