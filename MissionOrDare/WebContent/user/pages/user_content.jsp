<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${project}asset/user.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${project}asset/script.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    
   <script>
   
   function Close(){
      document.getElementById('replyMenuModal').style.display='none';
   }
   function doPostMessage(user_nick){
	   location.href='user_sendMessage.do?nickname='+user_nick;
   }
   function goOtherUserPage(user_nick){
      alert(user_nick);
   }
   function doReport(reply_id,success_board_id){
	   alert(reply_id);
	   location.href="user_report.do?reply_id="+reply_id+"&success_board_id="+success_board_id;
   }
   var cnt = 1;
   function changeImg() {
      var img1 = document.getElementById("img1");
      var img2 = document.getElementById("img2");
      
      if(cnt%2==1){
         img1.src="${project}images/pngwing.png";
         img2.src="${project}images/pngegg.png";
      }else{
         img1.src="${project}images/pngegg.png";
         img2.src="${project}images/pngwing.png";
      }
      cnt++;
   }
   
   </script>
</head>
<body>
    <div class="container">
    
      <!-- 게시글 내용 -->
      <form>
      <input type="hidden" id="success_board_id" value="${success_board_id}"> 
      <input type="hidden" id="totalLikeCount" value="${totalLikeCount}">
         <section class="usercontent">
         <ol>
              
              <li class="mission-category">
                 <span>${mission_info.large_category}/${mission_info.small_category}</span>
                 <div onclick="GoReportPage(${success_board_id})">
                    <img src="${project}images/siren.png">
               <button class="btn btn-link" type="submit">신고</button>
            </div>
            <c:if test="${sessionScope.user_nickname eq user_info.user_nickname}">
               <div style="position: absolute; top:30px;" onclick="changeImg()">
                             <img id="img1" src="${project}images/pngegg.png">
                             <img style="display: none" id="img2" src="${project}images/pngwing.png">
                  공개여부
               </div>      
            </c:if>
              </li>
              <li class="text-mission"><span>${mission_info.mission_title}</span></li>
                    <div id="profile" class="content-profile" onclick="location.href='user_anotherUser.jsp'">
                      <img class="img-circle" src="${user_info.profile_picture}" alt="user-profile">
                      <span>${user_info.user_nickname}</span><br>
                   </div>
              </ol>
              
            <div class="swiper-container">
               <div class="swiper-button-prev"></div>
               <div class="swiper-wrapper">
                  <c:forEach var="content" items="${contents}">
                        <div class="swiper-slide" style="height:109%;">
                           
                              <c:if test="${fn:contains(content, '.mp4') or fn:contains(content, '.avi')}">
                                     <video muted controls="controls" autoplay="autoplay" class="img-rounded" width="300">
                                    <source src="/upload/${content}">
                                 </video>
                                  </c:if>
                                  <c:if test="${!fn:contains(content, '.mp4') and !fn:contains(content, '.avi')}">
                                     <img style="width:180px; height: 150px;" src="/upload/${content}" width="300" class="img-rounded" alt="thumbnail"/>
                                  </c:if>
                               
                        </div>
                  </c:forEach>
               </div>
               <div class="swiper-button-next"></div>
               <div style="position: fixed; height:20px; top:364.4px;" class="swiper-pagination"></div>
            </div>
         <ol>
              <li class="text-summary"><span>${auth_mission_info.mission_upload_contents}</span></li>
          </ol>
      </section>
      </form>
      
      <!-- 댓글내용 -->
      <input id="re" type="hidden">
      <section class="reply-part">
         <div class="likecount">
                   <img id="like" >
             <span id="totalLike"></span>
          </div>
          <div class="reply-contents">
          
           	<div class="reply" id="replyDiv">
           	<!-- 
                <input type="hidden" value="댓글아이디">
                <i class="fas fa-ellipsis-v" onclick="replyModal('rp1','유차니귀요미')"></i>
                <span class="re-replyUser"></span>
                <label onclick="toReply('유차니귀요미')">유차니귀요미</label>
                <span class="reply-text">프로필 본인이셈?</span>
                 -->
             </div>
             <!--
             <div class="reply">          
                <input type="hidden" value="댓글아이디">
                <i class="fas fa-ellipsis-v" onclick="replyModal('rp2','영근육몬')"></i>
                <label onclick="toReply('영근육몬')">영근육몬</label>
                <span class="re-replyUser">@유차니귀요미</span>
                <span class="reply-text">재대대대대대대대대대대댓글ㅓㄹㅇ마ㅣㅓㄹ얼낭멀나이ㅓㄴ라어라ㅣㅓㅁ</span>
             </div>
			 -->
             <div id="replyMenuModal" class="modal-bg" onclick="Close()">
                <input id="reply_id" type="hidden">
                <input id="user_nickname" type="hidden">
                <ul onclick="event.cancelBubble=true">
                   <li><span class="user-nick"></span></li>
                   <li><span onclick="doPostMessage($('#user_nickname').val())">쪽지 보내기</span></li>
                   <li><span onclick="location.href='user_anotherUser.jsp'">프로필 방문</span></li>
                   <li><span class="text-danger" onclick="doReport($('#reply_id').val(),$('#success_board_id').val())">신고하기</span></li>
                </ul>
             </div>
              
         </div>
          
          
            <!-- 댓글입력 -->
         <div class="userreplyho">
            <input class="userreplyhotext" type="text" name="reply" id="reply" placeholder="댓글을 입력해주세요"/>
			<button type="button" class="userbtnbtn" id="insert">댓글</button>
         </div>
      </section>
         <nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="${project}images/blackMy.PNG" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="${project}images/blackdotbogi.PNG" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="${project}images/feed.PNG" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="${project}images/blackMyPage.PNG" alt="my-icon">
                    <span>마이</span>
                </li>
            </ul>
        </nav>
    </div>
         <script type="text/javascript">
      //<!--
      /*댓글 insert*/
      $(document).ready(function(){
		$('#insert').click(function(){
			$.ajax({
				type : 'POST',
				url : 'replyInsert.do',
				data : {
					reply_id : $('#re').val(),
					reply_contents : $('#reply').val(),
					success_board_id : $('#success_board_id').val()
				},
				dataType : 'text',
				async :false,
				success : function(data){
					data = eval('(' + data +')');
					replyList();
				}
			});
		});
      });
		
		/*댓글 불러오기*/
		function replyList(){
			$.ajax({
				type:'POST',
				url:'replyList.do',
				data : {
					success_board_id : $('#success_board_id').val()
				},
				dataType : 'text',
				async :false,
				success : function(data){
					data = eval('(' + data +')');
					var a ='';
					if(data.replyDtos.length>0){
						for(i=0; i<data.replyDtos.length; i++){
							a += '<div>';
							a += '<input class="id" type="hidden" value="'+data.replyDtos[i].reply_id+'">' ; 
							if(data.replyDtos[i].reply_step == 1){
								a += '<span>　　</span>';
							}
							a += '<i id="replymodal" class="fas fa-ellipsis-v">　<input class="id" type="hidden" value="'+data.replyDtos[i].reply_id+'"><input class="nickname" type="hidden" value="'+data.replyDtos[i].user_nickname+'"></i>';
						 	a += '<span class="re-replyUser"></span>' ;
					 		a += '<label class="nickname" ><input class="re" type="hidden" value="'+data.replyDtos[i].reply_id+'">'+data.replyDtos[i].user_nickname +'</label>' ;
					 		a += '<span class="reply-text">'+ ' ' +data.replyDtos[i].reply_contents+'</span>' ;
							a += '</div>'
						}
					}
					$(document).on('click', '#replymodal', function(){
						$('.user-nick').text($(this).find('.nickname').val());
					      $('#user_nickname').val($(this).find('.nickname').val());
					      $('#reply_id').val($(this).find('.id').val());
					      document.getElementById('replyMenuModal').style.display='flex';
					});
					$(document).on('click', '.nickname', function(){
						user_nick = '@'+$(this).text()+' ';
						$('#re').val($(this).find('.re').val());
					   $('.userreplyhotext').val(user_nick);
					   $('.userreplyhotext').focus();
					});
					$("#replyDiv").html(a);
					$('#reply').val('');
				}
			});
		}
		$(document).ready(function(){
			replyList();
		});
		
		/* 좋아요 */
        $(document).ready(function(){
           var likeval = ${likeval};
           $("#totalLike").text("like"+$("#totalLikeCount").val()) ; 
           if(likeval != 0){ //좋아요가 되어있을 때 
              $("#like").prop("src","${project}images/umzi.PNG");
           }else{ //좋아요가 안 되어 있을 때 
              $("#like").prop("src","${project}images/xdraw.PNG");
           }
           
           $("#like").on("click", function () {
              $.ajax({
            	 type : 'POST',
                 url : 'likeCheck.do',
                 data : {
                	success_board_id : $('#success_board_id').val()
                      },
                dataType : 'text',
                async :false,
                success : function(data){
                   data = eval('(' + data +')');
                   if(data.result !=0){ //좋아요 됨
                      $("#like").prop("src","${project}images/umzi.PNG");
                     // location.reload();
                   }else{//좋아요 취소
                      $("#like").prop("src","${project}images/xdraw.PNG");
                      //location.reload();
                   }
                   $("#totalLike").text("like"+data.likeCount) ; 
                }
              });
           });
        });
      
         //-->
     var swiper =  new Swiper('.swiper-container', {
          pagination : { // 페이징 설정
             el : '.swiper-pagination',
             clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
          },
          navigation : { // 네비게이션 설정
             nextEl : '.swiper-button-next', // 다음 버튼 클래스명
             prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
          },
       });

   </script>
</body>
</html>
    