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
    <script src="${project}assets/js/modal.js"></script>
    <title>미션정보페이지</title>
</head>
<body>
	<article>
   		<div class="modal-content">
			<span class="close" onclick="CloseInfoModal()">&times;</span>
	        <section class="mission-info">
	            <table class="table">
	                <tr>
	                    <th>미션번호</th>
	                    <td><span>${missionCategoryAndInfoDto.mission_info_id}</span></td>
	                </tr>
	                <tr>
	                    <th><span>카테고리</span></th>
	                    <td colspan="3">${missionCategoryAndInfoDto.large_category}/${missionCategoryAndInfoDto.small_category}</td>
	                </tr>
	                <tr>
	                    <th>제목</th>
	                    <td>${missionCategoryAndInfoDto.mission_title}</td>
	                </tr>
	                <tr>
	                    <th>내용</th>
	                    <td>${missionCategoryAndInfoDto.mission_contents}</td>
	                </tr>
	                <tr>
	                    <th>난이도</th>
	                    <td>${missionCategoryAndInfoDto.mission_level}</td>
	                </tr>
	                <tr>
	                    <th>점수</th>
	                    <td>10</td>
	                </tr>
	                <tr>
	                    <th>종류</th>
	                    <td>일반</td>
	                </tr>
	                <tr>
	                    <th>장소</th>
	                    <td>${missionCategoryAndInfoDto.mission_location}</td>
	                </tr>
	                <tr>
	                    <th>미션평점</th>
	                    <td>${missionCategoryAndInfoDto.mission_avg_score}</td>
	                </tr>
	                <tr>
	                    <th>미션 승락 횟수</th>
	                    <td>${missionCategoryAndInfoDto.mission_accept_count}</td>
	                </tr>
	                <tr>
	                    <th>미션 거절 횟수</th>
	                    <td>${missionCategoryAndInfoDto.mission_reject_count}</td>
	                </tr>
	                <tr>
	                    <th class="btn-line" colspan="4">
	                        <button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/manage_mission_update.do?missionCategoryAndInfoDto=${missionCategoryAndInfoDto}'">수정하기</button>
	                        <button class="btn btn-danger" onclick="location.href='manage_mission.do'">닫기</button>
	                    </th>
	                </tr>
	            </table>
	        </section>
		</div>
	</article>
</body>
</html>
