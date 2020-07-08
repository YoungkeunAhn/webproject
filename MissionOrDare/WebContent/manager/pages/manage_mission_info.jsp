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
    <title>미션정보페이지</title>
</head>
<body>
	<article>
   		<div class="modal-content">
	        <section class="mission-info">
	        <form method="post" action="${pageContext.request.contextPath}/manage_mission_update.do">
	            <table class="table">
	                <tr>
	                    <th>미션번호</th>
	                    <td><input readonly name="mission_info_id" value="${missionCategoryAndInfoDto.mission_info_id}"></td>
	                </tr>
	                <tr>
	                    <th><span>대분류</span></th>
	                    <td><input readonly name="large_category" value="${missionCategoryAndInfoDto.large_category}"></td>
	                </tr>
	                <tr>
	                    <th><span>소분류</span></th>
	                    <td><input readonly name="small_category" value="${missionCategoryAndInfoDto.small_category}"></td>
	                </tr>
	                <tr>
	                    <th>제목</th>
	                    <td><input readonly name="mission_title" value="${missionCategoryAndInfoDto.mission_title}"></td>
	                </tr>
	                <tr>
	                    <th>내용</th>
	                    <td><input readonly name="mission_contents" value="${missionCategoryAndInfoDto.mission_contents}"></td>
	                </tr>
	                <tr>
	                    <th>난이도</th>
	                    <td><input readonly name="mission_level" value="${missionCategoryAndInfoDto.mission_level}"></td>
	                </tr>
	                <tr>
	                    <th>점수</th>
	                    <td><input readonly name="mission_success_score" value="${missionCategoryAndInfoDto.mission_success_score}"></td>
	                </tr>
	                <tr>
	                    <th>종류</th>
	                    <c:if test="${missionCategoryAndInfoDto.mission_level eq 4}">
	                    	<c:set var="level" value="${'챌린지'}"/>
                    	</c:if>
                    	<c:if test="${missionCategoryAndInfoDto.mission_level ne 4}">
	                    	<c:set var="level" value="${'일반'}"/>
                    	</c:if>
	                    <td><input readonly name="mission_success_score" value="${level}"></td>
	                    
	                </tr>
	                <tr>
	                    <th>장소</th>
	                    <td><input readonly name="mission_location" value="${missionCategoryAndInfoDto.mission_location}"></td>
	                </tr>
	                <tr>
	                    <th>미션평점</th>
	                    <td><input readonly name="mission_avg_score" value="${missionCategoryAndInfoDto.mission_avg_score}"></td>
	                </tr>
	                <tr>
	                    <th>미션 승락 횟수</th>
	                    <td><input readonly name="mission_accept_count" value="${missionCategoryAndInfoDto.mission_accept_count}"></td>
	                </tr>
	                <tr>
	                    <th>미션 거절 횟수</th>
	                    <td><input readonly name="mission_reject_count" value="${missionCategoryAndInfoDto.mission_reject_count}"></td>
	                </tr>
	                <tr>
	                    <th class="btn-line" colspan="4">
	                        <button type="submit" class="btn btn-primary">수정하기</button>
	                        <button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/manage_mission.do'">닫기</button>
	                    </th>
	                </tr>
	            </table>
	            </form>
	        </section>
		</div>
	</article>
</body>
</html>
