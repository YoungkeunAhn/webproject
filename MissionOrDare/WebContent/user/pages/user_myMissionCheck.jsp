<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="user_settings.jsp"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Link CSS -->
<link type="text/css" rel="stylesheet" href="${project}asset/user.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Link JS -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="${project}asset/script.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://kit.fontawesome.com/23971e572d.js"
	crossorigin="anonymous"></script>
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
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
                             <div class="swiper-container">
                             <div class="swiper-button-prev"></div>
	               				<div class="swiper-wrapper">  
                              <c:forEach var="content" items="${contents}">
                              <div class="swiper-slide">
                              <c:if test="${fn:contains(content, '.mp4') or fn:contains(content, '.avi')}">
                                    <video muted autoplay="autoplay" class="img-rounded" width="180">
                                 <source src="/upload/${content}">
                              </video>
                                </c:if>
                                 <c:if test="${!fn:contains(content, '.mp4') and !fn:contains(content, '.avi')}">
                                    <img src="/upload/${content}" class="img-rounded" alt="thumbnail"/>
                                 </c:if>
                               </div>
                                 </c:forEach>
                                 </div>
                                 <div class="swiper-button-next"></div>
	   							 <div class="swiper-pagination"></div>
	   							 </div>
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
<script>
//<--
/*
var swiper = new Swiper('.swiper-container', {
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});
*/
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

//-->
</script>

</body>
</html>