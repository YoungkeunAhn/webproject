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
    <title>마이미션뷰 페이지</title>
</head>
<body>
	<div class="container">
	    <article>
	        <section class="mission-info-view">
	            <input id="mission_info_id" type="hidden" value="${userMissionDto.mission_info_id}">
	            <c:if test="${userMissionDto.mission_state eq 1}"><label>미션중</label></c:if>
	            <c:if test="${userMissionDto.mission_state eq 2}"><label>미션성공</label></c:if>
	            <c:if test="${userMissionDto.mission_state eq 3}"><label>미션실패</label></c:if>
	            <c:if test="${userMissionDto.mission_state eq 4}"><label>미션인증중</label></c:if>
	            <c:if test="${userMissionDto.mission_state eq 5}"><label>미션포기</label></c:if>
	            <label>${userMissionDto.large_category}/${userMissionDto.small_category}</label>
	            <label>${userMissionDto.mission_title}</label>
	            <label>미션 시작 : ${userMissionDto.mission_start_date}</label>
	           
	            <img src="/category/${userMissionDto.category_image}" onerror="this.src='${project}images/mission_image.png'">
	            <ul>
	                <li>${userMissionDto.mission_contents}</li>
	            </ul>
	            <c:if test="${userMissionDto.mission_state eq 2 or userMissionDto.mission_state eq 3 or userMissionDto.mission_state eq 4}">
					<div class="container">
					    <article>
					        <section class="mission-info-view">
					    	   <label>${successBoardDto.board_register_date}</label>
					          	  <c:forEach var="content" items="${contents}">
					          	  <c:if test="${fn:contains(content, '.mp4') or fn:contains(content, '.avi')}">
				               			<video muted autoplay="autoplay" class="img-rounded" width="180">
											<source src="/upload/${content}">
										</video>
				              		</c:if>
				               		<c:if test="${!fn:contains(content, '.mp4') and !fn:contains(content, '.avi')}">
				               			<img src="/upload/${content}" class="img-rounded" alt="thumbnail"/>
				               		</c:if>
				               		</c:forEach>
					            <ul>
					                <li>${userMissionDto.mission_upload_contents}</li>
					                <li>${userMissionDto.successed_count}/10</li>
					                <li>좋아요 수 : ${successBoardDto.likecount}</li>
					            </ul>
					        </section>
					    </article>
					</div>
				</c:if>
	            <div class="btn-line" style="justify-content: center">
	                <button type="button" class="btn btn-primary" onclick="history.go(-1)">돌아가기</button>
	            </div>
	        </section>
	    </article>
	</div>

</body>
</html>
