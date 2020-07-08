<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="manager_settings.jsp"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" content="text/css"
	href="${project}assets/css/manage.css">
<script src="${project}assets/js/script.js"></script>
<title>게시글정보페이지</title>
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
			<div
				style="display: block; width: 900px; height: 704px; margin: 0 auto; background: #ddd; position: relative;">
				<section class="content-part">
					<div class="white-box" style="background: #c5e8ea;">
						<div>
							<span>${joinMissionInfoSuccessBoardDto.large_category} /
								${joinMissionInfoSuccessBoardDto.small_category}</span>
						</div>
						<div>
							<span>${joinMissionInfoSuccessBoardDto.mission_title}</span>
						</div>

						<div class="content-profile">
							<img class="img-circle" src="${project}images/user.png"
								alt="user-profile"> <span>${joinMissionInfoSuccessBoardDto.user_nickname}</span><br>
						</div>
						<div>
							<div>
								<span><i class="fas fa-chevron-left"></i></span> <img
									class="content-image" src="${project}images/kimong_1_1.png"
									alt="content-image"> <span><i
									class="fas fa-chevron-right"></i></span>
							</div>
							<span>${joinMissionInfoSuccessBoardDto.mission_contents}</span>
						</div>
						<div class="like-box">
							<span><i class="far fa-thumbs-up"></i></span> <span>${joinMissionInfoSuccessBoardDto.likecount}</span>
						</div>
						<div class="reply-box">

							<i class="fas fa-ellipsis-v"></i>

							<div class="reply-level1">
								<c:forEach var="replyDto" items="${replyDtos}">
									<div class="user-profile">
										<c:if test="${replyDto.reply_step == 1}">
										<span>&nbsp;&nbsp;ㄴ${replyDto.user_nickname} : ${replyDto.reply_contents}</span> 
										<span>
											<button
												onclick="location.href='manage_reply_deletePro.do?id=${replyDto.reply_id}&ref=${replyDto.reference}&step=${replyDto.reply_step}&bid=${success_board_id}'">삭제</button>
										</span>
										</c:if>
										<c:if test="${replyDto.reply_step == 0}">
										<span>${replyDto.user_nickname} : ${replyDto.reply_contents}</span> 
										<span>
											<button
												onclick="location.href='manage_reply_deletePro.do?id=${replyDto.reply_id}&ref=${replyDto.reference}&step=${replyDto.reply_step}&bid=${success_board_id}'">삭제</button>
										</span>
										</c:if>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</section>
			</div>
		</article>
		<div>
			<%@include file="manage_footer.jsp"%>
		</div>
	</div>

</body>
</html>
